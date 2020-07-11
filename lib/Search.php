<?php
include_once '../config/config.php';
include_once 'Database.php';

class Search {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function ingSearch($term) {
        $this -> db -> query("SELECT IGID, IGNA, MENA FROM ingr, inme WHERE IGMT = MEID AND IGNA LIKE :search");
        $search = $term . "%";
        // Bind data
        $this -> db -> bind(':search', $search);

        $results = $this -> db -> resultSet();
        $numRows = $this -> db -> rowCount();

        if($numRows > 0) {
            foreach($results as $row) {
                echo "<div><p>". $row -> IGNA ."</p><span hidden id='mena'>". $row -> MENA ."</span><span hidden id='igid'>". $row -> IGID ."</span></div>";
            }
        } else {
            echo "<p>No matches found</p>";
        }
    }

}