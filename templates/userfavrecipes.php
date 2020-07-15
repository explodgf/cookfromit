<?php include 'inc/header.php';?>
    <main class="main">
        <div class="fav-recipes-container">
            <h1>My favorite recipes</h1>
            <div class="fav-recipes-box" id="scroll">
            <?php foreach($likedRecipes as $recipe): ?>
                <div class="fav-recipe" id="fav-recipe">
                    <div class="img-box">
                        <img src="<?php echo $recipe -> RIUR; ?>" alt="<?php echo $recipe -> RIAN; ?>">
                    </div>
                    <div class="fav-recipe-info-box">
                        <h2><?php echo $recipe -> RETI; ?></h2>
                        <div class="fav-recipe-info">
                            <div class="icon-info-box">
                                <svg id="speed" xmlns="http://www.w3.org/2000/svg" width="45" height="33" viewBox="0 0 52.501 40.426">
                                    <path id="Path_50" data-name="Path 50" d="M200.658,6.3V3.11h3.11V0h-9.329V3.11h3.11V6.3a17.1,17.1,0,1,0,3.11,0Zm9.329,18.579H197.548V12.439h3.11v9.329h9.329Zm0,0" transform="translate(-163.706)"/>
                                    <path id="Path_51" data-name="Path 51" d="M0,210H12.542v3.11H0Zm0,0" transform="translate(0 -188.232)" />
                                    <path id="Path_52" data-name="Path 52" d="M30,120H42.646v3.11H30Zm0,0" transform="translate(-26.89 -107.561)" />
                                    <path id="Path_53" data-name="Path 53" d="M30,300H42.646v3.11H30Zm0,0" transform="translate(-26.89 -268.903)" />
                                </svg>
                            </div>
                            <p><?php echo $recipe -> REPT; ?></p>
                            <div class="icon-info-box">
                                <svg id="Medium-hard" xmlns="http://www.w3.org/2000/svg" width="45" height="33" viewBox="0 0 27 38">
                                    <rect id="Rectangle_37" data-name="Rectangle 37" width="8" height="18" transform="translate(0 20)" />
                                    <rect id="Rectangle_38" data-name="Rectangle 38" width="8" height="28" transform="translate(10 10)" />
                                    <g id="Rectangle_39" data-name="Rectangle 39" transform="translate(20)" fill="none" stroke-width="1">
                                        <rect width="8" height="38" stroke="none"/>
                                        <rect x="0.5" y="0.5" width="7" height="37" fill="none"/>
                                    </g>
                                </svg>
                            </div>
                            <p><?php echo $recipe -> DNAM; ?></p>
                            <div class="icon-info-box">
                                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="33" viewBox="0 0 42.405 40.638">
                                    <g id="like" transform="translate(0 -10.667)">
                                        <g id="Group_12" data-name="Group 12" transform="translate(0 28.336)" >
                                        <g id="Group_11" data-name="Group 11" transform="translate(0 0)" >
                                            <path id="Path_54" data-name="Path 54" class="cls-1" d="M4.417,224A4.423,4.423,0,0,0,0,228.417v14.135a4.423,4.423,0,0,0,4.417,4.417h5.3a4.385,4.385,0,0,0,2.65-.894V224Z" transform="translate(0 -224)"/>
                                        </g>
                                        </g>
                                        <g id="Group_14" data-name="Group 14" transform="translate(14.135 10.667)" >
                                        <g id="Group_13" data-name="Group 13" transform="translate(0 0)" >
                                            <path id="Path_55" data-name="Path 55" class="cls-1" d="M198.937,34.961a3.918,3.918,0,0,0-1.15-2.781,4.387,4.387,0,0,0,1.131-3.373,4.567,4.567,0,0,0-4.608-4.006H183.4a25.4,25.4,0,0,0,1.406-7.067c0-3.832-3.256-7.067-5.3-7.067a5.557,5.557,0,0,0-3.2,1.076.888.888,0,0,0-.33.691v5.991l-5.089,11.024-.212.108V48.494a11.576,11.576,0,0,0,4.417,1.044H191.3a4.064,4.064,0,0,0,4-3.087,3.975,3.975,0,0,0-.32-2.654,3.957,3.957,0,0,0,1.769-5.3A3.955,3.955,0,0,0,198.937,34.961Z" transform="translate(-170.667 -10.667)" />
                                        </g>
                                        </g>
                                    </g>
                                </svg>
                            </div>
                            <p><?php echo $recipe -> RELC; ?></p>
                            <div class="icon-info-box">
                                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="33" viewBox="0 0 27.135 32.524">
                                    <g id="social" transform="translate(0 0)">
                                        <path id="Path_90" data-name="Path 90" d="M94.865,15.667a7.58,7.58,0,0,0,5.539-2.3A7.579,7.579,0,0,0,102.7,7.833a7.581,7.581,0,0,0-2.3-5.539,7.832,7.832,0,0,0-11.077,0,7.58,7.58,0,0,0-2.3,5.538,7.58,7.58,0,0,0,2.3,5.539A7.581,7.581,0,0,0,94.865,15.667Zm0,0" transform="translate(-81.503 0)" />
                                        <path id="Path_91" data-name="Path 91" d="M27.069,256.615a19.348,19.348,0,0,0-.264-2.055,16.191,16.191,0,0,0-.505-2.066,10.2,10.2,0,0,0-.849-1.927A7.272,7.272,0,0,0,24.17,248.9a5.648,5.648,0,0,0-1.84-1.156,6.359,6.359,0,0,0-2.349-.425,2.384,2.384,0,0,0-1.273.54c-.382.249-.828.537-1.326.855a7.6,7.6,0,0,1-1.716.756,6.664,6.664,0,0,1-4.2,0,7.582,7.582,0,0,1-1.715-.756c-.494-.315-.94-.6-1.328-.856a2.381,2.381,0,0,0-1.273-.54,6.351,6.351,0,0,0-2.349.426,5.642,5.642,0,0,0-1.84,1.156,7.273,7.273,0,0,0-1.28,1.669,10.224,10.224,0,0,0-.849,1.927,16.23,16.23,0,0,0-.505,2.066,19.28,19.28,0,0,0-.264,2.056c-.043.622-.065,1.268-.065,1.921a5.4,5.4,0,0,0,1.6,4.086,5.774,5.774,0,0,0,4.133,1.508H21.4a5.773,5.773,0,0,0,4.133-1.508,5.4,5.4,0,0,0,1.6-4.086c0-.655-.022-1.3-.066-1.921Zm0,0" transform="translate(0 -231.606)" />
                                    </g>
                                </svg>
                            </div>
                            <p><?php echo $recipe -> REAM; ?></p>
                        </div>
                        <p>Created by: <?php echo $recipe -> UNAM; ?></p>
                    </div>
                </div>
            <?php endforeach;?>
            </div>
        </div>
        <div class="wave"></div>
</main>
<?php include 'inc/footer.php';?>
<script> </script> <!--BUG taransition fix for Chrome-->