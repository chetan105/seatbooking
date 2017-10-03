package com.atos.seat.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "booking")
@NamedQuery(name = "Booking.findAll", query = "SELECT b FROM Booking b")
public class Booking implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "booking_id")
	private int bookingId;
	
	@Column(name = "booking_status")
	private String bookingStatus;

	@Temporal(TemporalType.DATE)
	@Column(name = "booking_date")
	private Date bookingDate;

	// bi-directional many-to-one association to Person
	@OneToOne
	@JoinColumn(name = "employee_id")
	private Person person;

	// bi-directional many-to-one association to SeatMaster
	@OneToOne
	@JoinColumn(name = "seat_no")
	private SeatMaster seatMaster;

	public Booking() {
	}

	public int getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public Date getBookingDate() {
		return this.bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public Person getPerson() {
		return this.person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public SeatMaster getSeatMaster() {
		return this.seatMaster;
	}

	public void setSeatMaster(SeatMaster seatMaster) {
		this.seatMaster = seatMaster;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}

	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

}