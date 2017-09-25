package com.seat.service;

import org.hibernate.Session;

import com.seat.dao.LocationMasterDAO;
import com.seat.dao.SeatMasterDAO;
import com.seat.dao.impl.LocationMasterDAOimpl;
import com.seat.dao.impl.SeatMasterDAOimpl;
import com.seat.model.LocationMaster;
import com.seat.model.SeatMaster;
import com.seat.util.MyUtil;

public class TestLocationMaster {
	public static void main(String args[])
	{
		/*LocationMaster lm1= new LocationMaster();
		SeatMaster sm= new SeatMaster();
		sm.setSeatNo(5);
		sm.setFloorNo(1);
		sm.setSeatStatus("Available");
		lm1.getSeatMasters().add(sm);
		lm1.setLocationCode("AF");
		lm1.setLocationName("Airoli");
		lm1.setCountry("India");
		lm1.setOfficeName("Atos-vikhroli");
		sm.setLocationMaster(lm1);*/
		
		LocationMasterDAO lmd= new LocationMasterDAOimpl();
		SeatMasterDAO smd= new SeatMasterDAOimpl();
		Session session=MyUtil.getSession();
		session.beginTransaction();
		//lmd.addLocation(lm1,session);
		//smd.addSeat(sm,session);
		//session.getTransaction().commit();
		
		
	
	  //   LocationMaster l1= lmd.getLocation("AA");
		 //System.out.println(l1.getLocationName()+ " "+l1.getOfficeName()+ " "+l1.getCountry());
		
		// boolean flag= false;
		   // flag=lmd.deleteLocationMaster("AA");
		    //System.out.println(flag);
		
		/*boolean flag= false;
	    flag=lmd.updateOfficeName("Atos-vikhroli", "Atos-hinjwadi");
	    System.out.println(flag);*/
		    
		    session.getTransaction().commit();
		    
	}

}
