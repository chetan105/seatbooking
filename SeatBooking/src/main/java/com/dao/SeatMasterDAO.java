package com.seat.dao;

import org.hibernate.Session;

import com.seat.model.Person;
import com.seat.model.SeatMaster;
//create and retrieve operations implemented classes and validated in backend//
public interface SeatMasterDAO {
	public void addSeat(SeatMaster sm,Session session);
	public SeatMaster getSeat(int seatNo);
	

}
