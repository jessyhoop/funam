angular.module('app').controller('SalasListCtrl', function ($scope, SalasService) {
    $scope.salas = [];
    $scope.inactivate = function (id) {
        SalasService.inactivate(id).then(function (success) {
            showNoty(success);
            SalasService.getAll().then(function (response) {
                $scope.salas = response.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    SalasService.getAll().then(function (response) {
        $scope.salas = response.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('SalasInactiveListCtrl', function ($scope, SalasService) {
    $scope.salas = [];
    $scope.reactivate = function (id) {
        SalasService.reactivate(id).then(function (success) {
            showNoty(success);
            SalasService.getAllInactives().then(function (success) {
                $scope.salas = success.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    SalasService.getAllInactives().then(function (success) {
        $scope.salas = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('SalaCreateCtrl', function ($scope,$state,SalasService) {
    $scope.sala = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        SalasService.create($scope.sala).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.salas_list');
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('SalaUpdateCtrl', function ($scope,$state, $stateParams, SalasService) {
    $scope.sala = {};
    $scope.heading = 'Actualización';
    $scope.submit = function () {
        SalasService.update($scope.sala).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.salas_list');
            }, 2000);
        }, function (error) {
            showNotyError(error, error.data.mensaje.sala);
        });
    };
    SalasService.getById($stateParams.id).then(function (success) {
        $scope.sala = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});



