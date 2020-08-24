$("button").click(function() {
    if ($(this).hasClass("active")) {
        $(this).removeClass("active");
    } else {
        $(".active").removeClass("active");
        $(this).addClass('active');
        var catId = $(this).val();
        $('#category_id').val(catId);
    }
});
$(".category").click(function() {
    if ($(this).hasClass("active")) {
        $(this).removeClass("active");
    } else {
        $(".active").removeClass("active");
        $(this).addClass('active');
    }
});
$(".icon-box").click(function() {
    if ($(this).hasClass("active")) {
        $(this).removeClass("active");
    } else {
        $('.active').removeClass("active");
        $(this).addClass('active');
    }
});