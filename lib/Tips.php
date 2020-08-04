<?php
class Tips {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function getCategories() {
        $this -> db -> query("SELECT * FROM tica");
        // Assign Results Set
        $results = $this -> db -> resultSet();

        return $results;
    }

    public function searchByCategory($catId) {
        $this -> db -> query("SELECT TTID, TIIT, TIUR, TIAN FROM tips, imti WHERE TCAT = :tcat AND TIMG = TIIG");

        $this -> db -> bind(':tcat', $catId);

        $results = $this -> db -> resultSet();

        return $results;
    }
}