//提交帖子
function send() {
		var paraStr = "";
		paraStr += "name=" + $("#name").val();
		paraStr += "&userId=" + $("#userId").val();
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
};
//表单验证
$(function() {
	$('textarea').blur(function () {
		var $parent = $(this).parent();
		$parent.find('.formtips').remove();
		//验证姓名
		if ($(this).is('#content')) {
			if (this.value == '' ) {
				var errormsg = '内容不能为空';
				$parent.append("<div id='fortips_error' class='formtips error'>" + errormsg + '</div>');
			}
		}
	})
})