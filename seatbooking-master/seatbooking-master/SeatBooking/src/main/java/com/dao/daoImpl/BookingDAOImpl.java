package com.seat.dao.impl;

import org.hibernate.Session;

import com.seat.dao.BookingDAO;
import com.seat.model.Booking;

public class BookingDAOImpl implements BookingDAO{

	@Override
	public void addBooking(Booking b, Session session) {
		session.save(b);
		
		
	}

}
