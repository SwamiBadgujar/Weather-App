package com.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.weather;
import com.service.appService;

@Controller
public class HomeControler {

	@Autowired
	public appService service;

	@RequestMapping("/")
	public String onStart() {
		return "views/index.jsp";
	}

	@GetMapping("/report")
	public String getReport(@RequestParam String city, Model model) {
		weather report = service.getReport(city);

		if (report != null) {
			model.addAttribute("data", report);
			return "views/report.jsp";
		}
		return "views/index.jsp";
	}

}
