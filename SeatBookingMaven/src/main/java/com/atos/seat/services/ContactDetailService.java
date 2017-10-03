package com.atos.seat.services;

import java.math.BigInteger;

import com.atos.seat.model.ContactDetail;

public interface ContactDetailService {

	public void addContact(ContactDetail cd);

	public ContactDetail getContact_Detail(String employee_id);

	public boolean updateMobileNumber(String mobile, String Updatedmobile);

}
