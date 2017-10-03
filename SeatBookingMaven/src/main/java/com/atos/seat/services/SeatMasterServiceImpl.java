package com.atos.seat.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.atos.seat.dao.BookingDAO;
import com.atos.seat.dao.SeatMasterDAO;
import com.atos.seat.dao.SeatMasterDAOImpl;
import com.atos.seat.model.SeatMaster;

@Service("seatMasterService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)

public class SeatMasterServiceImpl implements SeatMasterService {

	@Autowired
	private SeatMasterDAO seatMasterDAO = new SeatMasterDAOImpl();

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	@Override
	public void addSeat(SeatMaster sm) {

		seatMasterDAO.addSeat(sm);

	}

	@Override
	public SeatMaster getSeat(int seatNo) {
		return seatMasterDAO.getSeat(seatNo);
	}

	@Override
	public List<SeatMaster> getAvailableSeats() {
		return seatMasterDAO.getAvailableSeats();
	}

	@Override
	public List<SeatMaster> getAllSeats() {
		// TODO Auto-generated method stub
		return seatMasterDAO.getAllSeats();
	}
	
	
}
