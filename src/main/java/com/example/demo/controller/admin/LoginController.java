package com.example.demo.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("login")
	public String login() {
		return "login";
	}	
		@GetMapping("login-error")
		public String loginError(Model model) {
			model.addAttribute("hasError", true);			
			return "login";
	}

}
