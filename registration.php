<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;

    if(isset($_POST['submit'])) {
        $username = trim($_POST['username']);
        $email = trim($_POST['email']);
        $password_1 = trim($_POST['password_1']);
        $password_2 = trim($_POST['password_2']);
        $date = date("Y-m-d");
        $user -> usernameValidation($username);
        $user -> emailValidation($email);
        $user -> passwordValidation($password_1, $password_2);
        if ($valid_username || $valid_email || $valid_password == true) {
            $data = array();
            $data['username'] = $username;
            $data['email'] =  $email;
            $data['password'] = $password_1;
            $data['ip'] = 1;
            $data['group'] = 1;
            $data['date'] = $date;
            $data['uprp'] = 1;
            $data['unpr'] = 1;
            $data['img'] = 3;
            if($user -> register($data)) {
                redirect('index.php', 'You are register', 'success');
            } else {
                redirect('index.php', 'Something went wrong', 'error');
            }
        } else {
            echo $errors;
        }
    }


    $template = new Template('./templates/registration.php');

    echo $template;
?>