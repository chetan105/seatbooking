package com.atos.seat.dao;

import java.math.BigInteger;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.model.ContactDetail;

@Repository("ContactDetailsDAO")

public class ContactDetailsDAOImpl implements ContactDetailsDAO {
	@Autowired
	private SessionFactory factory;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addContact(ContactDetail cd) {
		Session session = factory.getCurrentSession();

		session.save(cd);
	}

	@Override
	public ContactDetail getContact_Detail(String employee_id) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from  ContactDetail c where c.person.employeeId=\'" + employee_id + "\'");
		Iterator<ContactDetail> it = query.iterate();
		while (it.hasNext()) {
			return it.next();
		}

		return null;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updateMobileNumber(String mobile, String Updatedmobile) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery(
				"update ContactDetail set mobile=\'" + Updatedmobile + "\' where mobile=\'" + mobile + "\'");
		int i = query.executeUpdate();

		//System.out.println(i);
		return true;
	}

}
