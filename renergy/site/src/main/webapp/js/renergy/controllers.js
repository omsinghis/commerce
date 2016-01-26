app.controller('consumerController', function($scope,$http){
var categoryID = 0;
var subCategories = [];
var featuredProducts = [];
var counter  = 0;
$scope.subCategories = null;
$scope.consumerCategoryProducts = null;
	 $http({
		        url: "/api/v1/catalog/categories?name=Solar Consumers",
		        headers : {
		            'Content-Type' : 'application/json'
		        },
		        data : '',
		        method: "GET"
		    }).then(function(response) {
		    console.log(response);
		    	if(response.data!=null && response.data.category!=null && response.data.category.length!=0){
		    	categoryID = response.data.category[0].id;
		    	$http({
		    	url: "/api/v1/catalog/category/" + categoryID + "/categories",
		        headers : {
		            'Content-Type' : 'application/json'
		        },
		        data : '',
		        method: "GET"
		    }).then(function(response) {
		    	var categoriesList = response.data.category;
		    	for(cat in categoriesList){
			    	$http({
			        url: "/api/v1/catalog/category/"+ categoriesList[cat].id,
			        headers : {
			            'Content-Type' : 'application/json'
			        },
			        data : '',
			        method: "GET"
				    }).then(function(response) {
				    	subCategories.push(response.data);
				    	$scope.subCategories = subCategories;
				    	counter ++;
				    	if(counter== categoriesList.length){
				    		$http({
						    	url: "/api/v1/catalog/search/category/" + categoryID + "?q=solar&pageSize=9",
						        headers : {
						            'Content-Type' : 'application/json'
						        },
						        data : '',
						        method: "GET"
						    }).then(function(response) {   
						    console.log(response);
						    var productsList = response.data.product;
						     for(product in productsList){
					    	$http({
					        url: "/api/v1/catalog/product/"+ productsList[product].id,
					        headers : {
					            'Content-Type' : 'application/json'
					        },
					        data : '',
					        method: "GET"
						    }).then(function(response) {
						   // console.log(response.data);
						    featuredProducts.push(response.data);
						    $scope.consumerCategoryProducts = featuredProducts;
						    });
						    }						 
						    });
				    	}
				    });
				    
				   }
			
		    });
		    	}else{
		    		$scope.subCategories = null;
		    		$scope.consumerCategoryProducts = null;
		    	}
		    	
		    });
		    
		  
		    
		   /*  $http({
		        url: "/api/v1/catalog/product/"+ 1005 + "/related-products/crosssale",
		        headers : {
		            'Content-Type' : 'application/json'
		        },
		        data : '',
		        method: "GET"
		    }).then(function(response) {
		    	console.log(response);
		    }); */
});