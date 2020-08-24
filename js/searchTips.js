$(document).ready(function(){
    $('.search-tips input[type="text"]').on("keyup input", function(){
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("helpers/search_handler.php", {termTip: inputVal}).done(function(data){
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });

    $(document).on("click", ".result div", function(){
        tipid = $('#tipid', this).text();
        window.location.href="tip_view.php?tipId="+tipid+"";
    });
});