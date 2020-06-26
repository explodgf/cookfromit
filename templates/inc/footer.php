        <footer class="footer">
            <div class="footer-container">
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
        </footer>
    </body>
    <script>
        $('.menu-icon').click(function(){
            $('.menu-icon').toggleClass('menu-iconOn');
            $('.icon').toggleClass('iconOn');
            $('.menu').toggleClass('menuOn');
        })
    </script>
    <script>
        window.onscroll = () => {
            const nav = document.querySelector('#navbar');
            if (this.scrollY <= 1) {
                nav.classList.add("navigation");
                nav.classList.remove("scroll");
            }
            else {
                nav.classList.add("scroll", "navigation");
            }
        };
    </script>
</html>