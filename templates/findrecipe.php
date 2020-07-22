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
                        <button class="img-box">
                            <img src="public/assets/breakfest.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Breakfest</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box">
                            <img src="public/assets/cuisine.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Dinner</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box">
                            <img src="public/assets/dessert.svg" alt="magnification-glass"/>
                        </button>
                        <h2>Dessert</h2>
                    </div>
                    <div class="category-box">
                        <button class="img-box">
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
                <form class="ing-list-form">
                        <h1>Your ingredients list:</h1>
                        <div class="ing-box" id="scroll">
                        </div>
                        <input type="submit" value="Cook from it!" class="submit"/>
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
                <a href="#">
                    <div class="recipe-card">
                        <div class="img-box">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSS1x1gSB2Um_jNMDFL5F1rzsO2IWg4OIspYPhHs33h9wmMO-lb&usqp=CAU" alt=recipe/>
                            <div class="reci-info">
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/speed.svg" alt="icon" class="first"/>
                                </div>
                                <p>45 min</p>
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/medium.svg" alt="icon"/>
                                </div>
                                <p>Medium</p>
                                <div class="icon-box">
                                    <img src="public/assets/iconsDDA288/like.svg" alt="icon"/>
                                </div>
                                <p>1300</p>
                            </div>
                        </div>
                        <div class="title">
                            <h3>
                                Potatoes with peppers in sauce
                            </h3>
                        </div>
                    </div>
                </a>
            </div>
        </section>
        <div class="wave"></div>
    </div>
</main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->
<script>
    $("button").click(function() {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
        } else {
            $(".active").removeClass("active");
            $(this).addClass('active');
        }
    });
</script>
<script>
$(document).ready(function(){
    $('.search-ing input[type="text"]').on("keyup input", function(){
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("helpers/search_handler.php", {term: inputVal}).done(function(data){
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });

    $(document).on("click", ".result div", function(){
        $(this).parents(".search-ing").find('input[type="text"]').val($('p',this).text());
        $(this).parents(".search-ing").find('.igId').val($('#igid',this).text());
        $(this).parent(".result").empty();
    });
});
</script>
<script>
$(document).ready(function(){
    $(document).on("click", "#add", function(){
        var ingredient = $('.ig').val();
        var ingredientId = $('.igId').val();
        if(ingredient != 'No matches found' && ingredient != '') {
            $(".ing-box").append('<div class="ingredient" id="ig"><input hidden name="igId[]" type="text" autocomplete="off" required value="'+ ingredientId +'"/><h2>' + ingredient + '</h2><div class="trash" id="remove" ><i class="fas fa-trash"></i></div></div>');
            $('.ig').val('');
        } else {
            $('.ig').val('');
            $('.igId').val('');
        }
    });
    $('.ing-box').on('click','#remove', function () {
        $(this).parent('#ig').remove();
    });
});
</script>