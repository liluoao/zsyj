$(function(){
	$(".expand").click(function(){//展开部门
		var department = $(this).val();
		$(".status").css('display',"none");
		$("#"+department).show(500);
	})
	$(".close").click(function(){//关闭
		$(".status").hide(500);
	})
})
$(function(){
	$(".check").click(function(){//勾选

		var strcheck = $(this).val();
		var strName = $(this).attr('name');
		if(strcheck.substring(0,3) == 'Pre'){
			if($(this).is(':checked')){//勾选被勾选上一级部门
				$("input[name='"+strcheck+"'].check").attr("checked","true");
			}else{
				if($("input[name='"+strName+"'].check:checked").length == 0){
					$("input[name='"+strcheck+"'].check").removeAttr("checked");
				}
			}
		}else{
			if($(this).is(':checked')){//全选
				$("input[name='"+strcheck+"'].check").attr("checked","true");
			}else{
				$("input[name='"+strcheck+"'].check").removeAttr("checked");
			}
		}

	})

})

function choose(id) {
	var len = $("input[type='checkbox']:checked").size();
	var ids = '';
	$("input[type='checkbox']:checked").each(function (i, n) {
		if (i < len - 1) {
			ids += $(n).attr("name") + '-';
		} else {
			ids += $(n).attr("name");
		}
	});
	if (ids == '') {
		window.top.art.dialog({
			content: '请选择至少一个员工',
			lock: true,
			width: '200',
			height: '50',
			border: false,
			time: 1.5
		}, function () {
		});
		return false;
	} else {
		var userStr = "";
		userStr += "id=" + id;
		userStr += '&ids=' + ids;
		$.ajax({
			url: saveUrl,
			type: "post",
			dataType: "text",
			data: userStr,
			async: "false",
			success: function (data) {
				if (data == "success") {
					window.top.art.dialog({
						content: '选择成功！',
						lock: true,
						width: 250,
						height: 80,
						border: false,
						time: 2
					}, function () {
					});
					window.location.href= addUrl+'&id='+id;
				} else {
					window.top.art.dialog({
						content: '选择失败！',
						lock: true,
						width: 250,
						height: 80,
						border: false,
						time: 2
					}, function () {
					});
				}

			},
			error: function (data) {
				window.top.art.dialog({
					content: '选择失败！',
					lock: true,
					width: 250,
					height: 80,
					border: false,
					time: 2
				}, function () {
				});
			}
		});
	}
}

//回到发布通知页
function back(){
	window.location.href= addUrl;
}