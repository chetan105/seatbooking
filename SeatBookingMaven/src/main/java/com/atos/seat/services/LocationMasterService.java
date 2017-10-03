package com.atos.seat.services;

import java.util.List;

import com.atos.seat.model.LocationMaster;

public interface LocationMasterService {
	public void addLocation(LocationMaster lm);

	public List<LocationMaster> getLocation(String locationCode);

	public boolean deleteLocationMaster(String username);

	public boolean updateOfficeName(String officeName, String UpdatedofficeName);

	public List<LocationMaster> getCode();

}
