package com.renergy.energytools.business.entities;

public class Panel {


	private double wattHrsNeededPerDay=0.0;
	private int solarArrayVoltage =24; //volts
	private double sunshineHoursPerDay =4.5; //hrs
	private double solarPanelMaxPowerCurrent=8.1; //IMMP
	private double solarPanelMaxPowerVoltage=36.4; //UMPP
	
	private double pannelInParellel=0;
	private double pannelInSeries=0;
	private double totalPannels=0;
	private double totalCost=0.0;
	
		
	
	public double getWattHrsNeededPerDay() {
		return wattHrsNeededPerDay;
	}
	public void setWattHrsNeededPerDay(double wattHrsNeededPerDay) {
		this.wattHrsNeededPerDay = wattHrsNeededPerDay;
	}
	public int getSolarArrayVoltage() {
		return solarArrayVoltage;
	}
	public void setSolarArrayVoltage(int solarArrayVoltage) {
		this.solarArrayVoltage = solarArrayVoltage;
	}
	public double getSunshineHoursPerDay() {
		return sunshineHoursPerDay;
	}
	public void setSunshineHoursPerDay(double sunshineHoursPerDay) {
		this.sunshineHoursPerDay = sunshineHoursPerDay;
	}
	public double getSolarPanelMaxPowerCurrent() {
		return solarPanelMaxPowerCurrent;
	}
	public void setSolarPanelMaxPowerCurrent(double solarPanelMaxPowerCurrent) {
		this.solarPanelMaxPowerCurrent = solarPanelMaxPowerCurrent;
	}
	public double getSolarPanelMaxPowerVoltage() {
		return solarPanelMaxPowerVoltage;
	}
	public void setSolarPanelMaxPowerVoltage(double solarPanelMaxPowerVoltage) {
		this.solarPanelMaxPowerVoltage = solarPanelMaxPowerVoltage;
	}
	public double getPannelInParellel() {
		return pannelInParellel;
	}
	public void setPannelInParellel(double pannelInParellel) {
		this.pannelInParellel = pannelInParellel;
	}
	public double getPannelInSeries() {
		return pannelInSeries;
	}
	public void setPannelInSeries(double pannelInSeries) {
		this.pannelInSeries = pannelInSeries;
	}
	public double getTotalPannels() {
		return totalPannels;
	}
	public void setTotalPannels(double totalPannels) {
		this.totalPannels = totalPannels;
	}
	public double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	
	@Override
	public String toString() {
		return "PVPanel [solarArrayVoltage=" + solarArrayVoltage + ", sunshineHoursPerDay=" + sunshineHoursPerDay
				+ ", solarPanelMaxPowerCurrent=" + solarPanelMaxPowerCurrent + ", solarPanelMaxPowerVoltage="
				+ solarPanelMaxPowerVoltage + ", pannelInParellel=" + pannelInParellel + ", pannelInSeries="
				+ pannelInSeries + ", totalPannels=" + totalPannels + ", totalCost=" + totalCost + "]";
	}
	

	
	
}
