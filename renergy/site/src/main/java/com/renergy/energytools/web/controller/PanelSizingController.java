package com.renergy.energytools.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renergy.energytools.business.entities.Battery;

@Controller
public class PanelSizingController {
	static Logger log = Logger.getLogger(PanelSizingController.class.getName());

    @RequestMapping(value="/tools/panelCalculator")
    public String batterySizing(final Battery battery) {
           return "energytools/step3PanelSizing";
    }

    
    
}
