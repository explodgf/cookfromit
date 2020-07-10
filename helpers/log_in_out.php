<?php
if(isset($_POST['login'])) {
    $username = $_POST['user'];
    $password = $_POST['password'];

    if (isset($user) && isset($password)) {
        $data = array();
        $data['user'] = $username;
        $data['password'] = $password;

        if($user -> login($data)) {
            $logs -> addLog(3, $ipId, $username . " login success");
            redirect($_SERVER['PHP_SELF'], 'You login', 'success');
        } else {
            $logs -> addLog(3, $ipId, $username . " login in error");
            redirect($_SERVER['PHP_SELF'], 'Incorrect username or psassword', 'error');
        }
    } else {
        redirect($_SERVER['PHP_SELF'], 'Username and password are required', 'error');
    }
}

if (isset($_GET['logout'])) {
    if ($user -> logout()) {
        $logs -> addLog(4, $ipId, "Logout success");
        redirect($_SERVER['PHP_SELF'], 'You logout', 'success');
    } else {
        $logs -> addLog(4, $ipId, $_SESSION['username'] . " logout in error");
        redirect($_SERVER['PHP_SELF'], 'Something went wrong', 'error');
    }
}