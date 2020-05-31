angular.module('app').controller('AlumnosListCtrl', function ($scope, AlumnosService) {
    $scope.alumnos = [];
    $scope.inactivate = function (id) {
        AlumnosService.inactivate(id).then(function (success) {
            showNoty(success);
            AlumnosService.getAll().then(function (response) {
                $scope.alumnos = response.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    AlumnosService.getAll().then(function (response) {
        $scope.alumnos = response.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AlumnosInactiveListCtrl', function ($scope, AlumnosService) {
    $scope.alumnos = [];
    $scope.reactivate = function (id) {
        AlumnosService.reactivate(id).then(function (success) {
            showNoty(success);
            AlumnosService.getAllInactives().then(function (success) {
                $scope.alumnos = success.data.data;
            }, function (error) {
                showNoty(error);
            });
        }, function (error) {
            showNoty(error);
        });
    };
    AlumnosService.getAllInactives().then(function (success) {
        $scope.alumnos = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});
angular.module('app').controller('AlumnoCreateCtrl', function ($scope,$state, AlumnosService) {
    $scope.alumno = {};
    $scope.heading = 'Creación';
    $scope.submit = function () {
        AlumnosService.create($scope.alumno).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.carreras_list');
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
});
angular.module('app').controller('AlumnoUpdateCtrl', function ($scope, $state,$stateParams, AlumnosService) {
    $scope.alumno = {};
    $scope.heading = 'Actualización';
    console.log($stateParams);
    $scope.submit = function () {
        AlumnosService.update($scope.alumno).then(function (success) {
            showNoty(success);
            setTimeout(function () {
                $state.go('main.carreras_list');
            }, 2000);
        }, function (error) {
            showNoty(error);
        });
    };
    AlumnosService.getById($stateParams.id).then(function (success) {
        $scope.alumno = success.data.data;
    }, function (error) {
        showNoty(error);
    });
});



