package com.atos.seat.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.dao.LocationMasterDAO;
import com.atos.seat.dao.LocationMasterDAOImpl;
import com.atos.seat.model.Booking;
import com.atos.seat.model.LocationMaster;

@Service("locationMasterService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)

public class LocationMasterServiceImpl implements LocationMasterService {

	@Autowired
	private LocationMasterDAO ldo = new LocationMasterDAOImpl();

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addLocation(LocationMaster lm) {

		ldo.addLocation(lm);

	}

	@Override
	public List<LocationMaster> getLocation(String locationCode) {
		return ldo.getLocation(locationCode);
	}

	@Override
	public boolean deleteLocationMaster(String locationCode) {

		return ldo.deleteLocationMaster(locationCode);
	}

	@Override
	public boolean updateOfficeName(String officeName, String UpdatedofficeName) {

		return ldo.updateOfficeName(officeName, UpdatedofficeName);
	}

	@Override
	public List<LocationMaster> getCode() {
		return ldo.viewLocation();
	}

}
