angular.module('app').service('UsuariosSalasService', function ($http) {
    var api_url = 'http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
//            url: 'http://localhost/funam/public/admin/users'
//            url: api_url+'admin/usuariosSalas/'
            url: api_url + 'usuariosSalas/get_all'
//            url: '{{ route("login") }}'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'usuariosSalas/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuariosSalas/get_by_id/',
            params: {
                id: id
            }
        });
    };

    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'usuariosSalas/create/',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'usuariosSalas/update/',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuariosSalas/inactivate/',
            params: {
                id: id
            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'usuariosSalas/reactivate/',
            params: {
                id: id
            }
        });
    };
});


