// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_DEPLEVEL','departmentLevel','级别');
})

//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj)
		{window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})}});
	// 校验模型名称
	$("#departmentLevel").formValidator({
				onshow:"请选择部门级别！",
				onfocus:"请选择部门级别！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请选择部门级别！"})
	$("#parentId").formValidator({
				onshow:"请选择上级部门！",
				onfocus:"请选择上级部门！"})
			.functionValidator({
				fun: function (val, elem) {
					if($("#parId").attr('style') == 'display:none;'){
						return true;
					}else{
						if($("#parentId").val() == ''){
							return false;
						}else{
							return true;
						}
					}
				}
			});
	$("#departmentName").formValidator({
				onshow:"请输入部门名！",
				onfocus:"请输入部门名！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入部门名！"})
			.ajaxValidator({					// 校验不许重复
				type:"get",
				url:checknameUrl,
				data:{
					'departmentName':$("#departmentName").val(),
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
				onerror : "部门名已存在",
				onwait : "正在连接，请稍候。"});
	$("#departmentDiscri").formValidator({
		onshow:"请输入部门描述！",
		onfocus:"请输入部门描述！"})
	.inputValidator({               //校验不能为空
		min:1,
		onerror:"请输入部门描述！"})

	})


//增加部门
function add(){
	if($.formValidator.pageIsValid()) { // 表单提交进行校验
		var paraStr = "";
		paraStr += "departmentName=" + $("#departmentName").val();
		paraStr += "&parentId=" + $("#parentId").val();
		paraStr += "&departmentLevel=" + $("#departmentLevel").val();
		paraStr += "&departmentDiscri=" + $("#departmentDiscri").val();
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
					window.top.$.dialog.get('department_add').close();
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

//是否显示上级部门名
function changeTable(){
	if($('#departmentLevel').val() == '1'){
		$("#parId").removeAttr('style');
	}else{
		$("#parId").attr('style','display:none;');
	}
}
