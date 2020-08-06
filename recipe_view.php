<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $recipe = new Recipes;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/recipeview.php');

    if(isset($_GET["reciId"])) {
        $reciID = $_GET["reciId"];
        $template -> reci = $recipe -> selectRecipe($reciID);
    }

    echo $template;
?>