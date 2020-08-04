<?php include 'inc/header.php';?>
<main class="main">
    <div class="find-tips-container">
        <section class="find-tips">
            <div class="center-box">
                <div class="title">
                    <h1>Tips</h1>
                    <span>&</span>
                    <h1>Tricks</h1>
                </div>
                <div class="subtitle">
                    <h2>For faster and better cooking</h2>
                </div>
            </div>
            <form class="center-box" method="POST">
                <div class="category-chooser">
                    <div class="category-box">
                        <button type="submit" name="submit" class="category left" value="1">
                            <p>Faster and better cooking</p>
                            <h2>cooking</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/cooking.svg" alt="cooking icon"/>
                            </div>
                        </button>
                    </div>
                    <div class="category-box" >
                        <button type="submit" name="submit" class="category right" value="2">
                            <h2>preparation</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/cuting.svg" alt="cooking icon"/>
                            </div>
                            <p>Faster dish preparation</p>
                        </button>
                    </div>
                    <div class="category-box">
                        <button type="submit" name="submit" class="category left" value="3">
                            <h2>kitchen DIY</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/toolbox.svg" alt="cooking icon"/>
                            </div>
                            <p>Create something to your kitchen</p>
                        </button>
                    </div>
                    <div class="category-box">
                        <button type="submit" name="submit" class="category right" value="4">
                            <h2>fresh longer</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/vegetable.svg" alt="cooking icon"/>
                            </div>
                            <p>Tips for longer fresh food</p>
                        </button>
                    </div>
                </div>
            </form>
            <div class="center-box search-box">
                <div class="search-tips">
                    <input type="text" autocomplete="off" placeholder="What are you loooking for?" />
                    <div class="result" id="scroll">
                        <!--<p>test</p>
                        <p>test</p>
                        <p>test</p>
                        <p>test</p>
                        <p>test</p>
                        <p>test</p>
                        <p>test</p>
                        <p>test</p>-->
                    </div>
                </div>
            </div>
        </section>
        <section class="tips-grid">
            <h1>Tips & Tricks for you</h1>
            <div class="grid pagination-results">
                <?php foreach($tips as $tip): ?>
                    <a href="#?id=<?php echo $tip -> TTID; ?>">
                        <div class="tip-card">
                            <div class="img-box">
                                <img src="<?php echo $tip -> TIUR; ?>" alt="<?php echo $tip -> TIAN; ?>"/>
                            </div>
                            <div class="title">
                                <h3>
                                    <?php echo $tip -> TIIT; ?>
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
<script>
    $(".category").click(function() {
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
    $('.search-tips input[type="text"]').on("keyup input", function(){
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("helpers/search_handler.php", {termTip: inputVal}).done(function(data){
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });

    $(document).on("click", ".result div", function(){
        $(this).parents(".search-ing").find('input[type="text"]').val($('p',this).text());
        $(this).parent(".result").empty();
    });
});
</script>