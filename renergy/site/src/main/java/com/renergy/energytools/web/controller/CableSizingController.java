package com.renergy.energytools.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renergy.energytools.business.entities.Battery;

@Controller
public class CableSizingController {
	static Logger log = Logger.getLogger(CableSizingController.class.getName());

    @RequestMapping(value="/tools/cableCalculator")
    public String batterySizing(final Battery battery) {
           return "energytools/step4CableSizing";
    }
    
    
}
