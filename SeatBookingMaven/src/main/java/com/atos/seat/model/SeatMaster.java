package com.atos.seat.model;

import java.io.Serializable;
import javax.persistence.*;

import java.util.ArrayList;
import java.util.List;

/**
 * The persistent class for the seat_master database table.
 * 
 */
@Entity
@Table(name = "seat_master")
@NamedQuery(name = "SeatMaster.findAll", query = "SELECT s FROM SeatMaster s")
public class SeatMaster implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "seat_no")
	private int seatNo;

	@Column(name = "floor_no")
	private int floorNo;

	@Column(name = "seat_status")
	private String seatStatus;

	// bi-directional many-to-many association to Person
	@ManyToMany
	@JoinTable(name = "booking", joinColumns = { @JoinColumn(name = "seat_no") }, inverseJoinColumns = {
			@JoinColumn(name = "employee_id") })
	private List<Person> persons = new ArrayList<Person>();

	// bi-directional many-to-one association to LocationMaster
	@ManyToOne
	@JoinColumn(name = "location_code")
	private LocationMaster locationMaster;

	public SeatMaster() {
	}

	public int getSeatNo() {
		return this.seatNo;
	}

	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	public int getFloorNo() {
		return this.floorNo;
	}

	public void setFloorNo(int floorNo) {
		this.floorNo = floorNo;
	}

	public String getSeatStatus() {
		return this.seatStatus;
	}

	public void setSeatStatus(String seatStatus) {
		this.seatStatus = seatStatus;
	}

	public List<Person> getPersons() {
		return this.persons;
	}

	public void setPersons(List<Person> persons) {
		this.persons = persons;
	}

	public LocationMaster getLocationMaster() {
		return this.locationMaster;
	}

	public void setLocationMaster(LocationMaster locationMaster) {
		this.locationMaster = locationMaster;
	}

	@OneToOne(mappedBy = "seatMaster")
	private Booking bookings;

	/*
	 * public List<Booking> getBookings() { return this.bookings; }
	 * 
	 * public void setBookings(List<Booking> bookings) { this.bookings =
	 * bookings; }
	 * 
	 * public Booking addBooking(Booking booking) { getBookings().add(booking);
	 * booking.setSeatMaster(this);
	 * 
	 * return booking; }
	 * 
	 * public Booking removeBooking(Booking booking) {
	 * getBookings().remove(booking); booking.setSeatMaster(null);
	 * 
	 * return booking; }
	 */

}