package com.atos.seat.services;

import java.util.List;

import com.atos.seat.model.Booking;
import com.atos.seat.model.Person;

public interface BookingService {

	public void addBooking(Booking b);

	public boolean cancelBooking(int seatno);

	public List<Booking> viewBookings();

	public boolean changeSeat(int employeeId, int seatNo);

	public boolean swap(int employee_id1, int employee_id2, int seat1, int seat2);

	public boolean updateSeatMaster(int seatno);
	
	public boolean changeStatus(Person p);

	public boolean cancelSeat(int bookingId);
	
	public List<Booking> getRequest();

	public void cancelRequest(int id);
	
	public List<Booking> getDetails(String empid);


}
