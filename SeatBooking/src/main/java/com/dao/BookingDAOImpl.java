//Yet to be completed

package com.seat.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.seat.dao.BookingDAO;
import com.seat.model.Booking;
import com.seat.model.Person;
import com.seat.util.MyUtil;

public class BookingDAOImpl implements BookingDAO{

	@Override
	public void addBooking(Booking b, Session session) {
		session.save(b);
		
		
	}
	
	public boolean swap(String employee_id1,String employee_id2,int seat1,int seat2) {
		
		Session session=MyUtil.getSession();
		Query query=session.createQuery("update Booking set person.employeeId=\'"+employee_id1+"\' where seatMaster.seatNo=\'"+seat2+"\'");
		Query query1=session.createQuery("update Booking set person.employeeId=\'"+employee_id2+"\' where seatMaster.seatNo=\'"+seat1+"\'");
		int i=query.executeUpdate();
		int j=query1.executeUpdate();
		
		System.out.println("exeucuted successfully");
		return true;
	}
	public boolean cancelBooking(int seatno,Session session)
	{
	Booking b=new Booking();
	Query query=session.createQuery("delete from Booking where seatMaster.seatNo=\'"+seatno+"\'");
	Query query1=session.createQuery("update SeatMaster sm set sm.seatStatus=\'"+"Available"+"\' where sm.seatNo=\'"+seatno+"\'");
	int i=query.executeUpdate();
    int j=query1.executeUpdate();
	System.out.println("deleted successfully");
	return true;

		
	}

	@Override
	public List<Booking> viewBookings(Session session) {
		String hql = "FROM Booking ";
		Query query = session.createQuery(hql);
		
		List<Booking> results = query.list();
		System.out.println("BOOKING ID:\tEMP ID\tSEAT NO");
		for(Booking i:results)
		{
			System.out.println(i.getBookingId()+"\t"+i.getPerson().getEmployeeId()+"\t"+i.getSeatMaster().getSeatNo());
		}
		return results;
	}
	

}
