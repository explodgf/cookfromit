<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    if(isset($_POST['submit'])) {
        $username = trim($_POST['username']);
        $email = trim($_POST['email']);
        $password_1 = trim($_POST['password_1']);
        $password_2 = trim($_POST['password_2']);
        $date = date("Y-m-d");
        $user -> usernameValidation($username);
        $user -> emailValidation($email);
        $user -> passwordValidation($password_1, $password_2);
        if ($valid_username && $valid_email && $valid_password && $ip_exist == true) {
            $data = array();
            $data['username'] = $username;
            $data['email'] =  $email;
            $data['password'] = $password_1;
            $data['ip'] = $ipId;
            $data['group'] = 1;
            $data['date'] = $date;
            $data['uprp'] = 1;
            $data['unpr'] = 1;
            $data['img'] = 1;
            if($user -> register($data)) {
                $logs -> addLog(1, $ipId, "User ". $username . " registered success");
                redirect('index.php', 'You are registered', 'success');
            } else {
                redirect('index.php', 'Something went wrong', 'error');
                $logs -> addLog(1, $ipId, "User ". $username . " registered in error");
            }
        }
    }


    $template = new Template('./templates/registration.php');

    echo $template;
?>