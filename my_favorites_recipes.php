<?php include_once 'config/init.php'; ?>

<?php
    if(isset($_SESSION['confirm']) && isset($_SESSION['username']) && isset($_SESSION['userId'])) {
        $user = new User;

        $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

        include_once 'helpers/log_in_out.php';

        $template = new Template('./templates/userfavrecipes.php');

        $template -> likedRecipes = $user -> getUserLikedRecipes();

        echo $template;
    } else {
        redirect('index.php', 'You must login first', 'error');
    }
?>