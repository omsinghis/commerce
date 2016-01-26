package com.renergy.api.wrapper;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.broadleafcommerce.core.catalog.domain.Product;
import org.broadleafcommerce.core.catalog.domain.ProductImpl;
import org.broadleafcommerce.core.web.api.wrapper.ProductWrapper;

@XmlRootElement(name ="extendProduct")
public class ExtendProductWrapper extends ProductWrapper {
 

@XmlElement
private String productUrl;
 

@Override
public void wrapDetails(Product model,HttpServletRequest request) {
// First, call the super method to get the default behavior
super.wrapDetails(model, request);
// Next, cast the product passed in to ExtendedProduct and use it
//to set the Extended Entities
if(model instanceof ProductImpl) {
if(((ProductImpl) model).getUrl()!=null) {
this.productUrl =((ProductImpl) model).getUrl();
}
}
}
}