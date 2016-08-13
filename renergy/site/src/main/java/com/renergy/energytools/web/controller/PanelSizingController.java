package com.renergy.energytools.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.renergy.energytools.business.entities.Panel;

@Controller
public class PanelSizingController {
	static Logger log = Logger.getLogger(PanelSizingController.class.getName());

    @RequestMapping(value="/tools/panelCalculator")
    public String panelSizing(final Panel panel) {
           return "energytools/step3PanelSizing";
    }
    
    @RequestMapping(value="/tools/panelCalculator", params={"calculate"},method = RequestMethod.POST)
    public String calculateSizing(Panel panel,BindingResult bindingResult, ModelMap model) {
        if (bindingResult.hasErrors()) {
            return "energytools/step2PanelSizing";
        }    
        log.debug("the calculate method is now called  : " + panel.toString());
        return "energytools/step3PanelSizing";
    }
    
    
}
