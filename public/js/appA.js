/* global base_url  gitttttttttttttt, angular */
var base_url = 'http://localhost/funam/public/';
//angular.module('app', ["ui.router"]);
angular.module('app', [
    "ui.router",
    'oc.lazyLoad'
]);
angular.module('app').config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/inicio');
//    http://localhost/funam/public/admin/home#!/carreras-list
            $stateProvider.state('main', {//nombre
                templateUrl: base_url + 'templates/menu.html'
            });
//    --------------------C A R R E R A S----------------------------
    $stateProvider.state('main.carreras_list', {//nombre del e
        url: '/carreras-list',
        templateUrl: base_url + 'templates/carreras/carreras-list.html',
        controller: 'CarrerasListCtrl',
        resolve: {
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.carreras_inactive_list', {
        url: '/carreras-inactive-list',
        templateUrl: base_url + 'templates/carreras/carreras-inactive-list.html',
        controller: 'CarrerasInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.carrera_create', {
        url: '/crear-carrera',
        templateUrl: base_url + 'templates/carreras/carrera-form.html',
        controller: 'CarreraCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.carrera_update', {
        url: '/actualizar-carrera/:id',
        templateUrl: base_url + 'templates/carreras/carrera-form.html',
        controller: 'CarreraUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
//--------------------A L U M N O S-------------------------------
    $stateProvider.state('main.alumnos_list', {
        url: '/alumnos-list',
        templateUrl: base_url + 'templates/alumnos/alumnos-list.html',
        controller: 'AlumnosListCtrl',
         resolve: {
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.alumnos_inactive_list', {
        url: '/alumnos-inactive-list',
        templateUrl: base_url + 'templates/alumnos/alumnos-inactive-list.html',
        controller: 'AlumnosInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.alumno_create', {
        url: '/crear-alumno',
        templateUrl: base_url + 'templates/alumnos/alumno-form.html',
        controller: 'AlumnoCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.alumno_update', {
        url: '/actualizar-alumno/:id',
        templateUrl: base_url + 'templates/alumnos/alumno-form.html',
        controller: 'AlumnoUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
//---------------------------C O N T R O L E S-------------------------------
    $stateProvider.state('main.controles_list', {
        url: '/controles-list',
        templateUrl: base_url + 'templates/controles/controles-list.html',
        controller: 'ControlesListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.controles_inactive_list', {
        url: '/controles-inactive-list',
        templateUrl: base_url + 'templates/controles/controles-inactive-list.html',
        controller: 'ControlesInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.control_create', {
        url: '/crear-control',
        templateUrl: base_url + 'templates/controles/control-form.html',
        controller: 'ControlCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.control_update', {
        url: '/actualizar-control/:id',
        templateUrl: base_url + 'templates/controles/control-form.html',
        controller: 'ControlUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
//---------------------------R E C I B O S -------------------------------
    $stateProvider.state('main.recibos_list', {
        url: '/recibos-list',
        templateUrl: base_url + 'templates/recibos/recibos-list.html',
        controller: 'RecibosListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.recibos_inactive_list', {
        url: '/recibos-inactive-list',
        templateUrl: base_url + 'templates/recibos/recibos-inactive-list.html',
        controller: 'RecibosInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.recibo_create', {
        url: '/crear-recibo',
        templateUrl: base_url + 'templates/recibos/recibo-form.html',
        controller: 'ReciboCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.recibo_update', {
        url: '/actualizar-recibo/:id',
        templateUrl: base_url + 'templates/recibos/recibo-form.html',
        controller: 'ReciboUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
//---------------------------R O L E S -------------------------------
    $stateProvider.state('main.roles_list', {
        url: '/roles-list',
        templateUrl: base_url + 'templates/roles/roles-list.html',
        controller: 'RolesListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/roles-controllers.js',
                    base_url + 'js/services/roles-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.roles_inactive_list', {
        url: '/roles-inactive-list',
        templateUrl: base_url + 'templates/roles/roles-inactive-list.html',
        controller: 'RolesInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/roles-controllers.js',
                    base_url + 'js/services/roles-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.rol_create', {
        url: '/crear-rol',
        templateUrl: base_url + 'templates/roles/rol-form.html',
        controller: 'RolCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/roles-controllers.js',
                    base_url + 'js/services/roles-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.rol_update', {
        url: '/actualizar-rol/:id',
        templateUrl: base_url + 'templates/roles/rol-form.html',
        controller: 'RolUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/roles-controllers.js',
                    base_url + 'js/services/roles-service.js'
                ]);
            }
        }
    });
//---------------------------S A L A S -------------------------------
    $stateProvider.state('main.salas_list', {
        url: '/salas-list',
        templateUrl: base_url + 'templates/salas/salas-list.html',
        controller: 'SalasListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/salas-controllers.js',
                    base_url + 'js/services/salas-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.salas_inactive_list', {
        url: '/salas-inactive-list',
        templateUrl: base_url + 'templates/salas/salas-inactive-list.html',
        controller: 'SalasInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/salas-controllers.js',
                    base_url + 'js/services/salas-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.sala_create', {
        url: '/crear-sala',
        templateUrl: base_url + 'templates/salas/sala-form.html',
        controller: 'SalaCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/salas-controllers.js',
                    base_url + 'js/services/salas-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.sala_update', {
        url: '/actualizar-sala/:id',
        templateUrl: base_url + 'templates/salas/sala-form.html',
        controller: 'SalaUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/salas-controllers.js',
                    base_url + 'js/services/salas-service.js'
                ]);
            }
        }
    });
//---------------------------U S U A R I O S -------------------------------
    $stateProvider.state('main.usuarios_list', {
        url: '/usuarios-list',
        templateUrl: base_url + 'templates/usuarios/usuarios-list.html',
        controller: 'UsuariosListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/usuarios-controllers.js',
                    base_url + 'js/services/usuarios-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuarios_inactive_list', {
        url: '/usuarios-inactive-list',
        templateUrl: base_url + 'templates/usuarios/usuarios-inactive-list.html',
        controller: 'UsuariosInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuario_create', {
        url: '/crear-usuario',
        templateUrl: base_url + 'templates/usuarios/usuario-form.html',
        controller: 'UsuarioCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuario_update', {
        url: '/actualizar-usuario/:id',
        templateUrl: base_url + 'templates/usuarios/usuario-form.html',
        controller: 'UsuarioUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
//---------------------------U S U A R I O S - S A L A-------------------------------
    $stateProvider.state('main.usuariosSalas_list', {
        url: '/usuariosSalas-list',
        templateUrl: base_url + 'templates/usuariosSalas/usuariosSalas-list.html',
        controller: 'UsuariosSalasListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuariosSalas_inactive_list', {
        url: '/usuariosSalas-inactive-list',
        templateUrl: base_url + 'templates/usuariosSalas/usuariosSalas-inactive-list.html',
        controller: 'UsuariosSalasInactiveListCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuarioSalas_create', {
        url: '/crear-usuarioSalas',
        templateUrl: base_url + 'templates/usuariosSalas/usuarioSalas-form.html',
        controller: 'UsuarioSalasCreateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });
    $stateProvider.state('main.usuarioSalas_update', {
        url: '/actualizar-usuarioSalas/:id',
        templateUrl: base_url + 'templates/usuariosSalas/usuarioSalas-form.html',
        controller: 'UsuarioSalasUpdateCtrl',
         resolve: {// Any property in resolve should return a promise and is executed before the view is loaded
            loadMyCtrl: function ($ocLazyLoad) {
                return $ocLazyLoad.load([
                    base_url + 'js/controllers/carreras-controllers.js',
                    base_url + 'js/services/carreras-service.js'
                ]);
            }
        }
    });

});
function showNotyError(response, mensaje_error) {
    if (response.status === 422) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'error',
            text: mensaje_error,
            timeout: 3000
        }).show();
    }
}
function showNoty(response) {
    if (response.status === 200) {//http created
//    if (response.status === 201   ) {//http created
        new Noty({
            theme: 'metroui',
            type: 'success',
            text: response.data.mensaje,
            timeout: 3000
        }).show();
    }
    if (response.status === 400) {//http bad request
        new Noty({
            theme: 'metroui',
            type: 'error',
            text: response.data.mensaje,
            timeout: 3000
        }).show();
    }
    if (response.status === 404) {//http not found
        new Noty({
            theme: 'metroui',
            type: 'error',
            text: response.data.mensaje,
            timeout: 3000
        }).show();
    }
    if (response.status === 500) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'warning  ',
            text: response.data.mensaje,
            timeout: 3000
        }).show();

    }
    if (response.status === 405) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'warning  ',
            text: response.data.mensaje,
            timeout: 3000
        }).show();

    }
    if (response.status === 402) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'warning',
            text: response.data.mensaje,
            timeout: 3000
        }).show();

    }
    if (response.status === 422) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'warning',
            text: response.data.mensaje,
            timeout: 3000
        }).show();

    }
}