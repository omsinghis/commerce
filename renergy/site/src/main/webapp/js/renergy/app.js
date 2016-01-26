var app = angular.module('renergyModule',[]);

app.filter('limitBeginFilter', function() {
        return function(items, begin, end) {                                     
        	if(items!=null){
        		return items.slice( begin, end);
        	}
        }
    });