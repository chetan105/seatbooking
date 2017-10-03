package com.atos.seat.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.dao.BookingDAO;
import com.atos.seat.dao.BookingDAOImpl;
import com.atos.seat.model.Booking;
import com.atos.seat.model.Person;

@Service("bookingService")

@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)

public class BookingServiceImpl implements BookingService {

	@Autowired
	private BookingDAO bdo = new BookingDAOImpl();

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addBooking(Booking b) {

		bdo.addBooking(b);

	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean swap(int employee_id1, int employee_id2, int seat1, int seat2) {

		return bdo.swap(employee_id1, employee_id2, seat1, seat2);
	}

	@Override
	public boolean cancelBooking(int seatno) {
		return bdo.cancelBooking(seatno);
	}

	@Override
	public List<Booking> viewBookings() {
		return bdo.viewBookings();
	}

	@Override
	public boolean changeSeat(int employeeId, int seatNo) {
		return bdo.changeSeat(employeeId, seatNo);

	}

	@Override
	public boolean updateSeatMaster(int seatno) {
		// TODO Auto-generated method stub
		return bdo.updateSeatMaster(seatno);
	}

	@Override
	public boolean changeStatus(Person p) {
		// TODO Auto-generated method stub
		return bdo.changeStatus(p);
	}

	@Override
	public boolean cancelSeat(int bookingId) {
		// TODO Auto-generated method stub
		return bdo.cancelSeat(bookingId);
	}

	@Override
	public List<Booking> getRequest() {
		// TODO Auto-generated method stub
		return bdo.getRequest();
	}

	@Override
	public void cancelRequest(int id) {
		// TODO Auto-generated method stub
		
		bdo.cancelRequest(id);
		
	}

	@Override
	public List<Booking> getDetails(String empid) {
		// TODO Auto-generated method stub
		return bdo.getDetails(empid);
	}

}
