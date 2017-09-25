//Yet to be completed


package com.seat.service;

import java.math.BigInteger;
import java.util.Date;

import org.hibernate.Session;

import com.seat.dao.BookingDAO;
import com.seat.dao.ContactDetailsDAO;
import com.seat.dao.PersonDAO;
import com.seat.dao.impl.BookingDAOImpl;
import com.seat.dao.impl.ContactDeatilsDAOImpl;
import com.seat.dao.impl.PersonDAOImpl;
import com.seat.model.Booking;
import com.seat.model.ContactDetail;
import com.seat.model.Person;
import com.seat.model.SeatMaster;
import com.seat.util.MyUtil;

public class TestBooking {

	public static void main(String[] args) {

		Booking b1= new Booking();
		//Booking b2= new Booking();
		Person p=new Person();
		SeatMaster sm=new SeatMaster();
		sm.setSeatNo(8);
		p.setEmployeeId("A12");		
		p.setUserName("name");
		p.setPassword("abcd");
		//BookingDAO bd= new BookingDAOImpl();
		
		p.getBookings().add(b1);
		
		PersonDAO pd= new PersonDAOImpl();
		BookingDAO bdo=new BookingDAOImpl();
		
		
		 
		Session session=MyUtil.getSession();
		session.beginTransaction();
		Date bookingdate=new Date();
		b1.setPerson(p);
        
		bdo.addBooking(b1,session);
		 //System.out.println(bdo.getPerson().getEmployeeName());
		 
		 
       // b.setBookingDate(bookingdate);
        //b.setPerson(p);
        
       

        
		session.getTransaction().commit();


	}

}
