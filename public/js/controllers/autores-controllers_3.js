angular.module('app').controller('AutoresListCtrl', function ($scope, AutoresService) {
    $scope.autores = [];
    $scope.inactivate = function (id) {
        AutoresService.inactivate(id).then(function (success) {
            showNoty(success);
            AutoresService.getAll().then(function (response) {
                $scope.autores = response.data.autores;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    AutoresService.getAll().then(function (response) {
        $scope.autores = response.data.autores;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AutoresInactiveListCtrl', function ($scope, AutoresService) {
    $scope.autores = [];
    $scope.reactivate = function (id) {
        AutoresService.reactivate(id).then(function (success) {
            showNoty(success);
            AutoresService.getAllInactives().then(function (success) {
                $scope.autores = success.data.autores;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    AutoresService.getAllInactives().then(function (success) {
        $scope.autores = success.data.autores;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AutorCreateCtrl', function ($scope, AutoresService) {
    $scope.autor = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        AutoresService.create($scope.autor).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('AutorUpdateCtrl', function ($scope, $stateParams, AutoresService) {
    $scope.autor = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        AutoresService.update($scope.autor).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                window.location.href = '/difusion/';
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    AutoresService.getById($stateParams.id).then(function (success) {
        $scope.autor = success.data.autor;
    }, function (error) {
        showNoty(error);
    });
});



