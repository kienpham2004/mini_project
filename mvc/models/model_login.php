<?php 
    class model_login extends DB{
       
        // function checkLogin($username,$password){
        //     $query = "SELECT * FROM users WHERE username = '".$this->$username."' AND password='".$this->$password."' ";
        // }


        public function login($username, $password){
            $sql = "SELECT * FROM user WHERE user_mail='$username' AND user_pass='$password' ";
            $this->execute($sql);

            if ($this->num_rows()!=0) {
                $data = mysqli_fetch_array($this->result);
            }else{
                $data = 0;
            }
            return $data;
            // return mysqli_query($this->conn,$sql);
        }

        public function register($user_full, $user_mail,$user_pass, $user_level){
            // $password = md5($password);
            $req = "INSERT INTO `user`( `user_full`, `user_mail`, `user_pass`, `user_level`) 
                    VALUES ('$user_full','$user_mail','$user_pass','$user_level')";   
            if(mysqli_query($this->conn,$req)){
                $result = true;
            }else{
                $result = false;
            }
            return $result;  
            // return mysqli_query($this->conn,$req);         
        }
      
    }
?>