jQuery.browser = {};
angular.module('hero', ['heroservices']).config(function ($routeProvider) {
    $routeProvider.

        when('/account', {templateUrl:appContext+'/views/account/list.html', controller:AccountController})

}).run(function ($rootScope, $route) {
        $rootScope.layoutPartial = function (partialName) {
            return $route.current[partialName]
        };
    });