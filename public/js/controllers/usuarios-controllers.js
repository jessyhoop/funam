angular.module('app').controller('UsuariosListCtrl', function ($scope, UsuariosService) {
    $scope.usuarios = [];
    $scope.inactivate = function (id) {
        UsuariosService.inactivate(id).then(function (success) {
            showNoty(success);
            UsuariosService.getAll().then(function (response) {
                $scope.usuarios = response.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosService.getAll().then(function (response) {
        $scope.usuarios = response.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('UsuariosInactiveListCtrl', function ($scope, UsuariosService) {
    $scope.usuarios = [];
    $scope.reactivate = function (id) {
        UsuariosService.reactivate(id).then(function (success) {
            showNoty(success);
            UsuariosService.getAllInactives().then(function (success) {
                $scope.usuarios = success.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosService.getAllInactives().then(function (success) {
        $scope.usuarios = success.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('UsuarioCreateCtrl', function ($scope, UsuariosService) {
    $scope.usuario = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        UsuariosService.create($scope.usuario).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('UsuarioUpdateCtrl', function ($scope, $stateParams, UsuariosService) {
    $scope.usuario = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        UsuariosService.update($scope.usuario).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosService.getById($stateParams.id).then(function (success) {
        $scope.usuario = success.data;
    }, function (error) {
        showNoty(error);
    });
});



