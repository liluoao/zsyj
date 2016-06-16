//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj){
		window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})
		}});
	// 校验模型名称					
	$("#position").formValidator({
		onshow:"请输入职位次数！",
		onfocus:"请输入职位次数！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入职位次数！"})

	$("#positionname").formValidator({
				onshow:"请输入职位名称！",
				onfocus:"请输入职位名称！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入职位名称！"})

	$("#responsibilities").formValidator({
		onshow:"请输入岗位职责（遇到#自动转行）！",
		onfocus:"请输入岗位职责！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入岗位职责！"})

	$("#claim").formValidator({
				onshow:"请输入任职要求（遇到#自动转行）！",
				onfocus:"请输入任职要求！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入任职要求！"})

	$("#wage").formValidator({
				onshow:"请输入薪资待遇（遇到#自动转行）！",
				onfocus:"请输入薪资待遇！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入薪资待遇！"})
})


/**
 * 添加过滤
 * @param path
 * @return
 */
	function add() {
		if ($.formValidator.pageIsValid()) { // 表单提交进行校验
			var paraStr = '';
			paraStr = "position=" + $('#position').val() + "&positionname=" + $('#positionname').val() + "&responsibilities=" + $('#responsibilities').val() + "&claim=" + $('#claim').val() + "&wage=" + $('#wage').val();
			$.ajax({
				url: insertUrl,
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
						art.dialog.parent.location.href = listUrl;
						window.top.$.dialog.get('recruitment_add').close();
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
						content: '添加失败！！！',
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
