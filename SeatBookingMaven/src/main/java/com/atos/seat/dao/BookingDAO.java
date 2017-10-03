package com.atos.seat.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.atos.seat.model.*;

@Component
public interface BookingDAO {

	public void addBooking(Booking b);

	public boolean cancelBooking(int seatno);

	public List<Booking> viewBookings();

	boolean swap(int employee_id1, int employee_id2, int seat1, int seat2);

	public boolean changeSeat(int employeeId, int seatNo);

	public boolean updateSeatMaster(int seatno);
	
	public boolean changeStatus(Person p);

	public boolean cancelSeat(int bookingId);
	public List<Booking> getRequest();

	public void cancelRequest(int id);

	public List<Booking> getDetails(String empid);

}
