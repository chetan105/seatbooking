package com.seat.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.seat.dao.PersonDAO;
import com.seat.model.Person;
import com.seat.util.MyUtil;

public class PersonDAOImpl implements PersonDAO{

	
	@Override
	public void register(Person p,Session session) {
		// TODO Auto-generated method stub
		
		session.save(p);
		//session.getTransaction().commit();	
	}
	public void checkPerson(String username,String password)
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("from Person p where p.userName=\'"+username+"\' and p.password=\'"+password+"\'");
		List li=query.list();
		System.out.print(username+" "+password);
		System.out.println(li.size());
		if(li.size()==1)
			System.out.println("User Authenticated");
		else
			System.out.println("Authentication Failed");
		
	}
	
	public Person getPerson(String username)
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("from Person p where p.userName=\'"+username+"\'");
		Iterator<Person> it=query.iterate();
		while(it.hasNext())
		{
			return it.next();
		}
		
		return null;	
	}
	public boolean deletePerson(String username)
	{
		
		Session session=MyUtil.getSession();
		Person p=getPerson(username);
		session.delete(p);
		return true;
	}
	public boolean updateUserFullname(String username,String UserFullName  )
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("update Person set userName=\'"+UserFullName+"\' where userName=\'"+username+"\'");
		int i=query.executeUpdate();
		
		System.out.println(i);
		return true;	
	}
	

	
	
//	@Override
//	public void retrieve(Person p,Session session) {
//		// TODO Auto-generated method stub
		
//		Query qu = session.createQuery("from Person");
//		List<Person> list = qu.list();
//		System.out.println(list.size());
//		for(Person p1:list){
//			System.out.println(p1.getEmployeeName());
//		}
//		session.save(p);
		
		
		
		//List<User> list = new List<User>();
	}

