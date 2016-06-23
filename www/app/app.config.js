(function() {
	angular
		.module('app')
		.config(configure);

	configure.$inject = ['$stateProvider', '$urlRouterProvider'];

	function configure($stateProvider, $urlRouterProvider) {

		$urlRouterProvider.otherwise("/");

		$stateProvider
			.state('home', {
				url: "/",
				templateUrl: "app/templates/home.html",
				controller: "homeController",
				controllerAs: "vm"
			});

	}
})();