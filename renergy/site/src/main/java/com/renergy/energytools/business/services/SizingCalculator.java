package com.renergy.energytools.business.services;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.renergy.energytools.business.entities.Battery;
import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.PVPanel;
import com.renergy.energytools.business.entities.SeedStarter;

@Service
public class SizingCalculator {
	
	static Logger log = Logger.getLogger(SizingCalculator.class.getName());   
	
    public Map<String, Double> calculateAverageDailyLoad(SeedStarter seedStarter){
    	List<LoadRow> loadRows = seedStarter.getLoadRows();
    	Iterator<LoadRow> loadRowsIterator = loadRows.iterator();
        double totalWatts =0;
    	double wattshrperday =0;
    	double totalWattshrperweek=0;
    	Map<String, Double> map = new HashMap<String, Double>();
		while (loadRowsIterator.hasNext()) {
			LoadRow loadRow = loadRowsIterator.next();
			log.debug("loadRow : " + loadRow.getLoadName() + " quantity :" + loadRow.getLoadQuantity());
			if(loadRow.getLoadQuantity()!=null){
			totalWatts +=loadRow.getLoadWatts();
            double weeklyLoadperItem = (loadRow.getLoadQuantity()*loadRow.getLoadWatts()*loadRow.getHrsPerDay()*loadRow.getDaysPerWeek());            
            loadRow.setWattsTotal(weeklyLoadperItem);
            totalWattshrperweek += weeklyLoadperItem;            
         		
			}			
		}
		double dailyaverageload =totalWattshrperweek/7;	
		map.put("weeklyLoad",totalWattshrperweek);
        map.put("dailyaverageload",dailyaverageload);
		map.put("totalWatts",totalWatts);
    	return map;    	
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
    
    	

}
