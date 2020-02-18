/* global base_url  gitttttttttttttt */
angular.module('app', ["ui.router"]);
angular.module('app').config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/inicio');
    $stateProvider.state('autores_list', {//nombre
        url: '/autores-list',
        templateUrl: base_url + 'templates/autores/autores-list.html',
        controller: 'AutoresListCtrl'
    });
    $stateProvider.state('autores_inactive_list', {
        url: '/autores-inactive-list',
        templateUrl: base_url + 'templates/autores/autores-inactive-list.html',
        controller: 'AutoresInactiveListCtrl'
    });
    $stateProvider.state('autor_create', {
        url: '/crear-autor',
        templateUrl: base_url + 'templates/autores/autor-form.html',
        controller:'AutorCreateCtrl'
    });
    $stateProvider.state('autor_update', {
        url: '/actualizar-autor/:id',
        templateUrl: base_url + 'templates/gacetas/autor-form.html',
        controller:'AutorUpdateCtrl'
    });
//------
    $stateProvider.state('gacetas_list', {
        url: '/gacetas-list',
        templateUrl: base_url + 'templates/gacetas/gacetas-list.html',
        controller: 'GacetasListCtrl'
    });
    $stateProvider.state('gacetas_inactive_list', {
        url: '/gacetas-inactive-list',
        templateUrl: base_url + 'templates/gacetas/gacetas-inactive-list.html',
        controller: 'GacetasInactiveListCtrl'
    });
    $stateProvider.state('gaceta_create', {
        url: '/crear-gaceta',
        templateUrl: base_url + 'templates/gacetas/gaceta-form.html',
        controller:'GacetaCreateCtrl'
    });
    $stateProvider.state('gaceta_update', {
        url: '/actualizar-gaceta/:id',
        templateUrl: base_url + 'templates/gacetas/gaceta-form.html',
        controller:'GacetaUpdateCtrl'
    });

});
function showNoty(response) {
    if (response.status === 201) {//http created
        new Noty({
            theme: 'metroui',
            type: 'success',
            text: response.data,
            timeout: 3000
        }).show();
    }
    if (response.status === 400) {//http bad request
        new Noty({
            theme: 'metroui',
            type: 'error',
            text: response.data,
            timeout: 3000
        }).show();
    }
    if (response.status === 404) {//http not found
        new Noty({
            theme: 'metroui',
            type: 'error',
            text: response.data,
            timeout: 3000
        }).show();
    }
    if (response.status === 500) {//http internal server error
        new Noty({
            theme: 'metroui',
            type: 'warning  ',
            text: response.data,
            timeout: 3000
        }).show();

    }
}