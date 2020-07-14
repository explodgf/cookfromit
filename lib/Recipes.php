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
        $this -> db -> query("INSERT INTO reua (RUTI, RUAU, RUPT, RUDI, RULC, RUCC, RUVC, RUAM, RUIA, RUCA, RUIM, RUCT, RUMT)
        VALUES (:RUTI, :RUAU, :RUPT, :RUDI, :RULC, :RUCC, :RUVC, :RUAM, :RUIA, :RUCA, :RUIM, :RUCT, :RUMT)");

        $this -> db -> bind(':RUTI', $data['ruti']);
        $this -> db -> bind(':RUAU', $data['ruau']);
        $this -> db -> bind(':RUPT', $data['rupt']);
        $this -> db -> bind(':RUDI', $data['rudi']);
        $this -> db -> bind(':RULC', $data['rulc']);
        $this -> db -> bind(':RUCC', $data['rucc']);
        $this -> db -> bind(':RUVC', $data['ruvc']);
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

    public function addIngredientsToRecipe($dataIg, $count) {
        $execute = 0;
        for ($i=0; $i < $count; $i++) {
            $this -> db -> query("INSERT INTO urti (URIG, IGUR, IGAM)
            VALUES (:URIG, :IGUR, :IGAM)");

            $this -> db -> bind(':URIG', $dataIg[$i]['urig']);
            $this -> db -> bind(':IGUR', $dataIg[$i]['igur']);
            $this -> db -> bind(':IGAM', $dataIg[$i]['igam']);

            $this -> db -> execute();
            $execute++;
        }

        if($execute === $count) {
            return true;
        } else {
            return false;
        }
    }
    public function addStepsToRecipe($dataSteps, $count) {
        $execute = 0;
        for ($i=0; $i < $count; $i++) {
            $this -> db -> query("INSERT INTO stdr (SCON, SINO, STRI)
            VALUES (:SCON, :SINO, :STRI)");

            $this -> db -> bind(':SCON', $dataSteps[$i]['scon']);
            $this -> db -> bind(':SINO', $dataSteps[$i]['sino']);
            $this -> db -> bind(':STRI', $dataSteps[$i]['stri']);

            $this -> db -> execute();
            $execute++;
        }

        if($execute === $count) {
            return true;
        } else {
            return false;
        }
    }
}
