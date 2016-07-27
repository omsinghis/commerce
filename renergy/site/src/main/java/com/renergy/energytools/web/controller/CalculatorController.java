package com.renergy.energytools.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CalculatorController {

	@RequestMapping(value = "/tools/calculator/contactus")
	public String index() {
		return "energytools/calculator";
	}
}
