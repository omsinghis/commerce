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
package com.renergy.energytools.business.entities.repositories;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.renergy.energytools.business.entities.LoadType;



@Repository
public class LoadTypeRepository {

    private final Map<Integer,LoadType> loadTypeById;
    
    
    
    public LoadTypeRepository() {
        
        super();
        
        this.loadTypeById = new LinkedHashMap<Integer,LoadType>();
        
        final LoadType var1 = new LoadType();
        var1.setId(Integer.valueOf(1));
        var1.setName("AC Device");
        this.loadTypeById.put(var1.getId(), var1);
        
        final LoadType var2 = new LoadType();
        var2.setId(Integer.valueOf(2));
        var2.setName("DC Device");
        this.loadTypeById.put(var2.getId(), var2);
                
    }
    
    
    
    public List<LoadType> findAll() {
        return new ArrayList<LoadType>(this.loadTypeById.values());
    }
    
    public LoadType findById(final Integer id) {
        return this.loadTypeById.get(id);
    }
    
    
    
}
