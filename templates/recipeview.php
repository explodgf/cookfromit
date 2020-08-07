<?php include 'inc/header.php';?>
    <main class="main">
        <section class="recipe recipe-container">
            <div class="info-box">
                <div class="container-first">
                    <h1><?php echo $reci -> RETI; ?></h1>
                    <h2>Author: <?php echo $reci -> UNAM; ?></h2>
                    <div class="info-container">
                        <div class="icon-box">
                            <img src="public/assets/icons8593ae/speed.svg" alt="icon" class="first"/>
                        </div>
                        <p><?php echo $reci -> REPT; ?></p>
                        <div class="icon-box">
                            <img src="public/assets/icons8593ae/medium.svg" alt="icon"/>
                        </div>
                        <p><?php echo $reci -> DNAM; ?></p>
                        <div class="icon-box" id="like-button">
                            <svg id="like" class="likeUnactive" xmlns="http://www.w3.org/2000/svg" width="28.827" height="27.666" viewBox="0 0 28.827 27.666">
                                <g transform="translate(0.5 0.5)">
                                    <g id="Group_12" data-name="Group 12" transform="translate(0 11.594)">
                                    <g id="Group_11" data-name="Group 11" transform="translate(0 0)">
                                        <path id="Path_54" data-name="Path 54" d="M2.9,224A2.9,2.9,0,0,0,0,226.9v9.275a2.9,2.9,0,0,0,2.9,2.9H6.377a2.878,2.878,0,0,0,1.739-.587V224Z" transform="translate(0 -224)" stroke="#8593ae" stroke-width="1"/>
                                    </g>
                                    </g>
                                    <g id="Group_14" data-name="Group 14" transform="translate(9.275)">
                                    <g id="Group_13" data-name="Group 13" transform="translate(0 0)">
                                        <path id="Path_55" data-name="Path 55" d="M189.217,26.609a2.571,2.571,0,0,0-.755-1.825,2.879,2.879,0,0,0,.742-2.213,3,3,0,0,0-3.024-2.628h-7.162a16.669,16.669,0,0,0,.923-4.638c0-2.515-2.137-4.638-3.478-4.638a3.647,3.647,0,0,0-2.1.706.583.583,0,0,0-.217.453v3.931l-3.339,7.233-.139.071V35.488a7.6,7.6,0,0,0,2.9.685h10.642a2.667,2.667,0,0,0,2.627-2.025,2.608,2.608,0,0,0-.21-1.741,2.6,2.6,0,0,0,1.161-3.479A2.6,2.6,0,0,0,189.217,26.609Z" transform="translate(-170.667 -10.667)"  stroke="#8593ae" stroke-width="1"/>
                                    </g>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <p><?php echo $reci -> RELC; ?></p>
                        <div class="icon-box">
                            <img src="public/assets/icons8593ae/social.svg" alt="icon"/>
                        </div>
                        <p><?php echo $reci -> REAM; ?></p>
                    </div>

                </div>
                <div class="ingredients-title">
                    <h2>Ingredients</h2>
                </div>
                <div class="ingredients" id="scroll">
                    <?php foreach($ingredients as $ing):?>
                        <div class="box">
                            <label class="checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                            <div class="info">
                                <div class="name">
                                    <p><?php echo $ing -> IGNA; ?></p>
                                </div>
                                <div class="value">
                                    <p><?php echo $ing -> IGAM ." " . $ing -> MENA ?></p>
                                </div>
                            </div>
                        </div>
                    <?php endforeach;?>
                </div>
            </div>
            <div class="line"></div>
            <div class="steps-img-box">
                <div class="area">
                    <div class="container-first right">
                        <div class="img-box">
                            <img src="<?php echo $reci -> RIUR; ?>" alt="<?php echo $reci -> RIAN; ?>"/>
                        </div>
                    </div>
                    <div class="steps-title">
                        <h2>Preparation step by step</h2>
                    </div>
                    <div class="steps" id="scroll">
                        <?php foreach($steps as $step):?>
                            <div class="step">
                                <div class="step-id">
                                    <span >Step <?php echo $step -> SINO+1; ?></span>
                                </div>
                                <div class="step-content">
                                    <p><?php echo $step -> SCON; ?></p>
                                </div>
                            </div>
                        <?php endforeach;?>
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
                <div class="comment">
                    <div class="user-avatar">
                        <img src="https://www.w3schools.com/w3images/team2.jpg" alt="avatar"/>
                    </div>
                    <div class="user-comment">
                        <p>Username</p>
                        <p class="content">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Fuga, nobis facere sapiente qui ratione cum fugiat totam autem omnis corrupti, rem voluptate et vitae, assumenda atque labore perferendis minus excepturi?</p>
                    </div>
                </div>
            </div>
            <div class="enter-comment">
                <form>
                    <textarea></textarea>
                    <div class="submit-section">
                        <input type="submit" value="Add comment"/>
                    </div>
                </form>
            </div>
        </section>
        <div class="wave"></div>
    </main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->
<script>
    $('#like-button').click(function(){
        if ($('#like').hasClass('likeUnactive')) {
            $('#like').removeClass('likeUnactive');
            $('#like').addClass('likeActive');
        } else {
            $('#like').removeClass('likeActive');
            $('#like').addClass('likeUnactive');
        }
    })
</script>