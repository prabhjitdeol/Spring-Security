package com.SpringSecurity;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale,
			@RequestParam(value = "error", required = false) String error,
			ModelMap modelMap) {

		System.out.println("Welcome !!! login!!!");
		if (error != null && error.equals("true")) {
			modelMap.addAttribute("error", true);
			System.out.println("Invalid Login!!!");
		} else
			modelMap.addAttribute("error", false);
			System.out.println("valid Login!!!");

		return "login";
	}
	
	@RequestMapping(value = "/home")
	public String home(){
		return "home";
	}
}
