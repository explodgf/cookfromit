<?php
include_once '../config/config.php';
include_once 'Database.php';

class Like {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function checkRecipeLike($reciId, $userId) {
        $this -> db -> query("SELECT * FROM uslr WHERE UTRE = :utre AND RETU = :retu");

        $this -> db -> bind(':utre', $userId);
        $this -> db -> bind(':retu', $reciId);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();
        if($numRows == 1) {
            echo "true";
        } else {
            echo "false";
        }
    }
}