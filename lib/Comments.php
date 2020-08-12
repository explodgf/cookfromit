<?php

class Comments {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function selectCommentsRecipe($recipeId) {
        $this -> db -> query("SELECT CCON, UNAM, UIAN, UIUR
                            FROM core
                            LEFT JOIN user ON CUID = USID
                            LEFT JOIN imus ON UIMG = UIID
                            WHERE RCID = :rcid");

        $this -> db -> bind(':rcid', $recipeId);

        $results = $this -> db -> resultSet();

        $_SESSION['ComS'] = true;

        return $results;
    }

    public function addCommentRecipe($data) {
        $this -> db -> query("INSERT INTO ucor (RCID, CUID, CDAT, CCON)
                            VALUES (:rcid, :cuid, :cdat, :ccon)");

        $this -> db -> bind(':rcid', $data['recipeId']);
        $this -> db -> bind(':cuid', $data['userId']);
        $this -> db -> bind(':cdat', date('Y-m-d H:i:s'));
        $this -> db -> bind(':ccon', $data['comment']);

        if($this -> db -> execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function selectCommentsTip($id) {

    }
}