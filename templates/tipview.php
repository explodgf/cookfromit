<?php include 'inc/header.php';?>
    <main class="main">
        <section class="tip tip-container">
            <div class="info-box">
                <div class="container-first">
                    <h1><?php echo $tip -> TIIT; ?></h1>
                    <div class="content-box">
                        <div class="title">
                            <h2>Problem:</h2>
                        </div>
                        <div class="content">
                            <p><?php echo $tip -> TPRO; ?></p>
                        </div>
                    </div>
                    <div class="content-box solution">
                        <div class="title">
                            <h2>Solution:</h2>
                        </div>
                        <div class="content">
                            <p><?php echo $tip -> TSOL; ?></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="line"></div>
            <div class="box">
                <div class="area">
                    <div class="container-first right">
                        <div class="img-box">
                            <img src="<?php echo $tip -> TIUR; ?>" alt="<?php echo $tip -> TIAN; ?>"/>
                        </div>
                    </div>
                    <div class="useful-box">
                        <h2>Is that useful?</h2>
                        <div class="icon-box">
                            <svg id="yes" xmlns="http://www.w3.org/2000/svg" width="45.751" height="37.76" viewBox="0 0 35.751 27.76">
                                <path id="shapes-and-symbol" d="M13.69,27.631a1.824,1.824,0,0,1-2.581,0L.8,17.323a2.737,2.737,0,0,1,0-3.872l1.291-1.291a2.737,2.737,0,0,1,3.872,0L12.4,18.6,29.786,1.208a2.737,2.737,0,0,1,3.872,0L34.948,2.5a2.737,2.737,0,0,1,0,3.872Zm0,0" transform="translate(0 -0.406)"/>
                            </svg>
                        </div>
                        <div class="icon-box">
                            <svg id="no" data-name="No" xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 28.9 28.9">
                                <rect id="Rectangle_3" data-name="Rectangle 3" width="35.032" height="5.839" rx="2.919" transform="translate(0 24.771) rotate(-45)"/>
                                <rect id="Rectangle_4" data-name="Rectangle 4" width="35.032" height="5.839" rx="2.919" transform="translate(4.129 0) rotate(45)" />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="comments">
            <div class="header">
                <div class="icon">
                    <img src="public/assets/comments.svg" alt="comments icon"/>
                </div>
                <div class="title">
                    <h1>Your opinions</h1>
                </div>
            </div>
            <div class="comments-container" id="scroll">
                <?php foreach($coments as $coment):?>
                    <div class="comment">
                        <div class="user-avatar">
                            <img src="<?php echo $coment -> UIUR; ?>" alt="<?php echo $coment -> UIAN; ?>"/>
                        </div>
                        <div class="user-comment">
                            <p><?php echo $coment -> UNAM; ?></p>
                            <p class="content"><?php echo $coment -> CCON; ?></p>
                        </div>
                    </div>
                <?php endforeach;?>
            </div>
            <?php if(isset($_SESSION['userId'])):?>
            <div class="enter-comment">
                <form method="POST">
                    <textarea name="comContent"></textarea>
                    <div class="submit-section">
                        <input hidden name="tipId" value="<?php echo $tip -> TTID; ?>"/>
                        <input type="submit" name="comment" value="Add comment"/>
                    </div>
                </form>
            </div>
            <?php endif; ?>
        </section>
        <div class="wave"></div>
    </main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->
<script src="js/buttons.js"></script>