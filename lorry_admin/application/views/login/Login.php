<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Lorry Application | Login</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link href="css/custom.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">LA+</h1>

            </div>
            <h3>Welcome to LA+</h3>
            <!-- <p>Perfectly designed and precisely prepared admin theme with over 50 pages with extra new web app views.</p> -->
            <p>Login in. To see it in action.</p><?php
            
            if(isset($errors) && !empty($errors)) {
                ?><div class="errors">
                    <ul><?php
                        foreach($errors AS $key => $error) {
                            ?><li><?php print $error; ?></li><?php
                        }
                    ?></ul>
                </div><?php
            }

            ?><form class="m-t" method="post" role="form" action="<?php print base_url() . 'Login/checkUserName' ?>" id="frmLogin" name="frmLogin">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" name="txtUserName" id="txtUserName">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="txtPassword" id="txtPassword">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                <!-- <a href="#"><small>Forgot password?</small></a> -->
                <!-- <p class="text-muted text-center"><small>Do not have an account?</small></p> -->
                <!-- <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a> -->
            </form>
            <p class="m-t"> <small>Lorry application &copy; 2018</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/jqueryvalidate/jquery.validate.js"></script>
    <script src="js/plugins/jqueryvalidate/additional-methods.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#frmLogin').validate({
                debug:true,
                rules: {
                    txtUserName:{
                        required: true
                    },
                    txtPassword: {
                        required: true
                    }
                },
                messages: {
                    txtUserName:{
                        required: 'Please enter username'
                    },
                    txtPassword: {
                        required: 'Please enter password'
                    }
                },
                submitHandler: function(form) {
                    $(form)[0].submit();
                }
            });
        });
    </script>
</body>

</html>
