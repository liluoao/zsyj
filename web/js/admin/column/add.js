//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj)
		{window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})}});
	// 校验模型名称
	$("#title").formValidator({
				onshow:"请输入标题！",
				onfocus:"请输入标题！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入标题！"})
			.ajaxValidator({					// 校验不许重复
				type:"get",
				url:checknameUrl,
				data:{
					'title':$("#title").val(),
				},
				datatype:"text",
				async:'true',
				success:function(data){
					if(data == "exist"){
						return false;
					}else{
						return true;
					}
				},
				buttons: $("#dosubmit"),  // 页面提示----"输入正确"
				onerror : "标题已存在",
				onwait : "正在连接，请稍候。"});
	$("#url").formValidator({
		onshow:"请输入url！例如：index.php?r=XXX/XXX",
		onfocus:"请输入url！"})
	.inputValidator({               //校验不能为空
		min:1,
		onerror:"请输入url！"})

	})


//增加部门
function add(){
	if($.formValidator.pageIsValid()) { // 表单提交进行校验
		var paraStr = "";
		paraStr += "title=" + $("#title").val();
		paraStr += "&discri=" + $("#discri").val();
		paraStr += "&url=" + $("#url").val();
		paraStr += "&ordeyBy=" + $("#ordeyBy").val();
		$.ajax({
			url: saveUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: "false",
			success: function (data) {
				if (data == "success") {
					window.top.art.dialog({
						content: '添加成功！',
						lock: true,
						width: 250,
						height: 80,
						border: false,
						time: 2
					}, function () {
					});
					art.dialog.parent.document.getElementById("iframeId").src = listallUrl;
					window.top.$.dialog.get('column_add').close();
				} else {
					window.top.art.dialog({
						content: '添加失败！',
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
					content: '添加失败！',
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
