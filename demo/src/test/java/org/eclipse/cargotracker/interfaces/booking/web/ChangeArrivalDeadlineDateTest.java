package org.eclipse.cargotracker.interfaces.booking.web;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.lang.reflect.Field;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.eclipse.cargotracker.interfaces.booking.facade.BookingServiceFacade;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.CargoRoute;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.Location;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.RouteCandidate;
import org.junit.jupiter.api.Test;

class ChangeArrivalDeadlineDateTest {

  @Test
  void loadUsesTrackingIdAndParsesCargoDeadline()
      throws ReflectiveOperationException, ParseException {
    FakeBookingServiceFacade facade = new FakeBookingServiceFacade(cargoRoute());
    ChangeArrivalDeadlineDate editor = editor(facade);
    editor.setTrackingId("ABC123");

    editor.load();

    assertEquals("ABC123", facade.loadedTrackingId);
    assertSame(facade.cargo, editor.getCargo());
    assertEquals(
        new SimpleDateFormat("MM/dd/yyyy").parse(facade.cargo.getArrivalDeadlineDate()),
        editor.getArrivalDeadlineDate());
  }

  @Test
  void loadSurfacesMalformedCargoDeadline() throws ReflectiveOperationException {
    CargoRoute malformedCargo =
        new CargoRoute(
            "ABC123", "Chicago", "Helsinki", new Date(1_700_000_000_000L), false, false, "", "") {
          @Override
          public String getArrivalDeadlineDate() {
            return "02/30/2024";
          }
        };
    FakeBookingServiceFacade facade = new FakeBookingServiceFacade(malformedCargo);
    ChangeArrivalDeadlineDate editor = editor(facade);
    editor.setTrackingId("ABC123");

    IllegalStateException exception = assertThrows(IllegalStateException.class, editor::load);

    assertTrue(exception.getMessage().contains("ABC123"));
  }

  @Test
  void changeArrivalDeadlineRejectsNullDate() throws ReflectiveOperationException {
    FakeBookingServiceFacade facade = new FakeBookingServiceFacade(cargoRoute());
    ChangeArrivalDeadlineDate editor = editor(facade);
    editor.setTrackingId("ABC123");

    assertThrows(IllegalArgumentException.class, editor::changeArrivalDeadline);

    assertTrue(facade.events.isEmpty());
  }

  @Test
  void changeArrivalDeadlineDelegatesBeforeClosingDialog() throws ReflectiveOperationException {
    FakeBookingServiceFacade facade = new FakeBookingServiceFacade(cargoRoute());
    TestEditor editor = editor(facade);
    Date selectedDate = new Date(1_700_000_000_000L);
    editor.setTrackingId("ABC123");
    editor.setArrivalDeadlineDate(selectedDate);

    editor.changeArrivalDeadline();

    assertEquals("ABC123", facade.changedTrackingId);
    assertSame(selectedDate, facade.changedDeadline);
    assertEquals(List.of("delegate", "close"), facade.events);
  }

  @Test
  void changeArrivalDeadlineLeavesDialogOpenWhenFacadeFails() throws ReflectiveOperationException {
    FakeBookingServiceFacade facade = new FakeBookingServiceFacade(cargoRoute());
    TestEditor editor = editor(facade);
    editor.setTrackingId("ABC123");
    editor.setArrivalDeadlineDate(new Date(1_700_000_000_000L));
    facade.failure = new IllegalStateException("update failed");

    assertThrows(IllegalStateException.class, editor::changeArrivalDeadline);

    assertEquals(List.of("delegate"), facade.events);
  }

  private static CargoRoute cargoRoute() {
    return new CargoRoute(
        "ABC123", "Chicago", "Helsinki", new Date(1_700_000_000_000L), false, false, "", "");
  }

  private static TestEditor editor(FakeBookingServiceFacade facade)
      throws ReflectiveOperationException {
    TestEditor editor = new TestEditor(facade.events);
    Field facadeField = ChangeArrivalDeadlineDate.class.getDeclaredField("bookingServiceFacade");
    facadeField.setAccessible(true);
    facadeField.set(editor, facade);
    return editor;
  }

  private static class TestEditor extends ChangeArrivalDeadlineDate {

    private static final long serialVersionUID = 1L;

    private final List<String> events;

    private TestEditor(List<String> events) {
      this.events = events;
    }

    @Override
    void closeDialog() {
      events.add("close");
    }
  }

  private static class FakeBookingServiceFacade implements BookingServiceFacade {

    private final CargoRoute cargo;
    private final List<String> events = new java.util.ArrayList<>();
    private String loadedTrackingId;
    private String changedTrackingId;
    private Date changedDeadline;
    private RuntimeException failure;

    private FakeBookingServiceFacade(CargoRoute cargo) {
      this.cargo = cargo;
    }

    @Override
    public String bookNewCargo(String origin, String destination, Date arrivalDeadline) {
      return null;
    }

    @Override
    public CargoRoute loadCargoForRouting(String trackingId) {
      loadedTrackingId = trackingId;
      return cargo;
    }

    @Override
    public void assignCargoToRoute(String trackingId, RouteCandidate route) {}

    @Override
    public void changeDestination(String trackingId, String destinationUnLocode) {}

    @Override
    public void changeDeadline(String trackingId, Date arrivalDeadline) {
      events.add("delegate");
      if (failure != null) {
        throw failure;
      }
      changedTrackingId = trackingId;
      changedDeadline = arrivalDeadline;
    }

    @Override
    public List<RouteCandidate> requestPossibleRoutesForCargo(String trackingId) {
      return Collections.emptyList();
    }

    @Override
    public List<Location> listShippingLocations() {
      return Collections.emptyList();
    }

    @Override
    public List<CargoRoute> listAllCargos() {
      return Collections.emptyList();
    }
  }
}
