<?php include_once 'config/init.php'; ?>

<?php
    $user = new User;
    $recipes = new Recipes;

    $ipId =   $ip -> getIpId($u_info -> get_ip())->IPID;

    include_once 'helpers/log_in_out.php';

    $template = new Template('./templates/sendrecipe.php');

    $template -> categories = $recipes -> getCategories();
    $template -> difficultys = $recipes -> getDifficulty();

    if(isset($_POST['submit'])) {
        $name = trim($_POST['dishName']);
        $difficulty = trim($_POST['difficulty']);
        $time = trim($_POST['time']);
        $peopleCount = trim($_POST['peopleCount']);
        $category = trim($_POST['category']);

        $data = array();
        $data['ruti'] = $name;
        $data['ruau'] = $_SESSION['userId'];
        $data['rupt'] = $time;
        $data['rudi'] =  $difficulty;
        $data['rulc'] = 1;
        $data['ruam'] = $peopleCount;
        $data['ruia'] = 1;
        $data['ruca'] = $category;
        $data['ruim'] = 1;
        $data['ruct'] = date(DATE_ATOM);
        $data['rumt'] = date(DATE_ATOM);
        if($recipes -> addRecipe($data)) {
            redirect('index.php', 'You add recipe', 'success');
        } else {
            redirect('index.php', 'Something went wrong', 'error');
        }
    }

    echo $template;
?>