package com.junit;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.atos.seat.dao.LocationMasterDAO;

public class LocationMasterDAOImplTest {
	
	private static ApplicationContext ctx;
	@Autowired
	private SessionFactory factory;
	@BeforeClass
	public static void fact(){
	
		ctx = new ClassPathXmlApplicationContext("mybeans.xml");
		System.out.println(ctx);
	}



	@Test
	public void testGetLocation() {
		//fail("Not yet implemented");
		LocationMasterDAO ud=ctx.getBean(LocationMasterDAO.class);
		assertEquals("Mum",ud.getLocation("Mum"));
	
	}

}
