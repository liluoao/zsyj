$(document).ready(function(){
	check_r();
	//显示协议
	$("#btn_1").click(function(){
		$("#full_1").show();
	});
	//关闭协议
	$("#close_1").click(function(){
		$("#full_1").hide();
	});
	$("#close_2").click(function(){
		$("#full_1").hide();
	});
	//弹出登录窗口
	$("#r_login").click(function(){
		$("#full").show();
	});

	$('#verification').click(function(){
		$("#t_veryCode").html('');
	})

})
//@function 检查注册表单填写数据是否合格
function check_r(){
	//检查用户名填写规范
	$("#r_username").blur(function(){
		var username = $("#r_username").val();
		if(username == ''){
			$("#t_username").html('用户名不能为空！');
			$("#r_username").focus();
			return false;
		}else{
			$.ajax({
				url: checkUsername,
				type: "post",
				dataType: "text",
				data:"username="+username,
				async: true,
				success: function (data) {
					if(data == "success"){
						$("#t_username").html('');
						return true;
					}else{
						$("#t_username").html('用户名重复！');
						$("#r_username").focus();
						return false;
					}

				},
				error:function(data){
					$("#t_username").html('连接服务器失败！');
					$("#r_username").focus();
					return false;
				}
			});
		}
	})

	//检查密码填写规范
	$("#r_password").blur(function() {
		if($("#t_username").html() != ''){
			return;
		}
		var password = $("#r_password").val();
		if (password == '') {
			$("#t_password").html('密码不能为空！');
			$("#r_password").focus();
			return false;
		}else{
			$("#t_password").html('');
			return true;
		}
	})
	//检查两次输入密码是否一致
	$("#r_password2").blur(function() {
		var password = $("#r_password").val();
		var password2 = $("#r_password2").val();
		if (password2 == '') {
			$("#t_password2").html('密码不能为空！');
			$("#r_password2").focus();
			return false;
		}else if(password != password2){
			$("#t_password2").html('两次密码不一致！');
			$("#r_password2").focus();
			return false;
		}else{
			$("#t_password2").html('');
			return true;
		}
	})
}
function submit_check(){
	var username = $("#r_username").val();
	if(username == ''){
		$("#t_username").html('用户名不能为空！');
		$("#r_username").focus();
		return false;
	}else{
		return true;
	}

	var password = $("#r_password").val();
	if (password == '') {
		$("#t_password").html('密码不能为空！');
		$("#r_password").focus();
		return false;
	}else{
		return true;
	}

	var password = $("#r_password").val();
	var password2 = $("#r_password2").val();
	if (password2 == '') {
		$("#t_password2").html('密码不能为空！');
		$("#r_password2").focus();
		return false;
	}else if(password != password2){
		$("#t_password2").html('两次密码不一致！');
		$("#r_password2").focus();
		return false;
	}else{
		return true;
	}
}
function register(){
	if(submit_check()){
		if($("#r_read").is(':checked')){
			var username = $('#r_username').val();
			var password = $('#r_password').val();
			var email = $('#r_email').val();
			var mobilephone = $('#r_mobilephone').val();
			var verification = $('#verification').val();
			var paraStr = '';
			paraStr = "username="+username+"&password="+password+"&email="+email+
							"&mobilephone="+mobilephone+"&verifyCode="+verification;
			$.ajax({
				url: registerUrl,
				type: "post",
				dataType: "text",
				data:paraStr,
				async: false,
				success: function (data) {
					if(data == "verifyError"){
						$("#t_veryCode").html('验证码错误！');

						$("#verification").val('');
						$("#verification").focus();
						$('#certImg').click();
						return ;
					}else{
						alert('注册成功');
						$('#r_username').val('');
						$('#r_password').val('');
						$('#r_email').val('');
						$('#r_mobilephone').val('');
						$('#verification').val('');
						$("#r_password2").val('');
						$("#r_read").removeAttr('checked');
						$("#full").show();
					}

				},
				error:function(data){
					alert('注册失败');
					return false;
				}
			});

		}else{
			alert("必须同意协议才能注册！");
			return false;
		}
	}


}


