<nav class="navigation" id="navbar">
    <div class="nav-box">
        <div class="logo-box">
            <a href="index.php"><img src="public/assets/Logo.svg" alt="logo"/></a>
        </div>
        <div class="items-box">
            <ul>
                <a class="dropdown-holder" href="#" aria-haspopup="true"><li><div class="user-img"><img src="https://www.w3schools.com/w3images/team2.jpg" alt="user"/></div>Username<i class="fas fa-angle-down"></i></a>
                    <ul class="dropdown" aria-label="submenu">
                    <a href="userprofile.php"><li>My profile</li></a>
                    <a href="my_favorites_recipes.php"><li>Favorite recipes</li></a>
                    <a href="#"><li class="last">Logout</li></a>
                    </ul>
                </li>
                <li><a href="#login">Sign in</a></li>
                <li><a href="registration.php" class="border-last">Sign up</a></li>
                <li><a class="menu-icon">
                    Menu
                    <div class="icon-box">
                        <span class="icon"></span>
                    </div>
                </a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="login" class="modal-window">
    <div>
        <a href="#" title="Close" class="modal-close">Close</a>
        <div class="modal-header">
            <h1>Login</h1>
        </div>
            <form class="form-login" accept-charset="UTF-8">
                <label class="label-login">
                    Username / email
                </label>
                <div class="field-wrap-login">
                    <input class="input-login" type="text" required autocomplete="off"/>
                </div>
                <label class="label-login">
                    Password
                </label>
                <div class="field-wrap-login">
                    <input class="input-login" type="password" required autocomplete="off"/>
                </div>
                <p class="forgot-login"><a href="#">Forgot Password?</a></p>
                <button type="submit" class="button-login">Login</button>
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
<div class="menu">
    <div class="menu-box">
        <a class="item-box" href="index.php">
            <div class="num">
                <span>01</span>
            </div>
            <div class="content">
                <h1>Home</h1>
                <i class="fas fa-long-arrow-alt-right"></i>
            </div>
        </a>
        <a class="item-box" href="find_recipe.php">
            <div class="num">
                <span>02</span>
            </div>
            <div class="content">
                <h1>Find recipe</h1>
                <i class="fas fa-long-arrow-alt-right"></i>
            </div>
        </a>
        <a class="item-box" href="find_tips.php">
            <div class="num">
                <span>03</span>
            </div>
            <div class="content">
                <h1>Tips</h1>
                <i class="fas fa-long-arrow-alt-right"></i>
            </div>
        </a>
        <a class="item-box" href="send_recipe.php">
            <div class="num">
                <span>04</span>
            </div>
            <div class="content">
                <h1>Submit recipe</h1>
                <i class="fas fa-long-arrow-alt-right"></i>
            </div>
        </a>
        <a class="item-box" href="decider.php">
            <div class="num">
                <span>05</span>
            </div>
            <div class="content">
                <h1>Decider</h1>
                <i class="fas fa-long-arrow-alt-right"></i>
            </div>
        </a>
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