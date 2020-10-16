<?php
    error_reporting(0);
?>

<!DOCTYPE HTML>
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
.flex{
    display: flex;
}
.error{
    color: red;
    margin-left: 10px;
}
h5{
    margin-left: 5px;
}
</style>
</head>
<body>
    <div class="row">
        <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading" style="text-align:center">Register User</div>
                <div class="panel-body">
                    <form action="./RegisterController/register" method="POST">
                        <fieldset>
                            
                            <div class="form-group "><h5>Full name:</h5> 
                                <div class="flex"><input class="form-control " placeholder="Enter full name" name="user_full" type="text" ><span class="error" >*</span></div>
                                <?php 
                                    if(isset($data["nameErr"])){
                                        ?>
                                            <span class="error"><?php echo $data["nameErr"]; ?></span>
                                        <?php
                                    }
                                ?>
                            </div>
                            <div class="form-group"><h5>Email:</h5>
                                <div class="flex"><input class="form-control" placeholder="Enter your email" name="user_mail" type="email"><span class="error" >*</span></div>
                                <?php 
                                    if(isset($data["emailErr"])){
                                        ?>
                                            <span class="error"><?php echo $data["emailErr"]; ?></span>
                                        <?php
                                    }
                                ?>
                            </div>
                            <div class="form-group"><h5>Password:</h5>
                               <div class="flex"> <input class="form-control" placeholder="Enter password" name="user_pass" type="password" require ><span class="error" >*</span></div>
                               <?php 
                                    if(isset($data["passErr"])){
                                        ?>
                                            <span class="error"><?php echo $data["passErr"]; ?></span>
                                        <?php
                                    }
                                ?>
                            </div>
                            <div class="form-group"><h5>Confirm Password:</h5>
                               <div class="flex"> <input class="form-control" placeholder="Confirm password" name="user_confirm" type="password" ><span class="error" >*</span></div>
                               <?php 
                                    if(isset($data["errCf"])){
                                        ?>
                                            <span class="error"><?php echo $data["errCf"]; ?></span>
                                        <?php
                                    }
                                ?>
                            </div>
                                        
                           <div style="float: right">
                           <button name="submit" type="submit" class="btn btn-success">Register</button>
                            <a href="./login" type="submit" class="btn btn-danger">Cancel</a></div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

</html>
