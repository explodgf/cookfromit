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

        // Bind data
        $this -> db -> bind(':UNAM', $data['username']);
        $this -> db -> bind(':UEMA', $data['email']);
        $this -> db -> bind(':UPAS', $password);
        $this -> db -> bind(':USIP', $data['ip']);
        $this -> db -> bind(':UGRO', $data['group']);
        $this -> db -> bind(':UJOD', $data['date']);
        $this -> db -> bind(':UPRP', $data['uprp']);
        $this -> db -> bind(':UNPR', $data['unpr']);
        $this -> db -> bind(':UIMG', $data['img']);

        // Execute
        if($this -> db -> execute()) {
        return true;
        } else {
        return false;
        }
    }

}
