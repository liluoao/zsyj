//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj){
			window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})
		}});
	// 校验模型名称
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
})

//修改文章
function edit(){
	if($.formValidator.pageIsValid()){ // 表单提交进行校验
		var paraStr = "";
		paraStr +="id="+$("#id").val();
		paraStr += "&title="+$("#title").val();
		paraStr += "&articleType="+$("#articleType").val();
		paraStr += "&author="+$("#author").val();
		paraStr += "&source="+$("#source").val();
		paraStr += "&content="+encodeURIComponent(contentEditor.getData());
		paraStr += "&senderDateTime="+$("#senderDateTime").val();
		paraStr += "&attachUrls="+$("#attachUrls").val();
		paraStr += "&attachNames="+$("#attachNames").val();
		paraStr += "&isTop="+$("#isTop").val();
		paraStr += "&clicks="+$("#clicks").val();
		paraStr += "&articleState="+$("#articleState").val();
		$.ajax({
			url: updateUrl,
			type: "post",
			dataType: "text",
			data:paraStr ,
			async: "false",
			success: function (data) {
				window.top.art.dialog({
					content: '修改成功！',
					lock: true,
					width: 250,
					height: 80,
					border: false,
					time: 2
				}, function () {
				});
				art.dialog.parent.$('#pageForm').submit();
				window.top.$.dialog.get('article_update').close();
			},
			error:function(data){
				window.top.art.dialog({
					content: '修改失败！',
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