package com.seat.dao;

import org.hibernate.Session;

import com.seat.model.LocationMaster;

public interface LocationMasterDAO {
	
	public void addLocation(LocationMaster lm,Session session);

}
