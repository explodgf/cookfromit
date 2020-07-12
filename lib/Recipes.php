<?php
class Recipes {
    protected $db;

    public function __construct() {
        $this -> db = new Database;
    }

    public function getCategories() {
        $this -> db -> query("SELECT * FROM reca");
        // Assign Results Set
        $results = $this -> db -> resultSet();

        return $results;
    }

    public function getDifficulty() {
        $this -> db -> query("SELECT * FROM redi");
        // Assign Results Set
        $results = $this -> db -> resultSet();

        return $results;
    }

    public function addRecipe($data) {
        $this -> db -> query("INSERT INTO reua (RUTI, RUAU, RUPT, RUDI, RULC, RUAM, RUIA, RUCA, RUIM, RUCT, RUMT)
        VALUES (:RUTI, :RUAU, :RUPT, :RUDI, :RULC, :RUAM, :RUIA, :RUCA, :RUIM, :RUCT, :RUMT)");

        $this -> db -> bind(':RUTI', $data['ruti']);
        $this -> db -> bind(':RUAU', $data['ruau']);
        $this -> db -> bind(':RUPT', $data['rupt']);
        $this -> db -> bind(':RUDI', $data['rudi']);
        $this -> db -> bind(':RULC', $data['rulc']);
        $this -> db -> bind(':RUAM', $data['ruam']);
        $this -> db -> bind(':RUIA', $data['ruia']);
        $this -> db -> bind(':RUCA', $data['ruca']);
        $this -> db -> bind(':RUIM', $data['ruim']);
        $this -> db -> bind(':RUCT', $data['ruct']);
        $this -> db -> bind(':RUMT', $data['rumt']);
        
        if($this -> db -> execute()) {
            $this -> db -> query("SELECT RUID FROM reua WHERE RUAU = :RUAU AND RUCT = :RUCT");

            $this -> db -> bind(':RUAU', $data['ruau']);
            $this -> db -> bind(':RUCT', $data['ruct']);

            $row = $this -> db -> single();

            $_SESSION['RecipeId'] =  $row -> RUID;

            return true;
        } else {
            return false;
        }
    }

    public function addIngredientsToRecipe($dataIg) {
        $this -> db -> query("INSERT INTO urti (URIG, IGUR, IGAM)
        VALUES (:URIG, :IGUR, :IGAM)");

        $this -> db -> bind(':URIG', $dataIg['urig']);
        $this -> db -> bind(':IGUR', $dataIg['igur']);
        $this -> db -> bind(':IGAM', $dataIg['igam']);

        if($this -> db -> execute()) {
            return true;
        } else {
            return false;
        }
    }
}
