<?php include 'inc/header.php';?>
    <main class="main">
        <div class="reg-container">
            <h1>Join to <img src="public/assets/logo_name.svg"></h1>
            <h2>Why should you join us?</h2>
            <div class="reg-info-box">
                <div class="reg-info-circle"><img src="public/assets/icons8593ae/like.svg" alt="thumb up"></div>
                <div class="reg-info-circle"><img src="public/assets/comments.svg" alt="opinions"></div>
                <div class="reg-info-circle"><img src="public/assets/communications.svg" alt="send recipe"></div>
                <div class="reg-info-pointer">
                    <img src="public/assets/arrow.svg">
                    <h2>Add recipes to your favorite</h2>
                </div>
                <div class="reg-info-pointer">
                    <img src="public/assets/arrow.svg">
                    <h2>Share your best recipes</h2>
                </div>
                <div class="reg-info-pointer">
                    <img src="public/assets/arrow.svg">
                    <h2>Add your opinions to the recipes</h2>
                </div>
            </div>
            <form class="reg-form" >
                <div class="form-group">
                    <label for="username">Username *</label>
                    <input type="text" id="username" required autocomplete="off" class="even"/>
                </div>
                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" id="email" required autocomplete="off"/>
                </div>
                <div class="form-group">
                    <label for="password">Password *</label>
                    <input type="password" id="password" required autocomplete="off" class="even"/>
                </div>
                <div class="form-group">
                    <label for="passwordC">Confirm password *</label>
                    <input type="password" id="passwordC" required autocomplete="off"/>
                </div>
                <p>Make sure it's at least 8 characters including a number, special chars and lowercase, uppercase letter.</p>
                <input type="submit" value="Register"/>
                <p class="privacy">By creating an account, you agree to the <a href="public/termsofservices.txt" target="_blank">Terms of Service</a>. For more information about Cook From It privacy practices, see the <a href="#" target="_blank">Cook From It Privacy Statement</a>. We'll occasionally send you account-related emails.</p>
            </form>
        </div>
        <div class="wave"></div>
</main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->