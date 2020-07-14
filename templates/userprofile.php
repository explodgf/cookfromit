<?php include 'inc/header.php';?>
    <main class="main">
        <div class="user-container">
            <h1>UserName profile</h1>
            <div class="user-info">
                <div class="user-img-box">
                    <img src="https://www.w3schools.com/w3images/team2.jpg" alt="test"/>
                </div>
                <div class="user-data">
                    <div class="user-data-row">
                        <label>Username: </label>
                        <input type="text" placeholder="UserNameTest" readonly/>
                        <div class="fix"></div>
                    </div>
                    <div class="user-data-row middle">
                        <label >Email:</label>
                        <input type="text" placeholder="UserEmail@Test" readonly/>
                        <div class="fix"></div>
                    </div>
                    <div class="user-data-row">
                        <label>Password: </label>
                        <input type="password" placeholder="********" readonly/>
                        <a href="#change">Change</a>
                    </div>
                </div>
            </div>
            <div class="user-recipes-title">
                <h2>My sent recipes</h2>
            </div>
            <div class="user-recipes-box" id="scroll">
                <?php foreach($userRecipes as $recipe): ?>
                    <div class="user-recipe">
                        <P><?php echo $recipe -> RUTI;?></P>
                        <p><?php echo $recipe -> RUCC;?> comments</p>
                        <p><?php echo $recipe -> RULC;?>likes</p>
                        <p><?php echo $recipe -> RUVC;?> views</p>
                    </div>
                <?php endforeach;?>
            </div>
        </div>
        <div class="wave"></div>
    </main>
<?php include 'inc/footer.php';?>
<div id="change" class="modal-window">
    <div>
        <a href="#" title="Close" class="modal-close">Close</a>
        <div class="modal-header">
            <h1>Change password</h1>
        </div>
            <form class="form-changePwd" accept-charset="UTF-8" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                <label class="label-changePwd">
                    Password
                </label>
                <div class="field-wrap-changePwd">
                    <input class="input-changePwd" type="password" required autocomplete="off" name="pwd-curently"/>
                </div>
                <label class="label-changePwd">
                    New password
                </label>
                <div class="field-wrap-changePwd">
                    <input class="input-changePwd" type="password" required autocomplete="off" name="new-pwd"/>
                </div>
                <label class="label-changePwd">
                    Repet password
                </label>
                <div class="field-wrap-changePwd">
                    <input class="input-changePwd" type="password" required autocomplete="off" name="new-pwd-repet"/>
                </div>
                <p>Make sure it's at least 8 characters including a number, special chars and lowercase, uppercase letter.</p>
                <input type="submit" value="Change" class="button-login" name="changePwd"/>
            </form>
    </div>
    <div class="modal-footer">
        <div class="footer-box">
                <div class="copyright">
                    <div class="dot-copyright"><i class="far fa-copyright"></i></div>
                    <p>Copyright 2020, Cook From It</p>
                </div>
                <div class="socials">
                    <p>Follow us:</p>
                    <div class="socials-icons">
                        <i class="fab fa-facebook"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-snapchat"></i>
                    </div>
                </div>
        </div>
    </div>
</div>
<script> </script> <!--BUG taransition fix for Chrome-->