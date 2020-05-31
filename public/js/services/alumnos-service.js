angular.module('app').service('AlumnosService', function ($http) {
    var api_url = 'http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
//            url: 'http://localhost/funam/public/admin/users'
//            url: api_url+'admin/alumnos/'
            url: api_url + 'alumnos/get_all'
//            url: '{{ route("login") }}'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'alumnos/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'alumnos/get_by_id/',
            params: {
                id: id
            }
        });
    };

    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'alumnos/create/',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'alumnos/update/',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'alumnos/inactivate/',
            params: {
                id: id
            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'alumnos/reactivate/',
            params: {
                id: id
            }
        });
    };
});


