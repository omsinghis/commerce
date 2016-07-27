package com.renergy.energytools.web.controller;

import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.LoadType;
import com.renergy.energytools.business.entities.SeedStarter;
import com.renergy.energytools.business.entities.Volt;
import com.renergy.energytools.business.services.LoadTypeService;
import com.renergy.energytools.business.services.SeedStarterService;
import com.renergy.energytools.business.services.SizingCalculator;

@Controller
public class PowerSizingController {
	static Logger log = Logger.getLogger(PowerSizingController.class.getName());
	
    @Autowired
    private LoadTypeService loadTypeService;
    
    
    @Autowired
    private SeedStarterService seedStarterService;
    
    @Autowired
    private SizingCalculator sizingCalculator;      
    
   
    @ModelAttribute("allBatteryTypes")
    public List<Volt> populateBattery() {
           return Arrays.asList(Volt.ALL);
    }
        
  
    @ModelAttribute("allLoadTypes")
    public List<LoadType> populateLoadtypes() {
        return this.loadTypeService.findAll();
    }    
    
    @ModelAttribute("allSeedStarters")
    public List<SeedStarter> populateSeedStarters() {
        return this.seedStarterService.findAll();
    }
    
      
    @RequestMapping("/tools/powerCalculator")
    public String showPowerEntryTable(final SeedStarter seedStarter) {
        seedStarter.setDatePlanted(Calendar.getInstance().getTime());   
        Map<?, ?> loadSummary =sizingCalculator.calculateAverageDailyLoad(seedStarter); 
        log.debug("Load Summary at Initialization : " +loadSummary);
        return "energytools/step1PowerSizing";
    }	
    
    @RequestMapping(value="/tools/powerCalculator", params={"save"})
    public String saveSeedstarter(final SeedStarter seedStarter, final BindingResult bindingResult,RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            return "energytools/step1PowerSizing";
        }
        Map<?, ?> loadSummary =sizingCalculator.calculateAverageDailyLoad(seedStarter);         
        this.seedStarterService.add(seedStarter);
        redirectAttributes.addFlashAttribute("loadSummary", loadSummary);
        log.debug("Load Summary after save/calculate : " +loadSummary);
        //model.clear();
        return "redirect:/tools/batteryCalculator";
    }    
    
    
    @RequestMapping(value="/tools/powerCalculator", params={"addLoadRow"})
    public String addLoadRow(final SeedStarter seedStarter, final BindingResult bindingResult) {
        seedStarter.getLoadRows().add(new LoadRow());
        return "energytools/step1PowerSizing";
    }    
    
    
    @RequestMapping(value="/tools/powerCalculator", params={"removeLoadRow"})
    public String removeLoadRow(final SeedStarter seedStarter, final BindingResult bindingResult, final HttpServletRequest req) {
        final Integer rowId = Integer.valueOf(req.getParameter("removeLoadRow"));
        seedStarter.getLoadRows().remove(rowId.intValue());
        return "energytools/step1PowerSizing";
    }    
    

  
    
}
