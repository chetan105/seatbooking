package com.seat.dao.impl;

import org.hibernate.Session;

import com.seat.dao.LocationMasterDAO;
import com.seat.model.LocationMaster;

public class LocationMasterDAOimpl implements LocationMasterDAO{

	@Override
	public void addLocation(LocationMaster lm,Session session) {
		// TODO Auto-generated method stub
		session.save(lm);
		
	}
	

}
