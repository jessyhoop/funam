angular.module('app').controller('ControlessListCtrl', function ($scope, ControlessService) {
    $scope.controles = [];
    $scope.inactivate = function (id) {
        ControlessService.inactivate(id).then(function (success) {
            showNoty(success);
            ControlessService.getAll().then(function (response) {
                $scope.controles = response.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    ControlessService.getAll().then(function (response) {
        $scope.controles = response.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('ControlessInactiveListCtrl', function ($scope, ControlessService) {
    $scope.controles = [];
    $scope.reactivate = function (id) {
        ControlessService.reactivate(id).then(function (success) {
            showNoty(success);
            ControlessService.getAllInactives().then(function (success) {
                $scope.controles = success.data.controles;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    ControlessService.getAllInactives().then(function (success) {
        $scope.controles = success.data.controles;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('ControlCreateCtrl', function ($scope, ControlessService) {
    $scope.control = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        ControlessService.create($scope.control).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('ControlUpdateCtrl', function ($scope, $stateParams, ControlessService) {
    $scope.control = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        ControlessService.update($scope.control).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    ControlessService.getById($stateParams.id).then(function (success) {
        $scope.control = success.data;
    }, function (error) {
        showNoty(error);
    });
});



