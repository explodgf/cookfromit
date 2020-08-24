$('.menu-icon').click(function(){
    $('.menu-icon').toggleClass('menu-iconOn');
    $('.icon').toggleClass('iconOn');
    $('.menu').toggleClass('menuOn');
})

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

$(document).ready(function() {
    $('.alert-box').delay(5000).fadeOut(1000); // 5 seconds x 1000 milisec = 5000 milisec
});