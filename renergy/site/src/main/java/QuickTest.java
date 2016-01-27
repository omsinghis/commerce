import java.util.Iterator;
import java.util.List;

import com.renergy.energytools.business.entities.Battery;
import com.renergy.energytools.business.entities.LoadRow;
import com.renergy.energytools.business.entities.SeedStarter;


public class QuickTest {
	
	static double averagedailyLoad=0.0;
	static float inverterEfficiency=90;
	static float batteryEfficiency=80;
	static float dod=50;
	static int dayofautonomy=2;
	static int batteryVoltage=48;
	
	public static void main (String args[]){
		QuickTest quickTest = new QuickTest();
		SeedStarter seedStarter = new SeedStarter();
		averagedailyLoad = quickTest.calculateAverageDailyLoad(seedStarter);
		Battery battery =quickTest.getBatterySizing(seedStarter);

	}
	
    private double calculateAverageDailyLoad(SeedStarter seedStarter){
    	List<LoadRow> loadRows = seedStarter.getLoadRows();
    	Iterator<LoadRow> loadRowsIterator = loadRows.iterator();
    	double loadForUser = 0.0;
		while (loadRowsIterator.hasNext()) {
			LoadRow loadRow = loadRowsIterator.next();
			System.out.println("loadRow : " + loadRow.getLoadName() + " quantity :" + loadRow.getLoadQuantity());
			if(loadRow.getLoadQuantity()!=null){
			double weeklyLoadperItem = (loadRow.getLoadQuantity()*loadRow.getLoadWatts()*loadRow.getHrsPerDay()*loadRow.getDaysPerWeek());
		    loadRow.setWattsTotal(weeklyLoadperItem);
		    double dailyaverageload =weeklyLoadperItem/7;
			System.out.println("averageHrLoad : " + dailyaverageload);
			loadForUser += dailyaverageload;			
			}
			
		}
		
    	return loadForUser;    	
    }
    
    public Battery getBatterySizing(SeedStarter seedStarter){
    	Battery battery = new Battery();
    	double energyRequiredFromBattery = Math.round((averagedailyLoad/(inverterEfficiency/100)));
    	double batteryBank =Math.round((energyRequiredFromBattery*dayofautonomy)/batteryVoltage);    	
      	double batteryBankwithDOD=Math.round((batteryBank/(dod/100))); 
      	battery.setBatteryBankNeeded(energyRequiredFromBattery);
      	battery.setAhCapacity(batteryBankwithDOD);
      	battery.setInSeries(Math.round(batteryVoltage/12));
      	battery.setInParallel(Math.round((batteryBankwithDOD/20)));   
      	return battery;    	
    }
    

}
