// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_MATERIALNAME','materialName','材料名');
	generateDict('DICT_MATERIALUNIT','materialUnit','单位');
})

//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj){
		window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})
		}});
	// 校验模型名称					
	$("#materialName").formValidator({
		onshow:"请选择原材料！",
		onfocus:"请选择原材料！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请选择原材料！"})
	$("#costNum").formValidator({
		onshow:"请输入数量！",
		onfocus:"请输入数量！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入数量！"})
	$("#materialUnit").formValidator({
				onshow:"请选择单位！",
				onfocus:"请选择单位！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请选择单位！"})
})

//添加消耗
function add(){
	if($.formValidator.pageIsValid()){ // 表单提交进行校验
		var paraStr = '';
		paraStr = "materialName=" + $('#materialName').val() + "&costNum=" + $('#costNum').val() + "&materialUnit=" + $('#materialUnit').val();
		$.ajax({
			url: insertUrl,
			type: "post",
			dataType: "text",
			data:paraStr ,
			async: "false",
			success: function (data) {
				if(data == "success"){
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
					window.top.$.dialog.get('materialcost_add').close();
				}else{
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
			error:function(data){
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