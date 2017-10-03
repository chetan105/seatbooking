package com.atos.seat.services;

import java.math.BigInteger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.dao.ContactDetailsDAO;
import com.atos.seat.dao.ContactDetailsDAOImpl;
import com.atos.seat.model.ContactDetail;

@Service("contactDetailService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ContactDetailServiceImpl implements ContactDetailService {

	@Autowired
	private ContactDetailsDAO cdo = new ContactDetailsDAOImpl();

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addContact(ContactDetail cd) {
		cdo.addContact(cd);
	}

	@Override
	public ContactDetail getContact_Detail(String employee_id) {
		return cdo.getContact_Detail(employee_id);
	}

	@Override
	public boolean updateMobileNumber(String mobile, String Updatedmobile) {
		return cdo.updateMobileNumber(mobile, Updatedmobile);
	}

}
