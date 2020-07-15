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
        $igCount = count($_POST['igId']);

        $data = array();
        $data['ruti'] = $name;
        $data['ruau'] = $_SESSION['userId'];
        $data['rupt'] = $time;
        $data['rudi'] = $difficulty;
        $data['rulc'] = 0;
        $data['rucc'] = 0;
        $data['ruvc'] = 0;
        $data['ruam'] = $peopleCount;
        $data['ruia'] = $igCount;
        $data['ruca'] = $category;
        $data['ruim'] = 1;
        $data['ruct'] = date(DATE_ATOM);
        $data['rumt'] = date(DATE_ATOM);
        if($recipes -> addRecipe($data)) {
            $countIg = count($_POST['igId']);

            $dataIg = array(array());
            for ($i=0; $i < $countIg; $i++) {
                $reId = $_SESSION['RecipeId'];
                $igId = $_POST['igId'][$i];
                $amount = $_POST['amount'][$i];

                $dataIg[$i]['urig'] = $reId;
                $dataIg[$i]['igur'] = $igId;
                $dataIg[$i]['igam'] = $amount;
            }
            if($recipes -> addIngredientsToRecipe($dataIg, $countIg)){
                $countStep = count($_POST['step']);

                $dataSteps = array(array());
                for ($i=0; $i < $countStep; $i++) {
                    $scon = $_POST['step'][$i];
                    $sino = $i;
                    $stri = $_SESSION['RecipeId'];

                    $dataSteps[$i]['scon'] = $scon;
                    $dataSteps[$i]['sino'] = $sino;
                    $dataSteps[$i]['stri'] = $stri;
                }
                if($recipes -> addStepsToRecipe($dataSteps, $countStep)){
                    $logs -> addLog(6, $ipId, "Recipe ". $_SESSION['RecipeId'] ." added by ". $_SESSION['username']);
                    unset($_SESSION['RecipeId']);
                    redirect($_SERVER['PHP_SELF'], 'You add recipe', 'success');
                } else {
                    $logs -> addLog(6, $ipId, "Recipe add error [addSteps]");
                    redirect($_SERVER['PHP_SELF'], 'Something went wrong', 'error');
                }
            } else {
                $logs -> addLog(6, $ipId, "Recipe add error [addIngredients]");
                redirect($_SERVER['PHP_SELF'], 'Something went wrong', 'error');
            }
        } else {
            $logs -> addLog(6, $ipId, "Recipe add error [addRecipe]");
            redirect($_SERVER['PHP_SELF'], 'Something went wrong', 'error');
        }
    }

    echo $template;
?>