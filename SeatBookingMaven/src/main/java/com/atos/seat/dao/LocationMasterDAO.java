package com.atos.seat.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.atos.seat.model.LocationMaster;

@Component
public interface LocationMasterDAO {
	// all the CRUD operations implemented classes and validated in backend//
	public void addLocation(LocationMaster lm);

	public List<LocationMaster> getLocation(String locationCode);

	public boolean deleteLocationMaster(String username);

	public boolean updateOfficeName(String officeName, String UpdatedofficeName);

	public List<LocationMaster> viewLocation();

}
