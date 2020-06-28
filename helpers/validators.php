<?php
class Validators {

    public function passwordValidation($password, $password_repet) {
        global $errors;
        global $valid_password;
        $uppercase = preg_match('@[A-Z]@', $password);
        $lowercase = preg_match('@[a-z]@', $password);
        $number    = preg_match('@[0-9]@',  $password);
        $specialChars = preg_match('@[^\w]@', $password);
        // Check for empty and invalid inputs
        if (empty($password)) {
            array_push($errors, "Please enter a valid password ");
            $valid_password = false;
        } elseif (empty($password_repet)) {
            array_push($errors, "Please enter a valid password.");
            $valid_password = false;
        } elseif (!$uppercase || !$lowercase || !$number || !$specialChars || strlen($password) < 8) {
            array_push($errors, "Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character.");
            $valid_password = false;
        } else {
            // Check if the user may be logged in
            if ($password == $password_repet) {
                $valid_password = true;
            } else {
                $valid_password = false;
                array_push($errors, "Password are not the same");
            }
        }
    }

    public function usernameValidation($username) {
        global $errors;
        global $valid_username;

        $this -> db -> query("SELECT UNAM FROM user WHERE UNAM = :name");

        $this -> db -> bind(':name', $username);

        $row = $this -> db -> single();

        if(!$row > 0) {
            $valid_username = true;
        } else {
            $valid_username = false;
            array_push($errors, "User already exist");
        }
    }

    public function emailValidation($email) {
        global $errors;
        global $valid_email;

        $this -> db -> query("SELECT UEMA FROM user WHERE UEMA = :email");

        $this -> db -> bind(':email', $email);

        $row = $this -> db -> single();

        if(!$row > 0) {
            $valid_email = true;
        } else {
            $valid_email = false;
            array_push($errors, "Email already exist");
        }
    }

    public function IpValidation($ip) {
        global $ip_exist;

        $this -> db -> query("SELECT IPAD FROM ipau WHERE IPAD = :ip");

        $this -> db -> bind(':ip', $ip);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();

        if($numRows  > 0) {
            $ip_exist = true;
        } else {
            $ip_exist = false;
        }
    }
}
