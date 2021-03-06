package com.renergy.energytools.business.entities;

public class Battery {
	private float dod=50;//in %
	private Volt dcVoltage=Volt.Volts_48;
	private Volt manufacturerVoltage=Volt.Volts_24;
	private double unitAh=20;
	private double batteryBankNeeded=0.0;
	private float efficiency=80; // in %
	private double ahCapacity=0.0;
	private double inParallel=0.0;
	private double inSeries=0.0;
	private double totalCount=0.0;
	private double costOfBattery=0.0;
	//variables added to make the site2BatterySizing html work
	private double wattHrsNeededPerDay=0.0;
	private int daysOfAutonomy=4;
	private double tempMultiplier=1.04;
	private String amphoursLabel1 ="";
	private String amphoursLabel2 ="";
	private String amphoursLabel3 ="";
	private String amphoursLabel4 ="";
	
			
	

	
	public float getDod() {
		return dod;
	}
	public void setDod(float dod) {
		this.dod = dod;
	}
	public Volt getDcVoltage() {
		return dcVoltage;
	}
	public void setDcVoltage(Volt dcVoltage) {
		this.dcVoltage = dcVoltage;
	}
	public Volt getManufacturerVoltage() {
		return manufacturerVoltage;
	}
	public void setManufacturerVoltage(Volt manufacturerVoltage) {
		this.manufacturerVoltage = manufacturerVoltage;
	}

	public float getEfficiency() {
		return efficiency;
	}
	public void setEfficiency(float efficiency) {
		this.efficiency = efficiency;
	}
	public double getAhCapacity() {
		return ahCapacity;
	}
	public void setAhCapacity(double ahCapacity) {
		this.ahCapacity = ahCapacity;
	}

	
	public double getInParallel() {
		return inParallel;
	}
	public void setInParallel(double inParallel) {
		this.inParallel = inParallel;
	}
	public double getInSeries() {
		return inSeries;
	}
	public void setInSeries(double inSeries) {
		this.inSeries = inSeries;
	}

	
	public double getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(double totalCount) {
		this.totalCount = totalCount;
	}
	public double getCostOfBattery() {
		return costOfBattery;
	}
	public void setCostOfBattery(double costOfBattery) {
		this.costOfBattery = costOfBattery;
	}

	
	public double getBatteryBankNeeded() {
		return batteryBankNeeded;
	}
	public void setBatteryBankNeeded(double batteryBankNeeded) {
		this.batteryBankNeeded = batteryBankNeeded;
	}
		
	public double getUnitAh() {
		return unitAh;
	}
	public void setUnitAh(double unitAh) {
		this.unitAh = unitAh;
	}
	
		
	public double getWattHrsNeededPerDay() {
		return wattHrsNeededPerDay;
	}
	public void setWattHrsNeededPerDay(double wattHrsNeededPerDay) {
		this.wattHrsNeededPerDay = wattHrsNeededPerDay;
	}
	
	
	public int getDaysOfAutonomy() {
		return daysOfAutonomy;
	}
	public void setDaysOfAutonomy(int daysOfAutonomy) {
		this.daysOfAutonomy = daysOfAutonomy;
	}
	public double getTempMultiplier() {
		return tempMultiplier;
	}
	public void setTempMultiplier(double tempMultiplier) {
		this.tempMultiplier = tempMultiplier;
	}
	
	
	public String getAmphoursLabel1() {
		return amphoursLabel1;
	}
	public void setAmphoursLabel1(String amphoursLabel1) {
		this.amphoursLabel1 = amphoursLabel1;
	}
	public String getAmphoursLabel2() {
		return amphoursLabel2;
	}
	public void setAmphoursLabel2(String amphoursLabel2) {
		this.amphoursLabel2 = amphoursLabel2;
	}
	public String getAmphoursLabel3() {
		return amphoursLabel3;
	}
	public void setAmphoursLabel3(String amphoursLabel3) {
		this.amphoursLabel3 = amphoursLabel3;
	}
	public String getAmphoursLabel4() {
		return amphoursLabel4;
	}
	public void setAmphoursLabel4(String amphoursLabel4) {
		this.amphoursLabel4 = amphoursLabel4;
	}
	@Override
	public String toString() {
		return "Battery [totalCount=" + totalCount + ", wattHrsNeededPerDay=" + wattHrsNeededPerDay
				+ ", tempMultiplier=" + tempMultiplier + ", amphoursLabel1=" + amphoursLabel1 + ", amphoursLabel2="
				+ amphoursLabel2 + ", amphoursLabel3=" + amphoursLabel3 + ", amphoursLabel4=" + amphoursLabel4 + "]";
	}


}
