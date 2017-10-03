package com.atos.seat.dao;

import java.math.BigInteger;

import org.springframework.stereotype.Component;

import com.atos.seat.model.ContactDetail;

@Component
public interface ContactDetailsDAO {
	// all the CRUD operations implemented classes and validated in backend//
	public void addContact(ContactDetail cd);

	public ContactDetail getContact_Detail(String employee_id);

	public boolean updateMobileNumber(String mobile, String Updatedmobile);
}
