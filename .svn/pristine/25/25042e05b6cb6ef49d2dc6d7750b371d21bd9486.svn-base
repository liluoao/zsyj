
$(function () {
    var state = false;
    $('#txtEmail').focus(function () {
        if (state == false) {
            $(this).val('');
        }
    })
    $('#txtEmail').blur(function () {
        if ($(this).val() == '') {
            $('#spinfo').text('邮箱不能为空');
            $(this).focus();
        }
        else {
            if (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($(this).val()) == false) {
                $('#spinfo').text('邮箱格式不正确，请重新输入');
                $(this).focus();
            }
            else {
                $('#spinfo').text('邮箱格式正确，继续输入');
                $('#spinfo').text('');
                $('#spinfo').append('');
                state = true;
            }
        }
    })
})
$(function () {
    <!--发送密码显示文字-->
    $('#button').click(function () {
        var proStr = "";
        proStr = 'email='+$('#txtEmail').val()+"&verifyCode="+$('#verification').val();;
        $.ajax({
            url: sendemailUrl,
            type: "post",
            dataType: "text",
            data: proStr,
            async: false,
            success: function (data){
                if(data == "verifyError"){
                    $('#spinfo1').text('验证码错误');
                    $("#verification").val('');
                    $("#verification").focus();
                    $('#certImg').click();
                    return ;
                }else{
                    if(data == 'success'){
                        $('#spinfo2').text('密码发送到你的邮箱，请注意查收');
                        $('#spinfo1').text('');
                    }else{
                        $('#spinfo3').text('发送失败！请检查邮箱是否正确');
                        $('#spinfo1').text('');
                    }
                }

            },
            error:function(data){
                return false;
            }
        });

    })
})