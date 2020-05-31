angular.module('app').service('RolesService', function ($http) {
    var api_url = 'http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
            url: api_url + 'roles/get_all'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'roles/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'roles/get_by_id/'+id,
//            params: {
//                id: id
//            }
        });
    };

    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'roles/create',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'roles/update',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'roles/inactivate/'+id,
//            params: {
//                id: id
//            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'roles/reactivate/'+id,
//            params: {
//                id: id
//            }
        });
    };
});


