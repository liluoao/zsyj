/**
 * Created by Administrator on 2016/4/2.
 */
$(document).ready(function() {
    $(".close").click(function () {
        $("#full").hide();
    });
});

//使用ajax进行登录
function webLogin(){
    var username = $("#username").val();
    var password = $("#password").val();
    if(username == ''){
        alert('用户名不能为空！');
        return;
    }else if(password == ''){
        alert('密码不能为空！');
        return;
    }
    var paraStr = '';
    paraStr = "username="+username+"&password="+password;
    $.ajax({
        url: webLoginUrl,
        type: "post",
        dataType: "text",
        data:paraStr,
        async: "false",
        success: function (data) {
            if(data == "fail"){
                alert('用户名或密码错误');
                return ;
            }else{
                $("#username").val('');
                $("#password").val('');
                $("#full").hide();
                alert('登录成功，开始购物之旅吧！');

            }

        },
        error:function(data){
            alert('登录失败！');
            return false;
        }
    });
}
