<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $tips = new Tips;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/findtips.php');

    if(isset($_POST['submit'])) {
        $catId = $_POST['submit'];

        $template -> tips = $tips -> searchByCategory($catId);
    }

    echo $template;
?>