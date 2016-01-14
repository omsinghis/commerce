package com.renergy.energytools.business.entities;

public class PVPanel {

	private double peakSunAvailability=5.0;//hrs
	private float ampPerModule=3;
	private float voltagePerModule=12;
	private double pannelInParellel=0;
	private double pannelInSeries=0;
	private double totalPannels=0;
	private double totalCost=0.0;
	
	
	
	public double getPeakSunAvailability() {
		return peakSunAvailability;
	}
	public void setPeakSunAvailability(double peakSunAvailability) {
		this.peakSunAvailability = peakSunAvailability;
	}
	
	
	
	public float getAmpPerModule() {
		return ampPerModule;
	}
	public void setAmpPerModule(float ampPerModule) {
		this.ampPerModule = ampPerModule;
	}
	public float getVoltagePerModule() {
		return voltagePerModule;
	}
	public void setVoltagePerModule(float voltagePerModule) {
		this.voltagePerModule = voltagePerModule;
	}
	public void setPannelInParellel(int pannelInParellel) {
		this.pannelInParellel = pannelInParellel;
	}
	public void setPannelInSeries(int pannelInSeries) {
		this.pannelInSeries = pannelInSeries;
	}
	public void setTotalPannels(int totalPannels) {
		this.totalPannels = totalPannels;
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
		return "PVPanel [peakSunAvailability=" + peakSunAvailability + ", ampPerModule=" + ampPerModule
				+ ", voltagePerModule=" + voltagePerModule + ", pannelInParellel=" + pannelInParellel
				+ ", pannelInSeries=" + pannelInSeries + ", totalPannels=" + totalPannels + ", totalCost=" + totalCost
				+ "]";
	}	
	
}
