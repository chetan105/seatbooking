package com.seat.dao.impl;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;

import com.seat.dao.LocationMasterDAO;
import com.seat.model.LocationMaster;
import com.seat.model.Person;
import com.seat.util.MyUtil;

public class LocationMasterDAOimpl implements LocationMasterDAO{

	@Override
	public void addLocation(LocationMaster lm,Session session) {
		// TODO Auto-generated method stub
		session.save(lm);
		
	}
	
	public LocationMaster getLocation(String locationCode)
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("from LocationMaster l where l.locationCode=\'"+locationCode+"\'");
		Iterator<LocationMaster> it=query.iterate();
		while(it.hasNext())
		{
			return it.next();
		}
		
		return null;
	}
	public boolean deleteLocationMaster(String locationCode )
	{
		
		Session session=MyUtil.getSession();
		LocationMaster lm=getLocation(locationCode);
		session.delete(lm);
		return true;
	}
	
	public boolean updateOfficeName(String officeName,String UpdatedofficeName )
	{
		Session session=MyUtil.getSession();
		Query query=session.createQuery("update LocationMaster set officeName=\'"+UpdatedofficeName+"\' where officeName=\'"+officeName+"\'");
		int i=query.executeUpdate();
		
		System.out.println(i);
		return true;	
	}
	
	

}
