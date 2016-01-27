package com.renergy.energytools.business.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SeedStarter {

	
	//initialise the array list with few  LoadRows
	final LoadRow loadRow1=new LoadRow("CFL",6, 15, 4,7);
	final LoadRow loadRow2=new LoadRow("FAN",3, 100, 4,7);
	final LoadRow loadRow3=new LoadRow("Fridge",1, 150, 18,7);
	final LoadRow loadRow4=new LoadRow("TV",2, 130, 4,7);
	final LoadRow loadRow5=new LoadRow("Washing Machine",1, 1500, 4,7);
	final LoadRow loadRow6=new LoadRow("Microwave",1, 1200, 5,7);
	final LoadRow loadRow7=new LoadRow("Computer",2, 105, 8,7);
	final LoadRow loadRow8=new LoadRow();
	final LoadRow loadRow9=new LoadRow();
	final LoadRow loadRow10=new LoadRow();
	
	
    private Integer id = null;
    private Date datePlanted = null;
    private int daysOfAutonomy=2;//in days
    private Battery battery=new Battery();
    private Inverter inverter=new Inverter();
    private PVPanel pvPanel= new PVPanel();
    private PVController pvController = new PVController();
    private double inverterEfficiency=90; //in %
    
    private Volt inVolts = Volt.Volts_12;    
    private List<LoadRow> loadRows = new ArrayList<LoadRow>();
    
    private double dailyaverageload = 0.0;
    private double totalWatts = 0.0;
    private double weeklyLoad=0.0;

    
    public SeedStarter() {
        super();
        loadRows.add(loadRow1);
        loadRows.add(loadRow2);
        loadRows.add(loadRow3);
        loadRows.add(loadRow4);
        loadRows.add(loadRow5);
        loadRows.add(loadRow6);
        loadRows.add(loadRow7);
        loadRows.add(loadRow8);
        loadRows.add(loadRow9);
        loadRows.add(loadRow10);
    }


    public Integer getId() {
        return this.id;
    }


    public void setId(final Integer id) {
        this.id = id;
    }


    public Date getDatePlanted() {
        return this.datePlanted;
    }


    public void setDatePlanted(final Date datePlanted) {
        this.datePlanted = datePlanted;
    }


    
    public Volt getInVolts() {
		return inVolts;
	}


	public void setInVolts(Volt inVolts) {
		this.inVolts = inVolts;
	}
	


	public List<LoadRow> getLoadRows() {
		return loadRows;
	}


	public void setLoadRows(List<LoadRow> loadRows) {
		this.loadRows = loadRows;
	}


	public int getDaysOfAutonomy() {
		return daysOfAutonomy;
	}


	public void setDaysOfAutonomy(int daysOfAutonomy) {
		this.daysOfAutonomy = daysOfAutonomy;
	}


	public double getInverterEfficiency() {
		return inverterEfficiency;
	}


	public void setInverterEfficiency(double inverterEfficiency) {
		this.inverterEfficiency = inverterEfficiency;
	}
	
	



	public Battery getBattery() {
		return battery;
	}


	public void setBattery(Battery battery) {
		this.battery = battery;
	}


	public Inverter getInverter() {
		return inverter;
	}


	public void setInverter(Inverter inverter) {
		this.inverter = inverter;
	}


	public PVPanel getPvPanel() {
		return pvPanel;
	}


	public void setPvPanel(PVPanel pvPanel) {
		this.pvPanel = pvPanel;
	}


	public PVController getPvController() {
		return pvController;
	}


	public void setPvController(PVController pvController) {
		this.pvController = pvController;
	}

	
	
	public double getDailyaverageload() {
		return dailyaverageload;
	}


	public void setDailyaverageload(double dailyaverageload) {
		this.dailyaverageload = dailyaverageload;
	}


	public double getTotalWatts() {
		return totalWatts;
	}


	public void setTotalWatts(double totalWatts) {
		this.totalWatts = totalWatts;
	}


	public double getWeeklyLoad() {
		return weeklyLoad;
	}


	public void setWeeklyLoad(double weeklyLoad) {
		this.weeklyLoad = weeklyLoad;
	}



	
	
	
	
}
