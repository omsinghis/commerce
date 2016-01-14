package com.renergy.web.conversion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.FormatterRegistrar;
import org.springframework.format.FormatterRegistry;

public class CustomFormatterRegistrar implements FormatterRegistrar {
	
	@Autowired
    private DateFormatter dateFormatter;
   
	
	@Autowired
    private   LoadTypeFormatter loadTypeFormatter;

    // construct the registrar with other spring-beans as constructor args
    public CustomFormatterRegistrar(DateFormatter dateFormatter,LoadTypeFormatter loadTypeFormatter){
    	this.dateFormatter = dateFormatter;
    	this.loadTypeFormatter = loadTypeFormatter;
    }

    @Override
    public void registerFormatters(FormatterRegistry formatterRegistry) {
    	formatterRegistry.addFormatter(dateFormatter);
    	formatterRegistry.addFormatter(loadTypeFormatter);
    }
}
