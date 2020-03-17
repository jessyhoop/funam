<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('css/noty.min.css')}}" rel="stylesheet" type="text/css"/>
        <title>Lista de Autores</title>
        <script type="text/javascript">
//            var base_url = '<?php // echo base_url();     ?>';
//            var api_url = '<?php // echo $api_url;     ?>';
        </script>
    </head>
    <body ng-app="app">
        <div class="container">
            <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
                <a class="navbar-brand" ui-sref="inicio">difusion</a>
                <button class="navbar-toggler" type="button"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" ui-sref="autores_list">Autores</a></li>
                        <li class="nav-item"><a class="nav-link" ui-sref="autores_inactive_list">Autors inactivos </a></li>
                        <li class="nav-item"><a class="nav-link" ui-sref="autor_create">Crear Autor</a></li>
                    </ul>
                </div>
            </nav>
            <div ui-view></div>
        </div>
        <script src="{{asset('js/vendors/angular.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/vendors/noty.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/modules/angular-ui-router.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/appA.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/services/autores-service.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/controllers/autores-controllers.js')}}" type="text/javascript"></script>
    </body>
</html>