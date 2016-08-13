package com.renergy.energytools.business.services;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.renergy.energytools.business.entities.Battery;
import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.Panel;
import com.renergy.energytools.business.entities.SeedStarter;

@Service
public class SizingCalculator {
	
	static Logger log = Logger.getLogger(SizingCalculator.class.getName());   
	
    public Map calculateAverageDailyLoad(SeedStarter seedStarter){
    	List<LoadRow> loadRows = seedStarter.getLoadRows();
    	Iterator<LoadRow> loadRowsIterator = loadRows.iterator();
    	double totalWatts =0.0;
    	double loadForUser = 0.0;
    	Map map = new HashMap();
		while (loadRowsIterator.hasNext()) {
			LoadRow loadRow = loadRowsIterator.next();
			log.debug("loadRow : " + loadRow.getLoadName() + " quantity :" + loadRow.getLoadQuantity());
			if(loadRow.getLoadQuantity()!=null){
			totalWatts +=loadRow.getLoadWatts();
			double averageHrLoad = (loadRow.getLoadQuantity()*loadRow.getLoadWatts()*loadRow.getHrsPerDay()*loadRow.getDaysPerWeek())/7;
			loadRow.setWattshraverage(averageHrLoad);			
			loadForUser += averageHrLoad;			
			}			
		}
		map.put("loadForUser", loadForUser);
		map.put("totalWatts",totalWatts);
    	return map;    	
    }
    

    public Battery getBatterySizing(SeedStarter seedStarter){
    	Battery battery = new Battery();
    	double loadForUser = seedStarter.getLoadForUser();
    	double energyRequiredFromBattery = Math.round((loadForUser/(seedStarter.getInverterEfficiency()/100)));
    	int batteryVoltage=seedStarter.getBattery().getDcVoltage().showVolts();
    	double batteryBank =Math.round((energyRequiredFromBattery*seedStarter.getDaysOfAutonomy()/batteryVoltage));    	
      	double batteryBankwithDOD=Math.round((batteryBank/(seedStarter.getBattery().getDod()/100))); 
      	battery.setBatteryBankNeeded(energyRequiredFromBattery);
      	battery.setAhCapacity(batteryBankwithDOD);
      	battery.setInSeries(Math.round(batteryVoltage/12));
      	battery.setInParallel(Math.round((batteryBankwithDOD/20)));   
      	battery.setTotalCount(battery.getInSeries()*battery.getInParallel());
      	
      	log.debug("battery sizing " + battery.toString());
      	
      	return battery;    	
    }
    
    public Panel getPVPanelSizing(SeedStarter seedStarter,Battery battery ){
    	Panel pvPanel = new Panel();
    	double dailyAHTakenFromBattery = battery.getBatteryBankNeeded();
    	double ahToBeSuppliedByPV = dailyAHTakenFromBattery/(battery.getEfficiency()/100);
    	double pvArrayPeakAmps = ahToBeSuppliedByPV/pvPanel.getSunshineHoursPerDay();
    	pvPanel.setPannelInParellel(pvArrayPeakAmps/3);
    	pvPanel.setPannelInSeries(seedStarter.getBattery().getDcVoltage().showVolts()/12);
    	pvPanel.setTotalPannels(pvPanel.getPannelInSeries()*pvPanel.getPannelInSeries());
    	log.debug("Panel Sizing " + pvPanel.toString());

    	return pvPanel;
    	
    }
    
    public SeedStarter resetSeedStarted(SeedStarter seedStarter){
    	Battery battery = new Battery();
    	Panel pvPanel = new Panel();
    	double loadForUser = 0.0;
    	seedStarter.setLoadForUser(loadForUser);
    	seedStarter.setBattery(battery);
    	seedStarter.setPvPanel(pvPanel);
    	
    	return seedStarter;
    	
    }
    
    	

}
