<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vietpro Mobile Shop - Administrator</title>
    <base href="http://localhost/mini_project/">
    <link href="./public/css/bootstrap.min.css" rel="stylesheet">
    <link href="./public/css/datepicker3.css" rel="stylesheet">
    <link href="./public/css/bootstrap-table.css" rel="stylesheet">
    <link href="./public/css/styles.css" rel="stylesheet">
   <style>
    body{
    background-color: #4ccae8;
}
</style>
</head>
<body>
    <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading" style="text-align:center">Mobile Shop - Administrator</div>
                <div class="panel-body">
                    <!-- <div class="alert alert-danger">Tài khoản không hợp lệ !</div> -->
                    <form action="./login/login" method="POST">
                        <fieldset>   
                            <?php 
                                if(isset($data["result_empty"])){
                                    ?>
                                        <p style="color:red"><?php echo $data["result_empty"]; ?></p>
                                    <?php
                                }
                                if(isset($data["error"])){
                                    ?>
                                        <p style="color:red"><?php echo $data["error"]; ?></p>
                                    <?php
                                }
                            ?>
                            <div class="form-group"><h5>Username</h5>
                                <input class="form-control" placeholder="Enter username" name="username" type="text"
                                    autofocus value="<?php if(isset($_COOKIE["remember_me_u"])){ echo $_COOKIE["remember_me_u"]; } ?>">
                            </div>
                            <div class="form-group"><h5>Password</h5>
                                <input class="form-control" placeholder="Enter your password" name="password"
                                    type="password" value="<?php if(isset($_COOKIE["remember_me_p"])){ echo $_COOKIE["remember_me_p"]; } ?>" >
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="check_remember" type="checkbox" value="1">Remember me
                                </label>
                            </div>

                            <div style="float: right">
                            <button name="submit" type="submit" class="btn btn-primary">Login</button>
                            <a name="register" href="RegisterController" type="submit" class="btn btn-success">Register</a></div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

</html>
