<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $recipe = new Recipes();

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/findrecipe.php');

    $template -> recipes = $recipe -> topRecipes();

    if(isset($_POST['submit'])) {

        $category = trim($_POST['cat_id']);
        $countIg = count($_POST['igId']);

        $dataIg = array(array());
        for ($i=0; $i < $countIg; $i++) {
            $igId = $_POST['igId'][$i];

            $dataIg[$i]['igId'] = $igId;
        }

        $template -> recipes = $recipe -> recipeSearch($countIg);

        if($template -> recipes != NULL) {
            $_SESSION['message'] = 'We find something for you!';
            $_SESSION['message_type'] = 'success';
        } else {
            $_SESSION['message'] = 'We cant find any recipes for you :( Sorry';
            $_SESSION['message_type'] = 'error';
        }
    }


    echo $template;
?>