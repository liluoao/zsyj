// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_PRODUCTSTATE','productState','状态');
	generateDict('DICT_PRODUCTTYPE','productType','类别');
})

//打开添加页面
function openadd(){
	$.dialog({id:'product_add'}).close();
	$.dialog.open(addUrl, {
		title: '添加产品',
		width: 700,
		height:700,
		lock: true,
		border: false,
		id: 'product_add',
		drag:true
	});
}

//查询功能
function search(){
	if(str_is_null($('#productTitle').val()) && str_is_null($('#productType').val()) && str_is_null($('#productState').val())) {
		alert('至少有一个查询条件不为空');
		return ;
	}
	var paraStr = "&productTitle="+$('#productTitle').val()+"&productType="+$('#productType').val()+"&productState="+$('#productState').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
