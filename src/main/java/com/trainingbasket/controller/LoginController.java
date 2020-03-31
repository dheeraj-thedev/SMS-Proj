package com.trainingbasket.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.trainingbasket.services.LoginService;

@Controller
public class LoginController {
	
//	Signup
//		Mail SMTP 
//		Name
//		Age
//		Contact
//		<html5 Validation to be performed >
//      controller 
//			get
//				signup.jsp
//			post
//				signup.jsp | need to get parameters
//				|
//				|
//				Service will save the data in memory {collection etc}
//					will use a utill to send mail using your gmail account 
//					
				
	
	
	@Autowired
	LoginService service;

	@RequestMapping(value = "/")
	public String index() {
        //tring d = "view  .jsp";
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(ModelMap map) {
		//Server Date Time 
		map.put("time", LocalDateTime.now().toString());
		return "login";
	}
	
	/*
	 * ## What we will do: - Create TodoController and list-todos.jsp - Make
	 * TodoService a @Service and inject it
	 */
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String doLogin(ModelMap model, @RequestParam String name, @RequestParam String pass) {
		if (service.validateUser(name, pass)) {
			model.put("msg", "Hi " + name + " Welcome to the app");
			return "welcome";
		}
		model.put("errMsg", "Invalid Credentials givern");
		return "login";
	}
}
