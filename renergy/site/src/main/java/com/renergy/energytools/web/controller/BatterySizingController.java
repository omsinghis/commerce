package com.renergy.energytools.web.controller;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.renergy.energytools.business.entities.Battery;
import com.renergy.energytools.business.entities.Volt;

@Controller
public class BatterySizingController {
	static Logger log = Logger.getLogger(BatterySizingController.class.getName());
	
    @ModelAttribute("allBatteryTypes")
    public List<Volt> populateBattery() {
           return Arrays.asList(Volt.ALL);
    }
	
    @RequestMapping(value="/tools/batteryCalculator")
    public String batterySizing(final Battery battery) {
           return "energytools/step2BatterySizing";
    }

    @RequestMapping(value="/tools/batteryCalculator", params={"calculate"})
    public String calculateSizing(final Battery battery, final BindingResult bindingResult, final ModelMap model) {
        if (bindingResult.hasErrors()) {
            return "energytools/step2BatterySizing";
        }
        log.debug("the calculate method is now called  : " + battery.toString());
        double amphoursperday = battery.getWattHrsNeededPerDay() / battery.getManufacturerVoltage().showVolts();
        amphoursperday =Double.parseDouble(new DecimalFormat("##.####").format(amphoursperday));
        String amphoursperdayLabel = "" + battery.getWattHrsNeededPerDay() + "/" + battery.getManufacturerVoltage().showVolts() + "=" + amphoursperday;
        log.debug("the am hours per day  : " +amphoursperdayLabel);
        
        
        
        
        return "redirect:/tools/batteryCalculator";
    }
    
    
}
