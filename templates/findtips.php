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
            <div class="center-box">
                <div class="category-chooser">
                    <div class="category-box">
                        <div class="category left">
                            <p>Faster and better cooking</p>
                            <h2>cooking</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/cooking.svg" alt="cooking icon"/>
                            </div>
                        </div>
                    </div>
                    <div class="category-box" >
                        <div class="category right">
                            <h2>preparation</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/cuting.svg" alt="cooking icon"/>
                            </div>
                            <p>Faster dish preparation</p>
                        </div>
                    </div>
                    <div class="category-box">
                        <div class="category left">
                            <h2>kitchen DIY</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/toolbox.svg" alt="cooking icon"/>
                            </div>
                            <p>Create something to your kitchen</p>
                        </div>
                    </div>
                    <div class="category-box">
                        <div class="category right">
                            <h2>fresh longer</h2>
                            <div class="icon-box">
                                <img src="public/assets/icons5A4E4D/vegetable.svg" alt="cooking icon"/>
                            </div>
                            <p>Tips for longer fresh food</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="center-box search-box">
                <div class="search-tips">
                    <input type="text" autocomplete="off" placeholder="Add some ingredients..." />
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
                <a href="#">
                    <div class="tip-card">
                        <div class="img-box">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSS1x1gSB2Um_jNMDFL5F1rzsO2IWg4OIspYPhHs33h9wmMO-lb&usqp=CAU" alt="tip"/>
                        </div>
                        <div class="title">
                            <h3>
                                Stowed Beries
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
