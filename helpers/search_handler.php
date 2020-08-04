<?php
require_once "../lib/Search.php";

if(isset($_REQUEST["term"])){
    $search = new Search();
    $term = $_REQUEST["term"];
    $result = $search -> ingSearch($term);
}

if(isset($_REQUEST["termTip"])){
    $search = new Search();
    $term = $_REQUEST["termTip"];
    $result = $search -> tipsSearch($term);
}