package com.atos.seat.dao;

import org.springframework.stereotype.Component;

import com.atos.seat.model.Person;

@Component
public interface PersonDAO {
	// all the CRUD operations implemented classes and validated in backend//
	public void register(Person p);

	public boolean checkPerson(String username, String password);

	public Person getPerson(String username);

	public boolean updateDesignation(String username, String newDesig);

	public boolean updatePassword(String username, String password);

	public boolean updateEmail(String username, String email);

	public boolean deletePerson(String username, String password);

	public boolean checkUser(String username, String email);

}
