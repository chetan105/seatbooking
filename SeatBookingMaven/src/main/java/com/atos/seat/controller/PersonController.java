package com.atos.seat.controller;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atos.seat.dao.ContactDetailsDAO;
import com.atos.seat.dao.ContactDetailsDAOImpl;
import com.atos.seat.dao.PersonDAO;
import com.atos.seat.dao.PersonDAOImpl;
import com.atos.seat.model.Booking;
import com.atos.seat.model.ContactDetail;
import com.atos.seat.model.LocationMaster;
import com.atos.seat.model.Person;
import com.atos.seat.model.SeatMaster;
import com.atos.seat.services.BookingService;
import com.atos.seat.services.ContactDetailService;
import com.atos.seat.services.LocationMasterService;
import com.atos.seat.services.PersonService;
import com.atos.seat.services.SeatMasterService;
import com.atos.seat.utils.ResetMail;

import oracle.net.aso.p;

@Controller
public class PersonController {

	@Autowired
	private PersonService personService;

	@Autowired
	private BookingService bookingService;

	@Autowired
	private ContactDetailService contactDetailService;

	@Autowired
	private SeatMasterService seatMasterService;

	@Autowired
	private LocationMasterService locationMasterService;

	
	@RequestMapping("/admindashboard")
	public ModelAndView adminPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("AdminDashboard");
		List<Booking> li=bookingService.getRequest();
		List<Booking> booked=bookingService.viewBookings();
		List<SeatMaster> seats=seatMasterService.getAvailableSeats();
		int totalseats=seats.size();
		int bookedseats=booked.size();
		int available=totalseats - bookedseats;
		mav.addObject("user", new Person());
		mav.addObject("notify",li);
		mav.addObject("totalseats",totalseats);
		mav.addObject("bookedseats",bookedseats);
		mav.addObject("available",available);
		return mav;

	}
	
	@RequestMapping("/myProfile")
	public ModelAndView userPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session=request.getSession();
		Person p=(Person) session.getAttribute("person");
		List <Booking> li=bookingService.getDetails(p.getEmployeeId());
		ModelAndView mav = new ModelAndView("myprofile");
		mav.addObject("detail",li);
		return mav;

	}
	
	@RequestMapping("/cancel")
	public ModelAndView cancelRequest(HttpServletRequest request,HttpServletResponse response, HttpSession session)
	{
		session=request.getSession();
		Person p=(Person) session.getAttribute("person");
		bookingService.changeStatus(p);
		System.out.println("called");
		return new ModelAndView("myprofile");
	}

	@RequestMapping("/login")
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("loginpage");
		mav.addObject("user", new Person());
		return mav;

	}

	@RequestMapping("/validate")
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		ModelAndView mav = null;

		if (personService.checkPerson(request.getParameter("userName"), request.getParameter("password"))) {
			mav = new ModelAndView("myprofile");
			Person p = personService.getPerson(request.getParameter("userName"));
			List<Booking> li=bookingService.viewBookings();
			List<Booking> userbooking=new ArrayList<Booking>();
			if(li.size()>0)
			{
				Iterator<Booking> it=li.iterator();
				while(it.hasNext())
				{
					userbooking.add(it.next());
				}
				
			}
			session.setAttribute("person", p);
			mav.addObject("booking",userbooking);
			session.setAttribute("loggedIn", "true");
			if(p.getUserType().equals("Admin"))
			{
				
				return new ModelAndView("redirect:admindashboard.html");
			}
			
		} else {
			mav = new ModelAndView("loginpage");
			
			mav.addObject("message", "Username or Password is wrong !!");
		}

		return mav;

	}

	@RequestMapping("/signUp")
	public ModelAndView signUpPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new Person());
		return mav;

	}
	@RequestMapping("/Mmapage.html")
	public ModelAndView mmaPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("myprofile");
		mav.addObject("user", new Person());
		return mav;

	}

	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		PersonDAO pdo = new PersonDAOImpl();
		Person p = new Person();
		p.setUserName(request.getParameter("userName"));
		p.setEmployeeName(request.getParameter("employeeName"));
		p.setPassword(request.getParameter("password"));
		p.setDesignation(request.getParameter("designation"));
		p.setEmail(request.getParameter("email"));
		p.setUserType(request.getParameter("userType"));
		if (personService.checkPerson(request.getParameter("userName"), request.getParameter("email"))) {
			// cd1.setPerson(p);
			personService.register(p);
			mav = new ModelAndView("loginpage");
			mav.addObject("person", p);
			return mav;
		} else {
			mav = new ModelAndView("redirect:signUp.html");
			mav.addObject("message", "Username or email is already taken !!");
		}
		return mav;
		// mav.addObject("contactuser", cd1);
		// mav.addObject("registerMessage", "Registration Successfull !");

	}

	@RequestMapping("/contactdetail")
	public ModelAndView contactDetail(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("ContactDetailForm");
		mav.addObject("user", new ContactDetail());
		return mav;

	}

	@RequestMapping("/updatecontactdetail")
	public ModelAndView updateContactDetail(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		ModelAndView mav = null;
		session=request.getSession();
		Person p=(Person) session.getAttribute("person");
		ContactDetailsDAO pdo = new ContactDetailsDAOImpl();
		ContactDetail cd = new ContactDetail();
		cd.setPerson(p);
		cd.setContactType(request.getParameter("contactType"));
		cd.setMobile(request.getParameter("mobile"));
		cd.setRoomNo(request.getParameter("roomNo"));
		cd.setStreet(request.getParameter("street"));
		cd.setCity(request.getParameter("city"));
		cd.setState(request.getParameter("state"));
		cd.setCountry(request.getParameter("country"));

		// cd1.setPerson(p);
		contactDetailService.addContact(cd);
		// personService.(p);

		mav = new ModelAndView("myprofile");
		mav.addObject("updateContactDetail", cd);
		// mav.addObject("contactuser", cd1);
		// mav.addObject("registerMessage", "Registration Successfull !");
		return mav;

	}

	/* book seat controller */

	@RequestMapping("/viewseats")
	public ModelAndView viewSeats(HttpServletRequest request, HttpServletResponse response) {
		List<Object> li = new ArrayList<Object>();
		ModelAndView mav;// = new ModelAndView("BookSeat");
		li.add(request.getParameter("floorNo"));
		li.add(request.getParameter("officeName"));
		li.add(request.getParameter("locationCode"));
		List<SeatMaster> seats = seatMasterService.getAvailableSeats();
		seats.size();
		
		li.add(seats);
		List<Booking> booking=bookingService.viewBookings();
		li.add(booking);
		return new ModelAndView("BookSeat", "data", li);
	}

	@RequestMapping("/book")
	public ModelAndView BookSeat(HttpServletRequest request, HttpServletResponse response) {

		List<Object> li = new ArrayList<Object>();
		List<SeatMaster> seats = seatMasterService.getAvailableSeats();
		List<LocationMaster> loc = locationMasterService.getCode();
		
		
		seats.size();
		li.add(seats);
		li.add(loc);
		
		return new ModelAndView("BookSeat", "seat", li);

	}

	@RequestMapping("/booking")
	public ModelAndView bookSeat(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		if (session.getAttribute("loggedIn") != null && session.getAttribute("loggedIn").equals("true")) {
			Person p = new Person();
			p = (Person) session.getAttribute("person");
			System.out.println(p.getEmployeeName());
			int seat = Integer.parseInt(request.getParameter("id"));
			SeatMaster s = seatMasterService.getSeat(seat);
			System.out.println(s.getSeatNo());
			Booking b = new Booking();
			b.setPerson(p);
			b.setSeatMaster(s);
			b.setBookingDate(new Date());

			bookingService.addBooking(b);
			bookingService.updateSeatMaster(s.getSeatNo());

			ModelAndView mav = new ModelAndView("ViewBooking");
			return mav;
		} else {
			return new ModelAndView("login");
		}

	}

	/* View booking */
	@RequestMapping("/viewBooking")
	public ModelAndView viewBooking(HttpServletRequest request, HttpServletResponse response) {
		Person p = new Person();
		p = personService.getPerson("chetan105");
		System.out.println(p.getEmployeeName());
		int seat = Integer.parseInt(request.getParameter("id"));
		SeatMaster s = seatMasterService.getSeat(seat);
		System.out.println(s.getSeatNo());
		Booking b = new Booking();
		b.setPerson(p);
		b.setSeatMaster(s);
		b.setBookingDate(new Date());

		bookingService.addBooking(b);
		bookingService.updateSeatMaster(s.getSeatNo());

		ModelAndView mav = new ModelAndView("ViewBooking");
		return mav;

	}

	/* book seat controller end */


	/* Delete Account controller */

	@RequestMapping("/deleteAccount")
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		if (session.getAttribute("loggedIn") != null && session.getAttribute("loggedIn").equals("true")) {
			ModelAndView mav = null;

			return new ModelAndView("deleteaccount");

		} else
			return new ModelAndView("login");
	}

	@RequestMapping("/deletepersonYes")
	public ModelAndView deleteYes(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		if (session.getAttribute("loggedIn") != null && session.getAttribute("loggedIn").equals("true")) {

			Person p = (Person) session.getAttribute("person");
			System.out.println(p.getEmployeeName());
			personService.deletePerson(p.getUserName(), p.getPassword());
			return new ModelAndView("home");
		} else
			return new ModelAndView("login");
	}

	@RequestMapping("/deletepersonNo")
	public ModelAndView deleteNo(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;

		mav = new ModelAndView("myprofile");

		return mav;
	}

	@RequestMapping("/ConfirmDeleteAccount")
	public ModelAndView confirmdeleteaccount(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		personService.deletePerson(request.getParameter("userName"), request.getParameter("password"));
		mav = new ModelAndView("home");

		return mav;
	}

	/* delete controller end */

	/* swap seat controller */

	@RequestMapping("/swapSeat")
	public ModelAndView swap(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;

		mav = new ModelAndView("swap");

		return mav;
	}

	@RequestMapping("/swapSeatAction")
	public ModelAndView swapseataction(HttpServletRequest request, HttpServletResponse response) {
		int emp1 = Integer.parseInt(request.getParameter("employeeId1"));
		int seat1 = Integer.parseInt(request.getParameter("seatNo1"));
		int emp2 = Integer.parseInt(request.getParameter("employeeId2"));
		int seat2 = Integer.parseInt(request.getParameter("seatNo2"));

		ModelAndView mav = null;

		bookingService.swap(emp1, emp2, seat1, seat2);
		mav = new ModelAndView("myprofile");

		return mav;
	}

	/* swap seat controller */

	/* cancel seat controller */

	@RequestMapping("cancelSeat")
	public ModelAndView cancelseat(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("CancelSeat");
		mav.addObject("user", new Booking());
		return mav;

	}

	@RequestMapping("/forgotpassword")
	public ModelAndView forgot(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;

		mav = new ModelAndView("forgot");

		return mav;
	}

	@RequestMapping("/reset")
	public ModelAndView reset(HttpServletRequest request, HttpServletResponse response) {

		Person p = personService.getPerson(request.getParameter("email"));
		if (p == null) {
			ModelAndView mav = new ModelAndView("forgot");
			mav.addObject("errmsg", "User Not Found !");
			return mav;
		}
		String host = request.getRequestURL().toString();
		// String hash=DigestUtils.sha1Hex(p.getUserName()+"-"+new
		// Date().getTime());
		String url = host.substring(0, host.lastIndexOf('/'));
		/* +"/q="+hash; */
		System.out.println(host + " " + url);
		String to = p.getUserName();
		System.out.println(to);
		String subject = "Reset Password link for Your Account";
		String body = "Please click below link to reset your password\n" + url;
		try {
			ResetMail.sendFromGMail(to, subject, body);
			System.out.println("Email Sent....!");
		} catch (Exception ex) {
			System.out.println("Could not send email....!");
			ex.printStackTrace();
		}

		return new ModelAndView("emailnotify");

	}

	/*
	 * @RequestMapping("/bookSeat") public ModelAndView
	 * bookingSeat(HttpServletRequest request, HttpServletResponse response) {
	 * ModelAndView mav = null; PersonDAO pdo=new PersonDAOImpl(); Person p=new
	 * Person(); ContactDetailsDAO cdo= new ContactDetailsDAOImpl();
	 * ContactDetail cd1= new ContactDetail();
	 * 
	 * p.setUserName(request.getParameter("userName"));
	 * p.setEmployeeName(request.getParameter("employeeName"));
	 * p.setPassword(request.getParameter("password"));
	 * p.setDesignation(request.getParameter("designation"));
	 * p.setEmail(request.getParameter("email"));
	 * p.setUserType(request.getParameter("userType"));
	 * 
	 * bookingService.addBooking(p); mav.addObject("message",
	 * "Username or Password is wrong!!"); } return mav; }
	 */

	/*
	 * @RequestMapping("/deleteYes") public ModelAndView
	 * deleteyes(HttpServletRequest request, HttpServletResponse response) {
	 * ModelAndView mav = null;
	 * 
	 * 
	 * personService.deletePerson(""); mav = new ModelAndView("home");
	 * 
	 * return mav;
	 */
}

/*
 * @RequestMapping("/reset") public ModelAndView reset(HttpServletRequest
 * request, HttpServletResponse response) {
 * 
 * 
 * Person p=personService.getPerson(request.getParameter("email")); if(p==null)
 * { ModelAndView mav=new ModelAndView("forgot"); mav.addObject("errmsg",
 * "User Not Found !"); return mav; } String
 * host=request.getRequestURL().toString(); String
 * hash=DigestUtils.sha1Hex(p.getUserName()+"-"+new Date().getTime()); String
 * url = host.substring(0, host.lastIndexOf('/'))+"/q="+hash;
 */

/*
 * String to=p.getUserName(); String
 * subject="Reset Password link for Your Account"; String
 * body="Please click below link to reset your password\n"+url; try {
 * ResetMail.sendFromGMail(to, subject, body);
 * System.out.println("Email Sent....!"); } catch (Exception ex) {
 * System.out.println("Could not send email....!"); ex.printStackTrace(); }
 * 
 * return new ModelAndView("loginpage");
 * 
 * }
 */
