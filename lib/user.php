<?php
include_once './helpers/validators.php';

class User extends Validators {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function register($data) {

        $this -> db -> query("INSERT INTO user (UNAM, UEMA, UPAS, USIP, UGRO, UJOD, UPRP, UNPR, UIMG)
        VALUES (:UNAM, :UEMA, :UPAS, :USIP, :UGRO, :UJOD, :UPRP ,:UNPR, :UIMG)");
        $password = md5($data['password']);

        $this -> db -> bind(':UNAM', $data['username']);
        $this -> db -> bind(':UEMA', $data['email']);
        $this -> db -> bind(':UPAS', $password);
        $this -> db -> bind(':USIP', $data['ip']);
        $this -> db -> bind(':UGRO', $data['group']);
        $this -> db -> bind(':UJOD', $data['date']);
        $this -> db -> bind(':UPRP', $data['uprp']);
        $this -> db -> bind(':UNPR', $data['unpr']);
        $this -> db -> bind(':UIMG', $data['img']);

        if($this -> db -> execute()) {
        return true;
        } else {
        return false;
        }
    }

    public function login($data) {

        $this -> db -> query("SELECT * FROM user WHERE UNAM = :unam AND UPAS = :upas");
        $pass= md5($data['password']);

        $this -> db -> bind(':unam', $data['user']);
        $this -> db -> bind(':upas', $pass);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();

        if($numRows == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function logout() {

        session_destroy();
        unset($_SESSION['username']);
        unset($_SESSION['confirm']);

        if (!isset($_SESSION['confirm']) && !isset($_SESSION['username'])) {
            return true;
        } else {
            return false;
        }
    }
}
