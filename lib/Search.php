<?php
include_once '../config/config.php';
include_once 'Database.php';

class Search {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function ingSearch($term) {
        $this -> db -> query("SELECT IGNA FROM ingr WHERE IGNA LIKE :search");
        $search = $term . "%";
        // Bind data
        $this -> db -> bind(':search', $search);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();

        if($numRows > 0) {
            foreach($results as $row) {
                echo "<p>". $row -> IGNA ."</p>";
            }
        } else {
            echo "<p>No matches found</p>";
        }
    }

}