angular.module('heroservices', ['ngResource'])
.factory('AccountService', function ($resource) {
        $resource(appContext + '/account', {}, {
            list: { method: 'GET', isArray: true}
        });
    })
.factory('AccountService2', function ($resource) {
        $resource(appContext + '/account', {}, {
            list: { method: 'GET', isArray: true}
        });
    })

;