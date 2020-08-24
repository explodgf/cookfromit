$(document).ready(function(){
    $('.add-ingredients input[type="text"]').on("keyup input", function(){
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
        $(this).parents(".add-ingredients").find('input[type="text"]').val($('p',this).text());
        $(this).parents(".add-ingredients").find('.measure').val($('#mena',this).text());
        $(this).parents(".add-ingredients").find('.igId').val($('#igid',this).text());
        $(this).parent(".result").empty();
    });
});
$(document).ready(function(){
    $(document).on("click", "#add", function(){
        var ingredient = $('.ig').val();
        var measure = $('.measure').val();
        var ingredientId = $('.igId').val();
        if(ingredient != 'No matches found' && ingredient != '') {
            $(".ing-box").append('<div id="ig" class="ingredient"><input hidden name="igId[]" type="text" autocomplete="off" required value="'+ ingredientId +'"/><h2>' + ingredient + '<input name="amount[]" class="amount" type="text" autocomplete="off" required/>'+ measure +'</h2><div class="trash" id="remove" ><i class="fas fa-trash"></i></div></div>');
            $('.ig').val('');
            $('.measure').val('');
            $('.igId').val('');
        } else {
            $('.ig').val('');
            $('.measure').val('');
            $('.igId').val('');
        }
    });
    $('.ing-box').on('click','#remove', function () {
        $(this).parent('#ig').remove();
    });
});
$(document).ready(function(){
    var count = 1;
    $(document).on("click", "#stepAdd", function(){
        var step = $('.add-steps').val();
        if(step != '') {
            $(".form-box-bottom").append('<div class="step-box" id="step"><div class="step-count">'+ count +'</div><input hidden name="stepId[]" type="text" autocomplete="off" required value="'+ count +'"/><textarea class="step" name="step[]" required>'+ step +'</textarea></div>');
            $('.add-steps').val('');
            count++;
        } else {
            $('.add-steps').val('');
        }
    });
});