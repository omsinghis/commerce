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
package com.renergy.energytools.business.services;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.renergy.energytools.business.entities.LoadType;
import com.renergy.energytools.business.entities.repositories.LoadTypeRepository;

@Service
public class LoadTypeService {
	
	static Logger log = Logger.getLogger(LoadTypeService.class.getName());
    
    @Autowired
    private LoadTypeRepository loadTypeRepository; 
    
    
    public LoadTypeService() {
        super();
    }
    
    
    
    public List<LoadType> findAll() {
        return this.loadTypeRepository.findAll();
    }

    public LoadType findById(final Integer id) {
        return this.loadTypeRepository.findById(id);
    }
    
}
