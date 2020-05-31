<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link href="{{ asset('css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
        <link href="{{ asset('css/noty.min.css')}}" rel="stylesheet" type="text/css"/>
        <title>Lista de Autores</title>
        <script type="text/javascript">
//            var base_url = '<?php // echo base_url();       ?>';
//             var api_url = <?php echo 'http://localhost/funam/public/' ?>;
        </script>
    </head>
    <body ng-app="app">
        <div class="container">

            <div ui-view></div>
        </div>
        <script src="{{asset('js/vendors/angular.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/modules/oclazyload.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/vendors/noty.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/modules/angular-ui-router.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('js/appA.js')}}" type="text/javascript"></script>
    </body>
</html>