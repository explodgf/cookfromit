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
            foreach($results as $row) {
                $_SESSION['userId'] = $row -> USID;
                $_SESSION['username'] = $row -> UNAM;
                $_SESSION['confirm'] = "start";
            }
            return true;
        } else {
            return false;
        }
    }

    public function logout() {

        session_destroy();
        unset($_SESSION['userId']);
        unset($_SESSION['username']);
        unset($_SESSION['confirm']);

        if (!isset($_SESSION['confirm']) && !isset($_SESSION['username']) && !isset($_SESSION['userId'])) {
            return true;
        } else {
            return false;
        }
    }

    public function getUserRecipes() {
        $this -> db -> query("SELECT * FROM reua WHERE RUAU = :ruau");

        $this -> db -> bind(':ruau', $_SESSION['userId']);

        $results = $this -> db -> resultSet();

        return $results;
    }

    public function checkPwd($pwd) {
        $this -> db -> query("SELECT * FROM user WHERE UPAS = :upas");

        $pass= md5($pwd);

        $this -> db -> bind(':upas', $pass);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();
        if($numRows == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function changePwd($pwd, $userId) {

        $this -> db -> query("UPDATE user SET UPAS = :UPAS WHERE USID = :USID");

        $password = md5($pwd);

        $this -> db -> bind(':UPAS', $password);
        $this -> db -> bind(':USID', $userId);

        if($this -> db -> execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function getUserLikedRecipes() {
        $this -> db -> query("SELECT u.UNAM, r.RETI, r.REPT, r.RELC, r.REAM, d.DNAM, i.RIAN, i.RIUR
                                FROM user u, reci r, uslr l, redi d, imre i
                                    WHERE l.UTRE = u.USID
                                        AND l.RETU = r.REID
                                        AND r.REIM = i.RIID
                                        AND l.UTRE = :usid
                                        AND r.REDI = d.DIID"
                            );

        $this -> db -> bind(':usid', $_SESSION['userId']);

        $results = $this -> db -> resultSet();

        return $results;
    }
}
