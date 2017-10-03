package com.atos.seat.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.model.SeatMaster;

@Repository("seatMasterDAO")

public class SeatMasterDAOImpl implements SeatMasterDAO {

	@Autowired
	private SessionFactory factory;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addSeat(SeatMaster sm) {
		Session session = factory.getCurrentSession();
		session.save(sm);

	}

	@Override
	public SeatMaster getSeat(int seatNo) {

		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from SeatMaster s where s.seatNo=\'" + seatNo + "\'");

		return (SeatMaster) query.list().get(0);
	}

	@Override
	public List<SeatMaster> getAvailableSeats() {
		// TODO Auto-generated method stub

		List<SeatMaster> li = new ArrayList<SeatMaster>();
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from SeatMaster s");
		li = query.list();

		return li;

	}

	@Override
	public List<SeatMaster> getAllSeats() {
		// TODO Auto-generated method stub
		
		
		return getAllSeats();
	}

}
