package com.atos.seat.services;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.dao.PersonDAO;
import com.atos.seat.dao.PersonDAOImpl;
import com.atos.seat.model.Person;

@Service("personService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)

public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonDAO pd = new PersonDAOImpl();

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void register(Person p) {
		pd.register(p);

	}

	@Override

	public boolean checkPerson(String username, String password) {

		return pd.checkPerson(username, password);

	}

	@Override
	public Person getPerson(String username) {

		return pd.getPerson(username);
	}

	@Override
	public boolean deletePerson(String username, String password) {

		return pd.deletePerson(username, password);
	}

	@Override
	public boolean updateDesignation(String username, String newDesig) {

		return pd.updateDesignation(username, newDesig);
	}

	@Override
	public boolean updatePassword(String username, String password) {
		return pd.updatePassword(username, password);

	}

	@Override
	public boolean updateEmail(String username, String email) {
		return pd.updateEmail(username, email);
	}

	@Override
	public boolean checkUser(String username, String email) {
		// TODO Auto-generated method stub
		return pd.checkUser(username, email);
	}
}
