package com.seat.service;

import java.math.BigInteger;

import org.hibernate.Session;

import com.seat.dao.SeatMasterDAO;
import com.seat.dao.impl.SeatMasterDAOimpl;
import com.seat.model.ContactDetail;
import com.seat.model.SeatMaster;
import com.seat.util.MyUtil;

public class TestSeatMaster {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		SeatMaster sm= new SeatMaster();
		SeatMasterDAO smd= new SeatMasterDAOimpl();
		
		Session session=MyUtil.getSession();
		session.beginTransaction();
		
		SeatMaster sm1= smd.getSeat(2);
		 System.out.println(sm1.getLocationMaster().getLocationName()+ " "+sm1.getFloorNo()+ " "+sm1.getLocationMaster().getLocationCode());
		
		 
		 
		 session.getTransaction().commit();
		
	}

}
