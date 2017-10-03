package com.atos.seat.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.model.Person;

@Repository("PersonDAO")
@Transactional
public class PersonDAOImpl implements PersonDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void register(Person p) {
		Session session = sessionFactory.getCurrentSession();
		session.save(p);

	}

	@Override
	public boolean checkPerson(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from Person p where p.userName=\'" + username + "\' and p.password=\'" + password + "\'");
		List li = query.list();
		//System.out.print(username + " " + password);
		//System.out.println(li.size());
		if (li.size() == 1)
			return true;
		else
			return false;

	}

	@Override
	public Person getPerson(String username) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Person p where p.userName=\'" + username + "\'");
		/*
		 * if(query==null) System.out.println("no record"); else
		 * System.out.println("Hi"); return null;
		 */
		return (Person) query.list().get(0);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean deletePerson(String username, String password) {

		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery(
				"delete from Person where userName=\'" + username + "\' and password=\'" + password + "\'");
		int i = query.executeUpdate();
		//System.out.println(i);
		return true;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updateDesignation(String username, String newDesig) {

		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("update Person set designation=\'" + newDesig + "\' where userName=\'" + username + "\'");
		int i = query.executeUpdate();

		//System.out.println(i);
		return true;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updatePassword(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("update Person set password=\'" + password + "\' where userName=\'" + username + "\'");
		int i = query.executeUpdate();

		//System.out.println(i);
		return true;

	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updateEmail(String username, String email) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("update Person set email=\'" + email + "\' where userName=\'" + username + "\'");
		int i = query.executeUpdate();
		//System.out.println(i);
		return true;

	}

	/* register username validation */
	@Override
	public boolean checkUser(String username, String email) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session
				.createQuery("from Person p where p.userName=\'" + username + "\' and p.email=\'" + email + "\'");
		List li = query.list();
		//System.out.print(username + " " + email);
		//System.out.println(li.size());
		if (li.size() == 1)
			return true;
		else
			return false;

	}

}
