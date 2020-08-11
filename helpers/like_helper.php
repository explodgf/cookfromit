<?php
require_once "../lib/Like.php";

if(isset($_REQUEST["reciId"],$_REQUEST["userId"],$_REQUEST['check'])){
    $like = new Like();
    $reciId = $_REQUEST["reciId"];
    $userId = $_REQUEST["userId"];
    $like -> checkRecipeLike($reciId, $userId);
    exit();
}

if (isset($_POST['liked'])) {
    $like = new Like();
    $reciId = $_REQUEST["reciId"];
    $userId = $_REQUEST["userId"];
    $like -> likeRecipe($reciId, $userId);
    exit();
}
