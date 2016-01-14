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
package com.renergy.web.conversion;

import java.text.ParseException;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import com.renergy.energytools.business.entities.LoadType;
import com.renergy.energytools.business.services.LoadTypeService;

@Component
public class LoadTypeFormatter implements Formatter<LoadType> {

    @Autowired
    private LoadTypeService loadTypeService;


    public LoadTypeFormatter() {
        super();
    }

    public LoadType parse(final String text, final Locale locale) throws ParseException {
        final Integer loadTypeId = Integer.valueOf(text);
        return this.loadTypeService.findById(loadTypeId);
    }


    public String print(final LoadType object, final Locale locale) {
        return (object != null ? object.getId().toString() : "");
    }

}
