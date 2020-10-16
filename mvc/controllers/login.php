<?php
class login extends Controller
{
	public function show(){
		$this->view("login",[]);
	}

		public function login(){
			if(empty($_SESSION["id"])){
				if(isset($_COOKIE["auth"])){
					parse_str($_COOKIE["auth"]);
					$model2 = $this->model("model_login");
					$row2 = $model2->login($usr,$hash);
					if($row2){
						$_SESSION["id"] = $row2['user_id'];
						header("location: ./product");
					}
				}
			}else{
				header("location: ./product");
			}

			if(isset($_POST["submit"])){

				$username = htmlentities($_POST["username"]);
				$password = htmlentities(md5($_POST["password"]));
				$a_check=( (isset($_POST['check_remember'])!=0 ) ? 1 : "");

				if(empty($username )||empty($password)){	
					$this->view("login",["result_empty"=>" Username and password require!"]);
				}else{
					$model = $this->model("model_login");
					$row = $model->login($username,$password);

					if( $row == 0){
						$this->view("login",["error"=>"Username or password not found. Try again!"]);
					}else{
				
						$id = $row["user_id"];
						$f_user = $row["user_mail"];
						$f_pass = $row["user_pass"];

						if($f_user == $username && $f_pass == $password){
							$_SESSION["id"]=  $id;
							$_SESSION["mail"] = $f_user;
							$_SESSION["pass"] = $f_pass;

							if($a_check==1){
								setcookie("auth",'usr='.$f_user.'&hash='.$f_pass,time()+100);
							}
							                    
							header("location: ../product");
						}

					}

				}	

			}
		}

		public function logout(){
			session_destroy();
			setcookie("auth",'unset',time()-100);
			$this->view("login",[]);
		}



	}

?>
