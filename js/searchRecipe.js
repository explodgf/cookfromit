$(document).ready(function(){
    $('.search-ing input[type="text"]').on("keyup input", function(){
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("helpers/search_handler.php", {term: inputVal}).done(function(data){
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });

    $(document).on("click", ".result div", function(){
        $(this).parents(".search-ing").find('input[type="text"]').val($('p',this).text());
        $(this).parents(".search-ing").find('.igId').val($('#igid',this).text());
        $(this).parent(".result").empty();
    });
});

$(document).ready(function(){
    $(document).on("click", "#add", function(){
        var ingredient = $('.ig').val();
        var ingredientId = $('.igId').val();
        if(ingredient != 'No matches found' && ingredient != '') {
            $(".ing-box").append('<div class="ingredient" id="ig"><input hidden name="igId[]" type="text" autocomplete="off" required value="'+ ingredientId +'"/><h2>' + ingredient + '</h2><div class="trash" id="remove" ><i class="fas fa-trash"></i></div></div>');
            $('.ig').val('');
        } else {
            $('.ig').val('');
            $('.igId').val('');
        }
    });
    $('.ing-box').on('click','#remove', function () {
        $(this).parent('#ig').remove();
    });
});