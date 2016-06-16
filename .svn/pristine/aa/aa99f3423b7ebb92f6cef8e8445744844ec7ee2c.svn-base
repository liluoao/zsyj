/**
 * Created by Administrator on 2016/4/2.
 */
$(document).ready(function() {
    $(".right ul li").click(function () {
    }, function () {
        $(this).find(".sidebox1")
    });
});

//打开购物车
function openshopcart() {
    var productStr = '';
    $.ajax({
        url: shoppingcartUrl,
        type: "post",
        data: productStr,
        dataType: "text",
        async: false,
        success: function (text){
            if(text == ''){
                $("#full").show();
            }else{
                window.location.href = shoppingcartUrl;
            }
        },
        error: function(text){
            alert(text);
        }
    });
}