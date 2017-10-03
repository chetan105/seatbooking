package com.atos.seat.services;

import java.util.List;

import com.atos.seat.model.SeatMaster;

public interface SeatMasterService {

	public void addSeat(SeatMaster sm);

	public SeatMaster getSeat(int seatNo);

	List<SeatMaster> getAvailableSeats();

	public List<SeatMaster> getAllSeats();

}
