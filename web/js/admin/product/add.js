// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_PRODUCTTYPE','productType','类别');
	generateDict('DICT_PRODUCTUNIT','productUnit','单位');
	generateDict('DICT_ISINDEX','isIndex','首页展示');
})

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
			.ajaxValidator({					// 校验不许重复
				type:"get",
				url:checkusernameUrl,
				data:{
					'name':$("#productTitle").val(),
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
				onerror : "商品名已存在",
				onwait : "正在连接，请稍候。"});
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
function add(){
	if($.formValidator.pageIsValid()){ // 表单提交进行校验
		var paraStr = '';
		paraStr = "productTitle=" + $('#productTitle').val() + "&productPrice=" + $('#productPrice').val() + "&productDiscri=" + $('#productDiscri').val() + "&productDiscount=" + $('#productDiscount').val() + "&productUnit=" + $('#productUnit').val()+ "&picUrl=" + $('#picUrl').val()+ "&thumbnailUrl=" + $('#thumbnailUrl').val()+ "&inventory=" + $('#inventory').val()+ "&productState=" + $('#productState').val()+ "&productType=" + $('#productType').val()+ "&productSize=" + $('#productSize').val();
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
					art.dialog.parent.location.href = listUrl;
					window.top.$.dialog.get('product_add').close();
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