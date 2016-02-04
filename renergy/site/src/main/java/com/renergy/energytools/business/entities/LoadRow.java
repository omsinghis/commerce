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
package com.renergy.energytools.business.entities;



public class LoadRow {

    private String loadName = null;
    private Integer loadQuantity = null;
    private LoadType loadType=null;
    private double hrsPerDay=0.00;
    private Integer daysPerWeek=null;
    private Integer loadWatts=null;
    private double wattshraverage=0.00;
    
 
    public LoadRow(String loadName, Integer loadQuantity,Integer loadWatts,double hrsPerDay,Integer daysPerWeek) {
        super();
        this.loadName=loadName;
        this.loadQuantity=loadQuantity;
        this.loadWatts=loadWatts;
        this.hrsPerDay=hrsPerDay;
        this.daysPerWeek=daysPerWeek;
    }
    
    public LoadRow(){};

  

	public String getLoadName() {
		return loadName;
	}

	public void setLoadName(String loadName) {
		this.loadName = loadName;
	}

	public Integer getLoadQuantity() {
		return loadQuantity;
	}


	public void setLoadQuantity(Integer loadQuantity) {
		this.loadQuantity = loadQuantity;
	}


	public LoadType getLoadType() {
		return loadType;
	}

	public void setLoadType(LoadType loadType) {
		this.loadType = loadType;
	}

		public Integer getLoadWatts() {
		return loadWatts;
	}


	public void setLoadWatts(Integer loadWatts) {
		this.loadWatts = loadWatts;
	}


	public double getHrsPerDay() {
		return hrsPerDay;
	}


	public void setHrsPerDay(double hrsPerDay) {
		this.hrsPerDay = hrsPerDay;
	}


	public Integer getDaysPerWeek() {
		return daysPerWeek;
	}


	public void setDaysPerWeek(Integer daysPerWeek) {
		this.daysPerWeek = daysPerWeek;
	}

	public double getWattshraverage() {
		return wattshraverage;
	}

	public void setWattshraverage(double wattshraverage) {
		this.wattshraverage = wattshraverage;
	}




}
