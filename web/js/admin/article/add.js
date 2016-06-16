// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_ARTICLE_TYPE','articleType','文章类别');
	generateDict('DICT_IS_TOP','isTop','是否置顶');
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
	$("#articleType").formValidator({
		onshow:"请选择文章类型！",
		onfocus:"请选择文章类型！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请选择文章类型！"})
	$("#title").formValidator({
		onshow:"请输入文章标题！",
		onfocus:"请输入文章标题！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入文章标题！"})
	$("#author").formValidator({
				onshow:"请输入文章作者！",
				onfocus:"请输入文章作者！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入文章作者！"})
	$("#source").formValidator({
				onshow:"请输入文章来源！",
				onfocus:"请输入文章来源！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入文章来源！"})
	$("#isTop").formValidator({
		onshow:"请选择是否置顶！",
		onfocus:"请选择是否置顶！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请选择是否置顶！"})
	
})

//添加文章
function add(){
	if($.formValidator.pageIsValid()) { // 表单提交进行校验
		var paraStr = "";
		paraStr += "title=" + $("#title").val();
		paraStr += "&articleType=" + $("#articleType").val();
		paraStr += "&author=" + $("#author").val();
		paraStr += "&source=" + $("#source").val();
		paraStr += "&content=" + encodeURIComponent(contentEditor.getData());
		paraStr += "&senderDateTime=" + $("#senderDateTime").val();
		paraStr += "&attachUrls=" + $("#attachUrls").val();
		paraStr += "&attachNames=" + $("#attachNames").val();
		paraStr += "&isTop=" + $("#isTop").val();
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
					art.dialog.parent.document.getElementById("iframeId").src=listallUrl;
					window.top.$.dialog.get('article_add').close();
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