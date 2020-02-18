angular.module('app').controller('GacetasListCtrl', function ($scope, GacetasService) {
    $scope.gacetas = [];
    $scope.inactivate = function (id) {
        GacetasService.inactivate(id).then(function (success) {
            showNoty(success);
            GacetasService.getAll().then(function (response) {
                $scope.gacetas = response.data.gacetas;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    GacetasService.getAll().then(function (response) {
        $scope.gacetas = response.data.gacetas;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('GacetasInactiveListCtrl', function ($scope, GacetasService) {
    $scope.gacetas = [];
    $scope.reactivate = function (id) {
        GacetasService.reactivate(id).then(function (success) {
            showNoty(success);
            GacetasService.getAllInactives().then(function (success) {
                $scope.gacetas = success.data.gacetas;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    GacetasService.getAllInactives().then(function (success) {
        $scope.gacetas = success.data.gacetas;
    }, function (error) {
        showNoty(error);
    });
});

angular.module('app').controller('GacetaCreateCtrl', function ($scope, $state, GacetasService) {
    $scope.gaceta = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        GacetasService.create($scope.gaceta).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go("gacetas_list");
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('GacetaUpdateCtrl', function ($scope, $state, $stateParams, GacetasService) {
    $scope.gaceta = {};
    $scope.heading = 'Actualización';
    $scope.submit = function () {
        GacetasService.update($scope.gaceta).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go("gacetas_list");
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    GacetasService.getById($stateParams.id).then(function (success) {
        $scope.gaceta = success.data.gaceta;
        console.log($scope.gaceta);
    }, function (error) {
        showNoty(error);
    });
});


