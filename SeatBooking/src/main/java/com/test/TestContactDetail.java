package com.seat.service;

import java.math.BigInteger;

import org.hibernate.Session;

import com.seat.dao.ContactDetailsDAO;
import com.seat.dao.impl.ContactDeatilsDAOImpl;
import com.seat.model.ContactDetail;
import com.seat.util.MyUtil;

public class TestContactDetail {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ContactDetail cd= new ContactDetail();
		ContactDetailsDAO cdm= new ContactDeatilsDAOImpl();
		Session session=MyUtil.getSession();
		session.beginTransaction();
		
		 ContactDetail cd1= cdm.getContact_Detail("A12");
		 System.out.println(cd1.getPerson().getEmployeeName());
		 boolean flag= false;
		    flag=cdm.updateMobileNumber(new BigInteger("9876543210"),new BigInteger("8976101127"));
		    System.out.println(flag);
		 
		 
		 session.getTransaction().commit();
		
	}

}
