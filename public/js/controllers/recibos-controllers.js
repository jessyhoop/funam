angular.module('app').controller('RecibosListCtrl', function ($scope, RecibosService) {
    $scope.recibos = [];
    $scope.inactivate = function (id) {
        RecibosService.inactivate(id).then(function (success) {
            showNoty(success);
            RecibosService.getAll().then(function (response) {
                $scope.recibos = response.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    RecibosService.getAll().then(function (response) {
        $scope.recibos = response.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('RecibosInactiveListCtrl', function ($scope, RecibosService) {
    $scope.recibos = [];
    $scope.reactivate = function (id) {
        RecibosService.reactivate(id).then(function (success) {
            showNoty(success);
            RecibosService.getAllInactives().then(function (success) {
                $scope.recibos = success.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    RecibosService.getAllInactives().then(function (success) {
        $scope.recibos = success.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('ReciboCreateCtrl', function ($scope, RecibosService) {
    $scope.recibo = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        RecibosService.create($scope.recibo).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('ReciboUpdateCtrl', function ($scope, $stateParams, RecibosService) {
    $scope.recibo = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        RecibosService.update($scope.recibo).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    RecibosService.getById($stateParams.id).then(function (success) {
        $scope.recibo = success.data;
    }, function (error) {
        showNoty(error);
    });
});



