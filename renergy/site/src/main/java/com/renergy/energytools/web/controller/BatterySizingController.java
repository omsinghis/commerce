package com.renergy.energytools.web.controller;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String batterySizing(final Battery battery,@ModelAttribute("loadSummary")Map<?, ?> loadSummary) {
    	if(!loadSummary.isEmpty()){
    	battery.setWattHrsNeededPerDay(Double.parseDouble(loadSummary.get("loadForUser").toString()));
    	}
    	log.debug("Load Summary in step 2 : " +loadSummary);
           return "energytools/step2BatterySizing";
    }

    @RequestMapping(value="/tools/batteryCalculator", params={"calculate"},method = RequestMethod.POST)
    public String calculateSizing(Battery battery,BindingResult bindingResult, ModelMap model) {
        if (bindingResult.hasErrors()) {
            return "energytools/step2BatterySizing";
        }
        
        double amphoursperday = battery.getWattHrsNeededPerDay() / battery.getManufacturerVoltage().showVolts();
        amphoursperday =Double.parseDouble(new DecimalFormat("##.##").format(amphoursperday));
        String amphoursperdayLabel1 = "" + battery.getWattHrsNeededPerDay() + "/" + battery.getManufacturerVoltage().showVolts() + " = " + amphoursperday + " amp hours/day";
        double dayswithoutsun = amphoursperday*battery.getDaysOfAutonomy();
        String amphoursperdayLabel2 = amphoursperday + " X " + battery.getDaysOfAutonomy() + " = " + dayswithoutsun + " amp hours";
        double amshrwithdod = dayswithoutsun * (1/(battery.getDod()/100));
        String amphoursperdayLabel3 = dayswithoutsun + " X (1/(" + battery.getDod() + ")/100)" +" = " + amshrwithdod + " amp hours " ;
        double actualAhCapacity = amshrwithdod * battery.getTempMultiplier();
        String amphoursperdayLabel4 = amshrwithdod + " X " + battery.getTempMultiplier() + " = " + actualAhCapacity + " amp hours " ;
         
        battery.setAmphoursLabel1(amphoursperdayLabel1);
        battery.setAmphoursLabel2(amphoursperdayLabel2);
        battery.setAmphoursLabel3(amphoursperdayLabel3);
        battery.setAmphoursLabel4(amphoursperdayLabel4); 
        battery.setAhCapacity(actualAhCapacity);
        
        log.debug("the calculate method is now called  : " + battery.toString());
        return "energytools/step2BatterySizing";
    }
        
}
