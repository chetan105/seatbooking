package com.atos.seat.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.model.Booking;
import com.atos.seat.model.Person;

@Repository("BookingDAO")

public class BookingDAOImpl implements BookingDAO {
	@Autowired
	private SessionFactory factory;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addBooking(Booking b) {
		Session session = factory.getCurrentSession();
		//System.out.println(session);
		session.save(b);

	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean swap(int employee_id1, int employee_id2, int seat1, int seat2) {
		System.out.println(employee_id1 + " " + employee_id2 + " " + seat1 + " " + seat2);
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(
				"update Booking set person.employeeId=" + employee_id1 + " where seatMaster.seatNo=" + seat2 + "");
		Query query1 = session.createQuery(
				"update Booking set person.employeeId=" + employee_id2 + " where seatMaster.seatNo=" + seat1 + "");
		int i = query.executeUpdate();
		int j = query1.executeUpdate();

	//	System.out.println("exeucuted successfully");
		return true;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean cancelBooking(int seatno) {
		Session session = factory.getCurrentSession();
		Booking b = new Booking();
		Query query = session.createQuery("delete from Booking where seatMaster.seatNo=\'" + seatno + "\'");
		Query query1 = session.createQuery(
				"update SeatMaster sm set sm.seatStatus=\'" + "Available" + "\' where sm.seatNo=\'" + seatno + "\'");
		int i = query.executeUpdate();
		int j = query1.executeUpdate();
		//System.out.println("deleted successfully");
		return true;
	}

	@Override
	public List<Booking> viewBookings() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Booking ";
		Query query = session.createQuery(hql);

		List<Booking> results = query.list();
		System.out.println("BOOKING ID:\tEMP ID\tSEAT NO");
		for (Booking i : results) {
		//	System.out.println(
			//		i.getBookingId() + "\t" + i.getPerson().getEmployeeId() + "\t" + i.getSeatMaster().getSeatNo());
		}
		return results;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean changeSeat(int employeeId, int seatNo) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(
				"update Booking set seatMaster.seatNo=" + seatNo + " where person.employeeId=" + employeeId + "");
		int i = query.executeUpdate();
	//	System.out.println("exeucuted successfully");
		return true;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updateSeatMaster(int seatno) {
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("update SeatMaster s set s.seatStatus='booked' where s.seatNo=" + seatno + "");
		int i = query.executeUpdate();
		//System.out.println("Booked successfully");
		return true;
	}

	@Override
	public boolean changeStatus(Person p) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("update Booking b set b.bookingStatus='request' where b.person=" + p.getEmployeeId());
		int i = query.executeUpdate();
		if(i==1)
				return true;
		else
			return false;
	}
	
	@Override
	public boolean cancelSeat(int bookingId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("delete from Booking b where b.bookingId=" + bookingId + "");
		int i = query.executeUpdate();
		//System.out.println("status change");
		return true;
	}

	@Override
	public List<Booking> getRequest() {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("from Booking where bookingStatus='request'");
		return query.list();
	}

	@Override
	public void cancelRequest(int id) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("update Booking b set b.bookingStatus='' where b.bookingId="+id );
		int i = query.executeUpdate();
		
		
	}
	@Override
	public List<Booking> getDetails(String empid) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session
				.createQuery("from Booking where employeeId="+empid);
		return query.list();
	}

	

}
