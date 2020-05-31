angular.module('app').service('CarrerasService', function ($http) {
    var api_url='http://localhost/funam/public/admin/';

    this.getAll = function () {
        return $http({
            method: 'GET',
//            url: 'http://localhost/funam/public/admin/users'
//            url: api_url+'admin/carreras/'
            url: api_url+'carreras/get_all'
//            url: '{{ route("login") }}'
        });
    };
    this.getAllInactives = function () {
        return $http({
            method: 'GET',
            url: api_url + 'carreras/get_all_inactives'
        });
    };
    
    //revisar parametros
    this.getById = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'carreras/get_by_id/'+id
        });
    };

        this.create = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'carreras/create',
            data: data
        });
    };
    this.update = function (data) {
        return $http({
            method: 'POST',
            url: api_url + 'carreras/update',
            data: data
        });
    };
    this.inactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'carreras/inactivate/'+id,
//            params: {
//                id: id
//            }
        });
    };
    this.reactivate = function (id) {
        return $http({
            method: 'GET',
            url: api_url + 'carreras/reactivate/'+id,
//            params: {
//                id: id
//            }
        });
    };
});


