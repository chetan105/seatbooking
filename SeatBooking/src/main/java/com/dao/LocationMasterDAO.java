package com.seat.dao;

import org.hibernate.Session;

import com.seat.model.LocationMaster;
import com.seat.model.Person;

public interface LocationMasterDAO {
	//all the CRUD operations implemented classes and validated in backend//
	public void addLocation(LocationMaster lm,Session session);
	public LocationMaster getLocation(String locationCode);
	public boolean deleteLocationMaster(String username);
	public boolean updateOfficeName(String officeName,String UpdatedofficeName );

}
