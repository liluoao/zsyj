//提交联系我们
function send(){
	if(checkForm()){
		var paraStr = "";
		paraStr += "name=" + $("#name").val();
		paraStr += "&mobilephone=" + $("#mobilephone").val();
		paraStr += "&content=" + $("#content").val();
		$.ajax({
			url: saveUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: false,
			success: function (data) {
				if (data == "success") {
					alertTip('提交成功！',true);
					window.location.href= boardUrl;
				} else {
					alertTip('提交失败！',true);
				}

			},
			error: function (data) {
				alertTip('提交失败！',true);
			}
		});
	}
}

function checkForm(){
//验证姓名
	var s=$('form :input[id=name]').val();
	var $parent = $('form :input[id=name]').parent();
	$parent.find('.formtips').remove();

	var aw = $('form :input[id=mobilephone]').val();
	var $parent1 = $('form :input[id=mobilephone]').parent();
	$parent1.find('.formtips').remove();

	var c = $('form textarea').val();
	var $parent2 = $('form textarea').parent();
	$parent2.find('.formtips').remove();

	if (s == '' || (s != '' && /[@#\$%\^&\*]+/.test(s))) {
		var errormsg = '不能为空或输入非法符号';
		$parent.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
		return false;
	}
//验证手机
	if ( aw== '' || (aw != '' &&!/^1\d{10}$/.test(aw))) {
		var errormsg = '不能为空或输入格式错误';
		$parent1.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
		return false;
	}
	//验证留言
	if (c == '' ) {
		var errormsg = '内容不能为空';
		$parent2.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
	}else {
		return true;
	}

}


//表单验证
$(function() {
	$('form :input').blur(function () {
		var $parent = $(this).parent();
		$parent.find('.formtips').remove();
		//验证姓名
		if ($(this).is('#name')) {
			if (this.value == '' || (this.value != '' && /[@#\$%\^&\*]+/.test(this.value))) {
				var errormsg = '不能为空或输入非法符号';
				$parent.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
				return false;
			} else {
				var okmsg = '输入正确';
				$parent.append("<div id='fortips_ok' class='formtips ok'>" + okmsg + "</div>");
				return true;
			}
		}
		//验证手机
		if ($(this).is('#mobilephone')) {
			if (this.value == '' || (this.value != '' &&!/^1\d{10}$/.test(this.value))) {
				var errormsg = '不能为空或输入格式错误';
				$parent.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
				return false;
			} else {
				var okmsg = '输入正确';
				$parent.append("<div id='fortips_ok' class='formtips ok'>" + okmsg + "</div>");
				return false;
			}
		}
		//验证留言
		if ($(this).is('#content')) {
			if (this.value == '' ) {
				var errormsg = '内容不能为空';
				$parent.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
			}
		}
	});

});