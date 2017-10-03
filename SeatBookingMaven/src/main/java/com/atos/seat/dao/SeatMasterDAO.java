package com.atos.seat.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.atos.seat.model.SeatMaster;

//create and retrieve operations implemented classes and validated in backend//
@Component
public interface SeatMasterDAO {
	public void addSeat(SeatMaster sm);

	public SeatMaster getSeat(int seatNo);

	public List<SeatMaster> getAvailableSeats();

	public List<SeatMaster> getAllSeats();

}
