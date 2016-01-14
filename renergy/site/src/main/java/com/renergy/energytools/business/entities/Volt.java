package com.renergy.energytools.business.entities;


public enum Volt {

	Volts_12(12), Volts_24(24), Volts_48(48);

	public static final Volt[] ALL = { Volts_12, Volts_24, Volts_48 };

	int voltage;

	Volt(int volts) {
		voltage = volts;
	}

	public int showVolts() {
		return voltage;
	}

}
