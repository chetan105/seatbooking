package com.atos.seat.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.model.Booking;
import com.atos.seat.model.LocationMaster;
import com.atos.seat.model.Person;

@Repository("LocationMasterDAO")

public class LocationMasterDAOImpl implements LocationMasterDAO {
	@Autowired
	private SessionFactory factory;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addLocation(LocationMaster lm) {
		Session session = factory.getCurrentSession();
		session.save(lm);

	}

	@Override
	public List<LocationMaster> getLocation(String locationCode) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from LocationMaster l where l.locationCode=\'" + locationCode + "\'");
		List<LocationMaster> list = query.list();
		return list;
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public boolean deleteLocationMaster(String locationCode) {

		Session session = factory.getCurrentSession();
		LocationMaster lm = getLocation(locationCode).get(0);
		session.delete(lm);
		return true;
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public boolean updateOfficeName(String officeName, String UpdatedofficeName) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("update LocationMaster set officeName=\'" + UpdatedofficeName
				+ "\' where officeName=\'" + officeName + "\'");
		int i = query.executeUpdate();

		System.out.println(i);
		return true;
	}

	@Override
	public List<LocationMaster> viewLocation() {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		String hql = "FROM LocationMaster ";
		Query query = session.createQuery(hql);
		List<LocationMaster> results = query.list();
		return results;
	}

}
