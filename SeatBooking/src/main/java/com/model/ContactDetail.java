package com.seat.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;


/**
 * The persistent class for the contact_details database table.
 * 
 */
@Entity
@Table(name="contact_details")
@NamedQuery(name="ContactDetail.findAll", query="SELECT c FROM ContactDetail c")
public class ContactDetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String city;

	@Column(name="contact_type")
	private String contactType;

	private String country;

	private BigInteger mobile;

	@Column(name="room_no")
	private String roomNo;

	private String state;

	private String street;

	//bi-directional many-to-one association to Person
	@ManyToOne
	@JoinColumn(name="employee_id")
	private Person person;

	public ContactDetail() {
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContactType() {
		return this.contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public BigInteger getMobile() {
		return this.mobile;
	}
	public void setMobile(BigInteger mobile) {
		this.mobile = mobile;
	}

	public String getRoomNo() {
		return this.roomNo;
	}

	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStreet() {
		return this.street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public Person getPerson() {
		return this.person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

}