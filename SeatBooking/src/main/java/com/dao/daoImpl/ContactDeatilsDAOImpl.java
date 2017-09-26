package com.seat.dao.impl;

import java.math.BigInteger;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;

import com.seat.dao.ContactDetailsDAO;
import com.seat.model.ContactDetail;
import com.seat.model.LocationMaster;
import com.seat.util.MyUtil;

public class ContactDeatilsDAOImpl implements ContactDetailsDAO{

	
	
	@Override
	public void addContact(ContactDetail cd,Session session) {
		// TODO Auto-generated method stub
		
		session.save(cd);
//		session.getTransaction().commit();
//		session.close();	
	}
	public ContactDetail getContact_Detail(String employee_id)
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("from  ContactDetail c where c.person.employeeId=\'"+employee_id+"\'");
		Iterator<ContactDetail> it=query.iterate();
		while(it.hasNext())
		{
			return it.next();
		}
		
		return null;
	}
	
	public boolean updateMobileNumber(BigInteger mobile,BigInteger Updatedmobile)
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("update ContactDetail set mobile=\'"+Updatedmobile+"\' where mobile=\'"+mobile+"\'");
		int i=query.executeUpdate();
		
		System.out.println(i);
		return true;	
	}

}
