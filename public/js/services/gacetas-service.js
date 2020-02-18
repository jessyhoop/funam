angular.module('app').service('GacetasService', function ($http) {
    this.getAll = function () {
        return $http({
            method: 'GET',
            url: api_url + 'gacetas/get_all'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'gacetas/get_all_inactives'
        });
    };
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'gacetas/get_by_id/',
            params: {
                id: id
            }
        });
    };
    this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'gacetas/create/',
            data: data
        });
    };

    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'gacetas/update/',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'gacetas/inactivate/',
            params: {
                id: id
            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'gacetas/reactivate/',
            params: {
                id: id
            }
        });
    };
});


