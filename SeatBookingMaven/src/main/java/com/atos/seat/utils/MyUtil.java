package com.atos.seat.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class MyUtil {

	public static Session session = null;
	static SessionFactory fac = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

	public static Session getSession() {

		if (session == null) {
			session = fac.openSession();
			session.beginTransaction();
		}

		return session;
	}

	public static void commitSession() {
		session.getTransaction().commit();
	}

}
