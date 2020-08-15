<?php include_once 'config/init.php'; ?>

<?php
    if(isset($_SESSION['confirm']) && isset($_SESSION['username']) && isset($_SESSION['userId'])) {
        $user = new User;

        $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

        include_once 'helpers/log_in_out.php';

        $template = new Template('./templates/userprofile.php');

        $template -> userRecipes = $user -> getUserRecipes();

        if(isset($_POST["changePwd"])) {
            $pwdCurently = trim($_POST['pwd-curently']);
            $pwdNew = trim($_POST['new-pwd']);
            $pwdNewRepet= trim($_POST['new-pwd-repet']);
            $userId = $_SESSION['userId'];
            if($user -> checkPwd($pwdCurently)) {
                $user -> passwordValidation($pwdNew, $pwdNewRepet);
                if($valid_password) {
                    if($user -> changePwd($pwdNew, $userId)) {
                        redirect($_SERVER['PHP_SELF'], 'Password changed', 'success');
                    } else {
                        redirect($_SERVER['PHP_SELF'], 'Something went wrong', 'error');
                    }
                }
            } else {
                redirect($_SERVER['PHP_SELF'], 'Currently password uncorrect', 'error');
            }
        }

        echo $template;
    } else {
        redirect('index.php', 'You must login first', 'error');
    }
?>