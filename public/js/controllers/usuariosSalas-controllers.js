angular.module('app').controller('UsuariosSalasListCtrl', function ($scope, UsuariosSalasService) {
    $scope.usuariosSalas = [];
    $scope.inactivate = function (id) {
        UsuariosSalasService.inactivate(id).then(function (success) {
            showNoty(success);
            UsuariosSalasService.getAll().then(function (response) {
                $scope.usuariosSalas = response.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosSalasService.getAll().then(function (response) {
        $scope.usuariosSalas = response.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('UsuariosSalasInactiveListCtrl', function ($scope, UsuariosSalasService) {
    $scope.usuariosSalas = [];
    $scope.reactivate = function (id) {
        UsuariosSalasService.reactivate(id).then(function (success) {
            showNoty(success);
            UsuariosSalasService.getAllInactives().then(function (success) {
                $scope.usuariosSalas = success.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosSalasService.getAllInactives().then(function (success) {
        $scope.usuariosSalas = success.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('UsuarioSalasCreateCtrl', function ($scope, UsuariosSalasService) {
    $scope.usuarioSalas = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        UsuariosSalasService.create($scope.usuarioSalas).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('UsuarioSalasUpdateCtrl', function ($scope, $stateParams, UsuariosSalasService) {
    $scope.usuarioSalas = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        UsuariosSalasService.update($scope.usuarioSalas).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosSalasService.getById($stateParams.id).then(function (success) {
        $scope.usuarioSalas = success.data;
    }, function (error) {
        showNoty(error);
    });
});



