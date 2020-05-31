angular.module('app').controller('CarrerasListCtrl', function ($scope, CarrerasService) {
    $scope.carreras = [];

    $scope.inactivate =
            function (id) {
                CarrerasService.inactivate(id).then(function (success) {
                    showNoty(success);
                    CarrerasService.getAll().then(function (response) {
                        $scope.carreras = response.data.data;

                    }, function (error) {
                        showNoty(error);
                    });
                }, function (error) {
                    showNoty(error);
                });
            };

    CarrerasService.getAll().then(function (response) {
        $scope.carreras = response.data.data;
//        console.log(response);
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('CarrerasInactiveListCtrl', function ($scope, CarrerasService) {
    $scope.carreras = [];
    $scope.reactivate = function (id) {
        CarrerasService.reactivate(id).then(function (success) {
            showNoty(success);
            CarrerasService.getAllInactives().then(function (success) {
                $scope.carreras = success.data.data ;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    CarrerasService.getAllInactives().then(function (success) {
        $scope.carreras = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('CarreraCreateCtrl', function ($scope, $state, CarrerasService) {
    $scope.carrera = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        CarrerasService.create($scope.carrera).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.carreras_list');
            }, 2000);

        }, function (error)
        {
            showNotyError(error, error.data.mensaje.carrera);
        });
    };
});
angular.module('app').controller('CarreraUpdateCtrl', function ($scope, $state, $stateParams, CarrerasService) {
    $scope.carrera = {};
    $scope.heading = 'Actualización';
//    console.log($stateParams);
    $scope.submit = function () {
        CarrerasService.update($scope.carrera).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.carreras_list');
            }, 2000);
        }, function (error) {
            showNotyError(error, error.data.mensaje.carrera);
        });
    };
    CarrerasService.getById($stateParams.id).then(function (success) {
        $scope.carrera = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});



