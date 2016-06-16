/**
 * Created by MacheNike on 2016/4/9.
 */
$(document).ready(function(){
    /*数量加减*/
    $(".add").click(function() {
        var n=$(this).prev().val();
        var num=parseInt(n)+1;
        if(num==0){ return;}
        $(this).prev().val(num);
    });
    $(".reduce").click(function(){
        var n=$(this).next().val();
        var num=parseInt(n)-1;
        if(num==0){ return}
        $(this).next().val(num);
    });
});

//立刻购买
function buynow(id) {
    var userStr = "id=" + id+'&num='+$(".num").val();
    $.ajax({
        url: addshopcartUrl,
        type: "post",
        dataType: "text",
        data: userStr,
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

//加入购物车
function addshopcart(id) {
    var userStr = "";
    userStr += "id=" + id+'&num='+$(".num").val();
    $.ajax({
        url: addshopcartUrl,
        type: "post",
        dataType: "text",
        data: userStr,
        async: false,
        success: function (text){
            if(text == ''){
                $("#full").show();
            }else{
                $(".cart_num").html(text);
            }
        },
        error: function(text){
            alert(text);
        }
    });
}