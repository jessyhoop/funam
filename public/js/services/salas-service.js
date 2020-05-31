angular.module('app').service('SalasService', function ($http) {
    var api_url = 'http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
//            url: 'http://localhost/funam/public/admin/users'
//            url: api_url+'admin/salas/'
            url: api_url + 'salas/get_all'
//            url: '{{ route("login") }}'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'salas/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'salas/get_by_id/' + id
        });
    };

    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'salas/create',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'salas/update',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'salas/inactivate/' + id,
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'salas/reactivate/' + id,
        });
    };
});


