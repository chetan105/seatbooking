package com.atos.seat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.atos.seat.model.Person;

@Controller
public class HomeController {

	@RequestMapping("/homepage")
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("user", new Person());
		return mav;

	}
}
