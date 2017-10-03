package com.atos.seat.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atos.seat.dao.LocationMasterDAO;
import com.atos.seat.dao.LocationMasterDAOImpl;
import com.atos.seat.dao.SeatMasterDAO;
import com.atos.seat.dao.SeatMasterDAOImpl;
import com.atos.seat.model.Booking;
import com.atos.seat.model.LocationMaster;
import com.atos.seat.model.SeatMaster;
import com.atos.seat.services.BookingService;
import com.atos.seat.services.LocationMasterService;
import com.atos.seat.services.PersonService;
import com.atos.seat.services.SeatMasterService;

@Controller
public class AdminController {

	@Autowired
	private BookingService bookingService;
	@Autowired
	private LocationMasterService locationMasterService;
	@Autowired
	private SeatMasterService seatMasterService;


	/* Admin - change seat controller */

	@RequestMapping("/change")
	public ModelAndView changeSeat(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("ChangeSeat");
		mav.addObject("user", new Booking());
		return mav;

	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		session= request.getSession();
		session.invalidate();
		ModelAndView mav = new ModelAndView("redirect:login.html");
		return mav;

	}
	
	@RequestMapping("/approve")
	public ModelAndView approve(HttpServletRequest request,HttpServletResponse response)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		bookingService.cancelSeat(id);
		return new ModelAndView("redirect:admindashboard.html");
		
	}
	
	@RequestMapping("/decline")
	public ModelAndView decline(HttpServletRequest request,HttpServletResponse response)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		bookingService.cancelRequest(id);
		return new ModelAndView("AdminDashboard");
		
	}
	@RequestMapping("/changeSeatAction")
	public ModelAndView changeseataction(HttpServletRequest request, HttpServletResponse response) {
		int emp1 = Integer.parseInt(request.getParameter("employeeId1"));
		int seat1 = Integer.parseInt(request.getParameter("seatNo1"));

		ModelAndView mav = null;

		bookingService.changeSeat(emp1, seat1);
		return new ModelAndView("AdminDashboard");

	}

	/* Admin - change seat controller end */

	/* cancel seat page */
	@RequestMapping("/cancelSeatPage")
	public ModelAndView BookSeat(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("cancelSeat");
		return mav;
	}
	/* cancel seat page end */

	/* cancel seat action button = No start */
	@RequestMapping("/cancelseatNo")
	public ModelAndView deleteNo(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		mav = new ModelAndView("myprofile");
		return mav;
	}
	/* cancel seat action button = No end */

	
	/* cancel seat action button = Yes end */

	/* addlocation start */
	@RequestMapping("adminAddLocation")
	public ModelAndView adminaddlocation(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		mav = new ModelAndView("AdminAddLocation");
		return mav;
	}
	@RequestMapping("addlocation")
	public ModelAndView addLocation(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		SeatMasterDAO sdo = new SeatMasterDAOImpl();
		SeatMaster sm = new SeatMaster();
		//LocationMaster lm = locationMasterService.getLocation(request.getParameter("locationCode")).get(0);
//		sm.setSeatNo(Integer.parseInt(request.getParameter("seatNo")));
//		sm.setFloorNo(Integer.parseInt(request.getParameter("floorNo")));
//		sm.setSeatStatus("available");
		// System.out.println(sm.gt);
//		System.out.println(sm.getFloorNo());
//		System.out.println(sm.getSeatNo());
//		System.out.println(sm.getSeatStatus());
		// lm.getSeatMasters().add(sm);
		// System.out.println(lm.getCountry());
		LocationMasterDAO lno=new LocationMasterDAOImpl();
		LocationMaster lm=new LocationMaster();
		lm.setLocationCode(request.getParameter("locationCode"));
		lm.setLocationName(request.getParameter("locationName"));
		lm.setCountry(request.getParameter("country"));
		lm.setOfficeName(request.getParameter("officeName"));
		locationMasterService.addLocation(lm);
		
		
		
		
		//sm.setLocationMaster(lm);
		//seatMasterService.addSeat(sm);
		mav = new ModelAndView("AdminDashboard");
		mav.addObject("addlocation", lm);
		return mav;
	}
	
	
	
	
	
	
	/* addlocation end */

	 

	/* addseat start */
	@RequestMapping("adminAddSeat")
	public ModelAndView adminaddseat(HttpServletRequest request, HttpServletResponse response) {
		List<Object> li = new ArrayList<Object>();
		List<LocationMaster> code = locationMasterService.getCode();
		code.size();
		li.add(code);
		return new ModelAndView("AdminAddSeat", "data", li);
	}

	@RequestMapping("AddSeat")
	public ModelAndView addseat(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = null;
		SeatMasterDAO sdo = new SeatMasterDAOImpl();
		SeatMaster sm = new SeatMaster();
		LocationMaster lm = locationMasterService.getLocation(request.getParameter("locationCode")).get(0);
		sm.setSeatNo(Integer.parseInt(request.getParameter("seatNo")));
		sm.setFloorNo(Integer.parseInt(request.getParameter("floorNo")));
		sm.setSeatStatus("available");
		// System.out.println(sm.gt);
		System.out.println(sm.getFloorNo());
		System.out.println(sm.getSeatNo());
		System.out.println(sm.getSeatStatus());
		// lm.getSeatMasters().add(sm);
		// System.out.println(lm.getCountry());
		sm.setLocationMaster(lm);
		seatMasterService.addSeat(sm);
		mav = new ModelAndView("AdminDashboard");
		mav.addObject("addseat", sm);
		return mav;
	}
	/* addseat end */
}
