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
        if( $_SESSION['TipS']) {
            echo $template;
            unset($_SESSION['TipS']);
        } else {
            redirect('index.php', 'We can not load tip', 'error');
        }
    }

?>