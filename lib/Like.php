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
            $this -> db -> query("SELECT RELC FROM reci WHERE REID = :reid");
            $this -> db -> bind(':reid', $reciId);
            $row = $this -> db -> single();
            $n = $row -> RELC;
            echo json_encode(array("checkUSLR" => "true", "cnt" => $n));
        } else {
            $this -> db -> query("SELECT RELC FROM reci WHERE REID = :reid");
            $this -> db -> bind(':reid', $reciId);
            $row = $this -> db -> single();
            $n = $row -> RELC;
            echo json_encode(array("checkUSLR" => "false", "cnt" => $n));
        }
    }

    public function likeRecipe($reciId, $userId) {
        $this -> db -> query("INSERT INTO uslr (UTRE, RETU, LDAT) VALUES (:utre, :retu, :date)");

        $this -> db -> bind(':utre', $userId);
        $this -> db -> bind(':retu', $reciId);
        $this -> db -> bind(':date', date('Y-m-d H:i:s'));

        if($this -> db -> execute()) {
            $this -> db -> query("SELECT RELC FROM reci WHERE REID = :reid");
            $this -> db -> bind(':reid', $reciId);
            $row = $this -> db -> single();
            $n = $row -> RELC;

            $this -> db -> query("UPDATE reci SET RELC = :relc WHERE REID = :reid");

            $this -> db -> bind(':reid', $reciId);
            $this -> db -> bind(':relc', $n+1);
            if($this -> db -> execute()) {
                echo $n+1;
            }else {
                return false;
            };
        } else {
            return false;
        }
    }
}