/*
 * Copyright 2008-2012 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.renergy.controller.content;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.broadleafcommerce.core.web.controller.catalog.BroadleafCategoryController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * This class works in combination with the applicationContext-security.xml where you
 * configure the excludedRequestPatterns so that broadleaf ignore the sql based URL mapping and load the page
 * using default spring controllers  @RequestMapping
 */
@Controller
public class ContentController extends BroadleafCategoryController{
    
	   @RequestMapping({"/content/business"})
	    public String loadBusinessPage(Model model) {
	        return "/content/business";
	    }
	    
		   @RequestMapping({"/content/consumer"})
		    public String loadConsumerPage(Model model) {   
		        return "content/consumer";
		    } 
		   
		   @RequestMapping({"/content/governmentschemes"})
		    public String loadGovernmentSchemesPage(Model model) {   
		        return "content/governmentschemes";
		    }	
}
