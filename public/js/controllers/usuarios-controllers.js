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
        console.log(response);
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AutoresInactiveListCtrl', function ($scope, UsuariosService) {
    $scope.usuarios = [];
    $scope.reactivate = function (id) {
        UsuariosService.reactivate(id).then(function (success) {
            showNoty(success);
            UsuariosService.getAllInactives().then(function (success) {
                $scope.usuarios = success.data.usuarios;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosService.getAllInactives().then(function (success) {
        $scope.usuarios = success.data.usuarios;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AutorCreateCtrl', function ($scope, UsuariosService) {
    $scope.autor = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        UsuariosService.create($scope.autor).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('AutorUpdateCtrl', function ($scope, $stateParams, UsuariosService) {
    $scope.autor = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        UsuariosService.update($scope.autor).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    UsuariosService.getById($stateParams.id).then(function (success) {
        $scope.autor = success.data.autor;
    }, function (error) {
        showNoty(error);
    });
});



