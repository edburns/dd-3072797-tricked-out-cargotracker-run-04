package org.eclipse.cargotracker.interfaces.booking.web;

import java.io.Serializable;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import org.eclipse.cargotracker.interfaces.booking.facade.BookingServiceFacade;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.CargoRoute;
import org.primefaces.PrimeFaces;

@Named
@ViewScoped
public class ChangeArrivalDeadlineDate implements Serializable {

  private static final long serialVersionUID = 1L;

  private String trackingId;
  private CargoRoute cargo;
  private Date arrivalDeadlineDate;

  @Inject private BookingServiceFacade bookingServiceFacade;

  public String getTrackingId() {
    return trackingId;
  }

  public void setTrackingId(String trackingId) {
    this.trackingId = trackingId;
  }

  public CargoRoute getCargo() {
    return cargo;
  }

  public Date getArrivalDeadlineDate() {
    return arrivalDeadlineDate;
  }

  public void setArrivalDeadlineDate(Date arrivalDeadlineDate) {
    this.arrivalDeadlineDate = arrivalDeadlineDate;
  }

  public void load() {
    cargo = bookingServiceFacade.loadCargoForRouting(trackingId);
    String deadlineDate = cargo.getArrivalDeadlineDate();
    if (deadlineDate == null) {
      throw new IllegalStateException(
          "Unable to parse arrival deadline date for cargo " + trackingId + ": null");
    }
    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
    dateFormat.setLenient(false);
    ParsePosition position = new ParsePosition(0);
    Date parsedDeadlineDate = dateFormat.parse(deadlineDate, position);
    if (parsedDeadlineDate == null || position.getIndex() != deadlineDate.length()) {
      throw new IllegalStateException(
          "Unable to parse arrival deadline date for cargo " + trackingId + ": " + deadlineDate);
    }
    arrivalDeadlineDate = parsedDeadlineDate;
  }

  public void changeArrivalDeadline() {
    if (arrivalDeadlineDate == null) {
      throw new IllegalArgumentException("Arrival deadline date is required");
    }
    bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate);
    closeDialog();
  }

  void closeDialog() {
    PrimeFaces.current().dialog().closeDynamic("DONE");
  }
}
