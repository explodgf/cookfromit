<?php

class Comments {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function selectCommentsRecipe($recipeId) {
        $this -> db -> query("SELECT CCON, UNAM, UIAN, UIUR, CISU
                            FROM core
                            LEFT JOIN user ON CUID = USID
                            LEFT JOIN imus ON UIMG = UIID
                            WHERE RCID = :rcid AND CISU = 1");

        $this -> db -> bind(':rcid', $recipeId);

        $results = $this -> db -> resultSet();

        $_SESSION['ComS'] = true;

        return $results;
    }

    public function addCommentRecipe($data) {
        $this -> db -> query("INSERT INTO core (RCID, CUID, CDAT, CCON, CISU)
                            VALUES (:rcid, :cuid, :cdat, :ccon, :cisu)");

        $this -> db -> bind(':rcid', $data['recipeId']);
        $this -> db -> bind(':cuid', $data['userId']);
        $this -> db -> bind(':cdat', date('Y-m-d H:i:s'));
        $this -> db -> bind(':ccon', $data['comment']);
        $this -> db -> bind(':cisu', 0);

        if($this -> db -> execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function selectCommentsTip($id) {
        $this -> db -> query("SELECT CCON, UNAM, UIAN, UIUR, CISU
                            FROM coti
                            LEFT JOIN user ON CUID = USID
                            LEFT JOIN imus ON UIMG = UIID
                            WHERE TCID = :tcid AND CISU = 1");

        $this -> db -> bind(':tcid', $id);

        $results = $this -> db -> resultSet();

        $_SESSION['ComS'] = true;

        return $results;
    }

    public function addCommentTip($data) {
        $this -> db -> query("INSERT INTO coti (TCID, CUID, CDAT, CCON, CISU)
                            VALUES (:rcid, :cuid, :cdat, :ccon, :cisu)");

        $this -> db -> bind(':rcid', $data['tipId']);
        $this -> db -> bind(':cuid', $data['userId']);
        $this -> db -> bind(':cdat', date('Y-m-d H:i:s'));
        $this -> db -> bind(':ccon', $data['comment']);
        $this -> db -> bind(':cisu', 0);

        if($this -> db -> execute()) {
            return true;
        } else {
            return false;
        }
    }
}