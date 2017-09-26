package com.seat.dao;

import java.math.BigInteger;

import org.hibernate.Session;

import com.seat.model.ContactDetail;
import com.seat.model.LocationMaster;

public interface ContactDetailsDAO {
	//all the CRUD operations implemented classes and validated in backend//
	public void addContact(ContactDetail cd,Session session);
	public ContactDetail getContact_Detail(String employee_id);
	public boolean updateMobileNumber(BigInteger mobile,BigInteger Updatedmobile);
}
