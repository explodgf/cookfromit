<?php include 'inc/header.php';?>
<main class="main">
    <div class="find-rec-container">
        <section class="find-recipe">
            <div class="center-box">
                <h1>Find recipe</h1>
                <img src="public/assets/mag-glass.svg" alt="magnification-glass"/>
                <h1>for today</h1>
            </div>
            <div class="center-box">
                <div class="find-info-pointer">
                        <img src="public/assets/arrow.svg">
                        <h2>First Step<br><span>choose occasion</span></h2>
                </div>
                <div class="category-choose">
                    <div class="category-box">
                        <button class="img-box" value="1">
                            <img src="public/assets/breakfest.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Breakfest</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box" value="2">
                            <img src="public/assets/cuisine.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Dinner</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box" value="3">
                            <img src="public/assets/dessert.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Dessert</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box" value="4">
                            <img src="public/assets/sandwich.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Supper</h2>
                    </div>
                </div>
            </div>
            <div class="center-box">
                <div class="second">
                    <img src="public/assets/arrow.svg">
                    <h2>Second Step<br><span>Add some ingredients from you fridge</span></h2>
                </div>
                <div class="search-ing">
                    <input class="ig" type="text" autocomplete="off" placeholder="Add some ingredients..." />
                    <input hidden class="igId"/>
                    <i id="add" class="fas fa-plus"></i>
                    <div class="result" id="scroll">
                    </div>
                </div>
            </div>
            <div class="center-box">
                <form class="ing-list-form" method="POST">
                        <input hidden name="cat_id" id="category_id" type="text" value="none"/>
                        <h1>Your ingredients list:</h1>
                        <div class="ing-box" id="scroll">
                        </div>
                        <input type="submit" value="Cook from it!" class="submit" name="submit"/>
                </form>
                <div class="third">
                    <img src="public/assets/arrow.svg">
                    <h2>Third Step<br><span>Find something for you!</span></h2>
                </div>
            </div>
        </section>
        <section class="recipe-grid">
            <h1>Three most popular dishes</h1>
            <div class="grid pagination-results">
            <?php foreach($recipes as $recipe): ?>
                <a href="recipe_view.php?reciId=<?php echo $recipe -> REID;?>">
                    <div class="recipe-card">
                        <div class="img-box">
                            <img src="<?php echo $recipe -> RIUR; ?>" alt='<?php echo $recipe -> RIAN; ?>'/>
                            <div class="reci-info">
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/speed.svg" alt="icon" class="first"/>
                                </div>
                                <p><?php echo $recipe -> REPT; ?></p>
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/medium.svg" alt="icon"/>
                                </div>
                                <p><?php echo $recipe -> DNAM; ?></p>
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/like.svg" alt="icon"/>
                                </div>
                                <p><?php echo $recipe -> RELC; ?></p>
                            </div>
                        </div>
                        <div class="title">
                            <h3>
                                <?php echo $recipe -> RETI;?>
                            </h3>
                        </div>
                    </div>
                </a>
            <?php endforeach;?>
            </div>
        </section>
        <div class="wave"></div>
    </div>
</main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->
<script src="js/buttons.js"></script>
<script src="js/searchRecipe.js"></script>