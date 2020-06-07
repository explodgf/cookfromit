<?php include 'inc/header.php';?>
    <main class="registration">
        <div class="reg-container">
            <h1>Join to <img src="public/assets/logo_name.svg"></h1>
            <h2>Why should you join us?</h2>
            <div class="reg-info-box">
                <div class="reg-info-circle"><img src="public/assets/like.svg" alt="thumb up"></div>
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
            <p class="privacy">By creating an account, you agree to the <span>Terms of Service</span>. For more information about Cook From It privacy practices, see the <span>Cook From It Privacy Statement</span>. We'll occasionally send you account-related emails.</p>
        </form>
        </div>
        <div class="wave">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 200">
            <path fill="#8593ae" fill-opacity="1" d="m 0,26.509568 c 113.19475,114.920912 166.73354,-33.6512659 323.91625,-10.7 81.49851,15.19551 210.94916,68.17458 358.38186,82.465602 78.50149,8.69701 148.01196,-14.801492 254.98504,-50.092522 79.99995,-26.7 149.51045,-52.7059809 229.51045,-47.51645009 96.8955,4.29616999 193.035,33.53626009 275.1645,76.56730009 L 1440,306.92133 H 1400 1200 960 720 480 240 40 0 Z"></path>
        </svg>
        </div>
</main>
<?php include 'inc/footer.php';?>