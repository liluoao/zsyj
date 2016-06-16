/**
 * Created by Administrator on 2016/4/2.
 */
$(document).ready(function() {
    //微信悬浮
    $(".weixin").hover(function () {
        $(".weixinerweima").show();
    }, function () {
        $(".weixinerweima").hide();
    });

    if(footer_color != ''){
        $('div.footer').attr('style',"background-color: "+footer_color);
    }
})
