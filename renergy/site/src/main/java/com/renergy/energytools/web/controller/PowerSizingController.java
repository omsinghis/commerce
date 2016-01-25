package com.renergy.energytools.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renergy.energytools.business.entities.Battery;

@Controller
public class PowerSizingController {
	static Logger log = Logger.getLogger(PowerSizingController.class.getName());

    @RequestMapping(value="/tools/powerCalculator")
    public String batterySizing(final Battery battery) {
           return "energytools/step1PowerSizing";
    }

    
    
}
