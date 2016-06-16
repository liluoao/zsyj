

$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj){
			window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})
		}});
	// 校验模型名称
	$("#productTitle").formValidator({
				onshow:"请输入产品名称！",
				onfocus:"请输入产品名称！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入产品名称！"})
	$("#productPrice").formValidator({
				onshow:"请输入产品价格！",
				onfocus:"请输入产品价格！"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入产品价格！"})
	$("#productDiscount").formValidator({
				onshow:"请输入折扣！列如打八折为0.8,不打折为1",
				onfocus:"请输入折扣！列如打八折为0.8,不打折为1"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入产品折扣！"})
	$("#productSize").formValidator({
				onshow:"请输入产品规格！列如1L/瓶",
				onfocus:"请输入产品规格！列如1L/瓶"})
			.inputValidator({               //校验不能为空
				min:1,
				onerror:"请输入产品规格！"})
})


/**
 * 添加过滤
 * @param path
 * @return
 */
function edit(){
	if($.formValidator.pageIsValid()){ // 表单提交进行校验
		var paraStr = "";
		paraStr +="id="+$("#id").val();
		paraStr +="&productTitle="+$("#productTitle").val();
		paraStr +="&productPrice="+$("#productPrice").val();
		paraStr +="&productDiscri="+$("#productDiscri").val();
		paraStr +="&productDiscount="+$("#productDiscount").val();
		paraStr +="&productUnit="+$("#productUnit").val();
		paraStr +="&picUrl="+$("#picUrl").val();
		paraStr +="&thumbnailUrl="+$("#thumbnailUrl").val();
		paraStr +="&inventory="+$("#inventory").val();
		paraStr +="&productState="+$("#productState").val();
		paraStr +="&productType="+$("#productType").val();
		paraStr +="&productSize="+$("#productSize").val();
		paraStr +="&isIndex="+$("#isIndex").val();

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
				window.top.$.dialog.get('product_update').close();
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