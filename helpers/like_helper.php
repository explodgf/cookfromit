<?php
require_once "../lib/Like.php";

if(isset($_REQUEST["reciId"],$_REQUEST["userId"])){
    $like = new Like();
    $reciId = $_REQUEST["reciId"];
    $userId = $_REQUEST["userId"];
    $like -> checkRecipeLike($reciId, $userId);
}