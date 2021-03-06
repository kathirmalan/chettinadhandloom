var app = angular.module('chettiEcomm', 
	['ngMaterial','ngAnimate','ngMessages','ngRoute','ngStorage','jkAngularRatingStars','angularGrid']);

app.config(function($routeProvider,$locationProvider){

	$routeProvider
		.when("/",{
			templateUrl	: 	"template/home.html",
			controller	: 	"homeController"
		})
		
		.when("/journey",{
			templateUrl	: 	"template/journey.html",
			controller	: 	"journeyController"
		})

		.when("/places",{
			templateUrl	: 	"template/places.html",
			controller	: 	"placesController"
		})

		.when("/services",{
			templateUrl	: 	"template/services.html",
			controller	: 	"serviceController"
		})

		.when("/reachus",{
			templateUrl	: 	"template/contact.html",
			controller	: 	"contactCtrl"
		})

		.when("/loomspace",{
			templateUrl	: 	"template/product.html",
			controller	: 	"prodctController"
		})

		.when("/category/:album_id/:album_code",{
			templateUrl	: 	"template/category.html",
			controller	: 	"categoryController"
		})

		.when("/products/:product_id/:product_code/:product_name",{
			templateUrl	: 	"template/details.html",
			controller	: 	"detailsController"
		})

		.when("/login",{
			templateUrl	: 	"template/login.html",
			controller	: 	"loginController"
		})

		.when("/cart",{
			templateUrl	: 	"template/cart/cart.html",
			controller	: 	"cartController"
		})

		.when("/myaccount",{
			templateUrl	: 	"template/account/dashboard.html",
			controller	: 	"dashboardController"
		})
		$locationProvider.hashPrefix('');
})