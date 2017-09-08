<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sekolahku</title>

    <!-- Core CSS - Include with every page -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="body_login">
    <div id="container_login" class="container">
        <div id="row_login" class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">SISTEM ABSENSI</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="ceklog.php">
                            <fieldset>
                                <div class="form-group">
                                    <input id="username" class="form-control" placeholder="Username" name="username"  autofocus>
                                </div>
                                <div class="form-group">
                                    <input id="password" class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button id="btn_login" class="btn btn-lg btn-success btn-block">Login</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Core Scripts - Include with every page -->
    <script src="js/jquery_2.2.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

    <!-- SB Admin Scripts - Include with every page -->
    <script  type="text/javascript" src="js/sb-admin.js"></script>
    <script type="text/javascript">
        // $('#btn_login').click(function(){
        //   $.ajax(
        //     {
        //         url:"ceklog.php",
        //         data : {
        //             username : $('#username').val(),
        //             password : $('#password').val(),  
        //         },
        //         success:function(result){
        //             console.log(result);
        //         }
        //      });
        // });
    </script>


</body>

</html>
