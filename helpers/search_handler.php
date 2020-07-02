<?php
require_once "../lib/Search.php";

if(isset($_REQUEST["term"])){
    $search = new Search();
    $term = $_REQUEST["term"];
    $result = $search -> ingSearch($term);
}