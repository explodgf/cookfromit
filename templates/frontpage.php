<?php include 'inc/header.php';?>
    <section class="hero">
        <div class="hero-inner">
            <h1>Cook from it</h1>
            <h2>Cook with ingredients from your fridge</h2>
            <a href="find_recipe.php" class="hero-btn"><img src="public/assets/chef.svg" alt="chef hat"></a>
            <div class="pointer-hero">
                <img src="public/assets/arrow.svg">
                <h2>Find recipe</h2>
            </div>
        </div>
    </section>
    <?php displayMessage();?>
</body>
</html>
<script> </script>  <!--BUG taransition fix for Chrome-->
<script>
    $('.menu-icon').click(function(){
        $('.menu-icon').toggleClass('menu-iconOn');
        $('.icon').toggleClass('iconOn');
        $('.menu').toggleClass('menuOn');
    })
</script>
<script>
$(document).ready(function() {
  $('.alert-box').delay(5000).fadeOut(1000); // 5 seconds x 1000 milisec = 5000 milisec
});
</script>