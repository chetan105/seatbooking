package com.seat.dao;

import org.hibernate.Session;

import com.seat.model.Person;

public interface PersonDAO {
	//all the CRUD operations implemented classes and validated in backend//
	public void register(Person p,Session session);
	
	//public void retrieve(Person p,Session session);
	public void checkPerson(String username,String password);
	public Person getPerson(String username);
	public boolean deletePerson(String username);
	public boolean updateUserFullname(String username,String UserFullName );
	//public void Swap()------------ need to be implemented after 

}
