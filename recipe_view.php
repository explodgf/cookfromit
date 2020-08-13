<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $recipe = new Recipes;
    $comments = new Comments;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/recipeview.php');

    if(isset($_GET["reciId"])) {
        $reciID = $_GET["reciId"];
        $template -> reci = $recipe -> selectRecipe($reciID);
        $template -> ingredients = $recipe -> selectIngredients($reciID);
        $template -> steps = $recipe -> selectSteps($reciID);
        $template -> coments = $comments -> selectCommentsRecipe($reciID);
        if( $_SESSION['StepS'] && $_SESSION['ComS'] && $_SESSION['IngS'] && $_SESSION['ReciS'] ===  true) {
            echo $template;
            unset($_SESSION['StepS']);
            unset($_SESSION['ComS']);
            unset($_SESSION['IngS']);
            unset($_SESSION['ReciS']);
        } else {
            redirect('index.php', 'We can not load recipe', 'error');
        }
    }

    if(isset($_POST['comment'])) {
        $userId = $_SESSION['userId'];
        $recipeId = trim($_POST['reciId']);
        $comment = trim($_POST['comContent']);
        $data = array();
        $data['userId'] = $userId;
        $data['recipeId'] = $recipeId;
        $data['comment'] = $comment;
        if($comments -> addCommentRecipe($data)) {
            $logs -> addLog(7, $ipId, "User ". $_SESSION['username'] . " add comment to recipe $recipeId");
            $_SESSION['message'] = 'You comment is being verified';
            $_SESSION['message_type'] = 'success';
            exit();
        } else {
            $logs -> addLog(7, $ipId, "User ". $_SESSION['username'] . " add comment to recipe $recipeId in error");
            $_SESSION['message'] = 'Something went wrong';
            $_SESSION['message_type'] = 'error';
            exit();
        }
    } else {
        $_SESSION['message'] = 'You must login';
        $_SESSION['message_type'] = 'error';
    }

?>