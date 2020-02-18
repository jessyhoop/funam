angular.module('app').service('AutoresService', function ($http) {

    this.getAll = function () {
        return $http({
            method: 'GET',
            url: api_url + 'autores/get_all'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'autores/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'autores/get_by_id/',
            params: {
                id: id
            }
        });
    };

        this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'autores/create/',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'autores/update/',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'autores/inactivate/',
            params: {
                id: id
            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'autores/reactivate/',
            params: {
                id: id
            }
        });
    };
});


