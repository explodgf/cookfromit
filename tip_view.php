<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $tips = new Tips;
    $comments = new Comments;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/tipview.php');

    if(isset($_GET["tipId"])) {
        $tipID = $_GET["tipId"];
        $template -> tip = $tips -> selectTip($tipID);
        $template -> coments = $comments -> selectCommentsTip($tipID);
        if( $_SESSION['TipS'] && $_SESSION['ComS'] = true) {
            echo $template;
            unset($_SESSION['TipS']);
            unset($_SESSION['ComS']);
        } else {
            redirect('index.php', 'We can not load tip', 'error');
        }
    }

    if(isset($_POST['comment'])) {
        $userId = $_SESSION['userId'];
        $tipId = trim($_POST['tipId']);
        $comment = trim($_POST['comContent']);
        $data = array();
        $data['userId'] = $userId;
        $data['tipId'] = $tipId;
        $data['comment'] = $comment;
        if(!isset($_SESSION['userId'])) {
            $_SESSION['message'] = 'You must login';
            $_SESSION['message_type'] = 'error';
        }else if($comments -> addCommentTip($data)) {
            $logs -> addLog(7, $ipId, "User ". $_SESSION['username'] . " add comment to recipe $tipId");
            $_SESSION['message'] = 'You comment is being verified';
            $_SESSION['message_type'] = 'success';
        } else {
            $logs -> addLog(7, $ipId, "User ". $_SESSION['username'] . " add comment to recipe $rtipId in error");
            $_SESSION['message'] = 'Something went wrong';
            $_SESSION['message_type'] = 'error';
        }
    }
?>