
package com.seat.dao;

import org.hibernate.Session;

import com.seat.model.Booking;

public interface BookingDAO {
	
	public void addBooking(Booking b,Session session);

}
