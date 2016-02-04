/*
 * =============================================================================
 * 
 *   Copyright (c) 2011-2014, The THYMELEAF team (http://www.thymeleaf.org)
 * 
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 * 
 *       http://www.apache.org/licenses/LICENSE-2.0
 * 
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * 
 * =============================================================================
 */
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

import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.LoadType;
import com.renergy.energytools.business.entities.SeedStarter;
import com.renergy.energytools.business.entities.Volt;
import com.renergy.energytools.business.services.LoadTypeService;
import com.renergy.energytools.business.services.SeedStarterService;
import com.renergy.energytools.business.services.SizingCalculator;


@Controller
public class SeedStarterMngController {
	
	static Logger log = Logger.getLogger(SeedStarterMngController.class.getName());


    @Autowired
    private LoadTypeService loadTypeService;
    
    
    @Autowired
    private SeedStarterService seedStarterService;
    
    @Autowired
    private SizingCalculator sizingCalculator;    
    
        
    public SeedStarterMngController() {
        super();
    }
           
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
    
      
    @RequestMapping({"/tools/energyCalculator","/tools/seedstartermng"})
    public String showSeedstarters(final SeedStarter seedStarter) {
        seedStarter.setDatePlanted(Calendar.getInstance().getTime());      
        return "energytools/solarcalculator";
    }
    
    @RequestMapping(value="/tools/energyCalculator", params={"save"})
    public String saveSeedstarter(final SeedStarter seedStarter, final BindingResult bindingResult, final ModelMap model) {
        if (bindingResult.hasErrors()) {
            return "energytools/solarcalculator";
        }
        //seedStarter.setLoadForUser(sizingCalculator.calculateAverageDailyLoad(seedStarter)); 
        Map<?, ?> loadSummary =sizingCalculator.calculateAverageDailyLoad(seedStarter); 
        //seedStarter.setBattery(sizingCalculator.getBatterySizing(seedStarter));
        seedStarter.setPvPanel(sizingCalculator.getPVPanelSizing(seedStarter, seedStarter.getBattery()));
        log.debug("seed starter values in save method : " + seedStarter.toString());
        this.seedStarterService.add(seedStarter);
        model.clear();
        return "redirect:/tools/energyCalculator";
    }
    


    
    @RequestMapping(value="/tools/energyCalculator", params={"addLoadRow"})
    public String addLoadRow(final SeedStarter seedStarter, final BindingResult bindingResult) {
        seedStarter.getLoadRows().add(new LoadRow());
        return "energytools/solarcalculator";
    }    
    
    
    @RequestMapping(value="/tools/energyCalculator", params={"removeLoadRow"})
    public String removeLoadRow(final SeedStarter seedStarter, final BindingResult bindingResult, final HttpServletRequest req) {
        final Integer rowId = Integer.valueOf(req.getParameter("removeLoadRow"));
        seedStarter.getLoadRows().remove(rowId.intValue());
        return "energytools/solarcalculator";
    }
    
    
    @RequestMapping(value="/tools/energyCalculator", params={"reset"})
    public String clearAndReset(final SeedStarter seedStarter) {
       // sizingCalculator.resetSeedStarted(seedStarter); 
        log.debug("seed is reset");
        return "energytools/solarcalculator";
        }
    
    
}
