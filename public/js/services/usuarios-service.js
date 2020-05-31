angular.module('app').service('UsuariosService', function ($http) {
    var api_url = 'http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
//            url: 'http://localhost/funam/public/admin/users'
//            url: api_url+'admin/usuarios/'
            url: api_url + 'usuarios/get_all'
//            url: '{{ route("login") }}'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'usuarios/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuarios/get_by_id/',
            params: {
                id: id
            }
        });
    };

    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'usuarios/create/',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'usuarios/update/',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuarios/inactivate/',
            params: {
                id: id
            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuarios/reactivate/',
            params: {
                id: id
            }
        });
    };
});


