angular.module('app').controller('RolesListCtrl', function ($scope, RolesService) {
    $scope.roles = [];
    $scope.inactivate = function (id) {
        RolesService.inactivate(id).then(function (success) {
            showNoty(success);
            RolesService.getAll().then(function (response) {
                $scope.roles = response.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    RolesService.getAll().then(function (response) {
        $scope.roles = response.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('RolesInactiveListCtrl', function ($scope, RolesService) {
    $scope.roles = [];
    $scope.reactivate = function (id) {
        RolesService.reactivate(id).then(function (success) {
            showNoty(success);
            RolesService.getAllInactives().then(function (success) {
                $scope.roles = success.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    RolesService.getAllInactives().then(function (success) {
        $scope.roles = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});

angular.module('app').controller('RolCreateCtrl', function ($scope, $state, RolesService) {
    $scope.rol = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        RolesService.create($scope.rol).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go("main.roles_list");
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('RolUpdateCtrl', function ($scope, $state, $stateParams, RolesService) {
    $scope.rol = {};
    $scope.heading = 'Actualización';
    $scope.submit = function () {
        RolesService.update($scope.rol).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go("main.roles_list");
            }, 2000);
        }, function (error) {
            showNoty(error);
//            showNotyError(error, error.data.mensaje);
        });
    };
    RolesService.getById($stateParams.id).then(function (success) {
        $scope.rol = success.data.data;
        console.log($scope.rol);
    }, function (error) {
        showNoty(error);
    });
});


