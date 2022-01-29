package com.se.pj.med_store.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.se.pj.med_store.dto.User;

@Controller
@RequestMapping("/")
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/userList")
	public String getUserList(Model model) {
		List<User> userList = new ArrayList<User>();
		userList.add(new User("su yin", "suyin123@gmail.com"));
		userList.add(new User("ei kyaw", "eikyaw123@gmail.com"));
		model.addAttribute("userList", userList);
		model.addAttribute("user", new User());
		return "user-list";
	}

}
