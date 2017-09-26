//Yet to be completed
package com.seat.dao;

import java.util.List;

import org.hibernate.Session;

import com.seat.model.Booking;

public interface BookingDAO {
	
	public void addBooking(Booking b,Session session);
	public boolean swap(String employee_id1,String employee_id2,int seat1,int seat2);
	public boolean cancelBooking(int seatno,Session session);
	public List<Booking> viewBookings(Session session);
}
