<?php 
    class RegisterController extends Controller{

        function show(){
            $this->view("register",[]);
        }
     

        public function register(){
            
            $nameErr =null;
            $emailErr = null;
            $passErr = null;
            $idErr = null;
            $conErr = null;
            $err = "Password no match";

            if($_SERVER["REQUEST_METHOD"] == "POST"){
                if(empty($_POST["user_full"])){
                    $nameErr = "Name is required";
                }else{
                    $name = $this->test_input($_POST["user_full"]);
                    if(!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
                        $nameErr = "Only letters and white space allowed";
                    }
                }

                if (empty($_POST["user_mail"])) {
                    $emailErr = "Email is required";
                  } else {
                    $email = $this->test_input($_POST["user_mail"]);
                    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                        $emailErr = "Invalid email format";
                    }
                }

                if (empty($_POST["user_pass"])) {
                    $passErr = "Password is required";
                  } else {
                    $pass = $this->test_input($_POST["user_pass"]);
                    if (!preg_match("/^.{8,}$/", $pass)) {
                      $passErr = "Password must include at least 8 character!";
                    }
                }
                
                $user_full = htmlentities($_POST["user_full"]);
                $user_mail = htmlentities($_POST["user_mail"]);
                $user_pass = htmlentities(md5($_POST["user_pass"]));
                $user_level = 2;
                $user_confirm = htmlentities(md5($_POST["user_confirm"]));

                if(!empty($_POST["user_full"]) && !empty($_POST["user_mail"]) && !empty($_POST["user_pass"]) && !empty($_POST["user_confirm"])){
                    if($user_pass === $user_confirm)
                    // && empty($_POST["user_full"]) && empty($_POST["user_mail"]) && empty($_POST["user_pass"])
                    {
                        $model =$this->model("model_login");
                        $result = $model->register($user_full,$user_mail,$user_pass,$user_level);
                        if($result==true){
                                header("location: ../login");
                            }else{
                                echo "<script>alert('register fail!!');</script>";
                            }
                    }
                }
                $this->view("register",["nameErr"=>$nameErr,
                                        "idErr"=>$idErr,
                                        "emailErr"=>$emailErr,
                                        "conErr"=> $conErr,
                                        "passErr"=>$passErr,
                                        "errCf"=> $err]);
                     
            }
        }
    }

?>