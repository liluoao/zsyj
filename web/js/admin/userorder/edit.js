/**
 * 添加过滤
 * @param path
 * @return
 */
function edit(){
	var paraStr = "";
	paraStr +="id="+$("#id").val();
	paraStr +="&principal="+$("#principal").val();
	paraStr +="&recipientName="+$("#recipientName").val();
	paraStr +="&mobilephone="+$("#mobilephone").val();
	paraStr +="&areaAddress="+$("#areaAddress").val();
	paraStr +="&detailAddress="+$("#detailAddress").val();
	paraStr +="&postcode="+$("#postcode").val();
	paraStr +="&totalCost="+$("#totalCost").val();
	paraStr +="&orderCode="+$("#orderCode").val();
	paraStr +="&orderState="+$("#orderState").val();
	paraStr +="&orderType="+$("#orderType").val();
	paraStr +="&orderdateTime="+$("#orderdateTime").val();
	$.ajax({
		url: updateUrl,
		type: "post",
		dataType: "text",
		data:paraStr ,
		async: "false",
		success: function (data) {
			window.top.art.dialog({
				content: '处理成功！',
				lock: true,
				width: 250,
				height: 80,
				border: false,
				time: 2
			}, function () {
			});
			art.dialog.parent.location.href = listallUrl;
			window.top.$.dialog.get('userorder_update').close();
		},
		error:function(data){
			window.top.art.dialog({
				content: '处理失败！!!',
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