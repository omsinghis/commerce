package com.renergy.energytools.business.services;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.renergy.energytools.business.entities.Battery;
import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.PVPanel;
import com.renergy.energytools.business.entities.SeedStarter;

@Service
public class SizingCalculator {
	
	static Logger log = Logger.getLogger(SizingCalculator.class.getName());   
	
    public double calculateAverageDailyLoad(SeedStarter seedStarter){
    	List<LoadRow> loadRows = seedStarter.getLoadRows();
    	Iterator<LoadRow> loadRowsIterator = loadRows.iterator();
    	double loadForUser = 0.0;
		while (loadRowsIterator.hasNext()) {
			LoadRow loadRow = loadRowsIterator.next();
			log.debug("loadRow : " + loadRow.getLoadName() + " quantity :" + loadRow.getLoadQuantity());
			if(loadRow.getLoadQuantity()!=null){
			double averageHrLoad = (loadRow.getLoadQuantity()*loadRow.getLoadWatts()*loadRow.getHrsPerDay()*loadRow.getDaysPerWeek())/7;
			loadRow.setWattshraverage(averageHrLoad);
			log.debug("average daily Load for : " + loadRow.getLoadName() + " is "+ averageHrLoad);
			loadForUser += averageHrLoad;			
			}			
		}
    	return loadForUser;    	
    }
    

    public Battery getBatterySizing(SeedStarter seedStarter){
    	Battery battery = new Battery();
    	double loadForUser = calculateAverageDailyLoad(seedStarter);
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
    
    public PVPanel getPVPanelSizing(SeedStarter seedStarter,Battery battery ){
    	PVPanel pvPanel = new PVPanel();
    	double dailyAHTakenFromBattery = battery.getBatteryBankNeeded();
    	double ahToBeSuppliedByPV = dailyAHTakenFromBattery/(battery.getEfficiency()/100);
    	double pvArrayPeakAmps = ahToBeSuppliedByPV/pvPanel.getPeakSunAvailability();
    	pvPanel.setPannelInParellel(pvArrayPeakAmps/3);
    	pvPanel.setPannelInSeries(seedStarter.getBattery().getDcVoltage().showVolts()/12);
    	pvPanel.setTotalPannels(pvPanel.getPannelInSeries()*pvPanel.getPannelInSeries());
    	log.debug("Panel Sizing " + pvPanel.toString());

    	return pvPanel;
    	
    }
    
    public SeedStarter resetSeedStarted(SeedStarter seedStarter){
    	Battery battery = new Battery();
    	PVPanel pvPanel = new PVPanel();
    	double loadForUser = 0.0;
    	seedStarter.setLoadForUser(loadForUser);
    	seedStarter.setBattery(battery);
    	seedStarter.setPvPanel(pvPanel);
    	
    	return seedStarter;
    	
    }
    
    	

}
