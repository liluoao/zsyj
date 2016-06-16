// 加载字典信息
$(document).ready(function(){
	generateOrderState();
	generateOrderType();
})
//生成订单状态下拉框
function generateOrderState(){
	var dictArray = new Array();
	dictArray.push("<option value=''><--请选择状态--></option>");//updated by xfk
	$.ajax({
		url:listdictUrl,
		type:"post",
		dataType:"json",
		data:"dictCode=DICT_ORDERSTATE",
		async:false,
		success:function(data){
			$.each(data,function(i,n){
				dictArray.push("<option value='"+ n.dictItemCode +"'>"+ n.dictItemName +"</option>");
			});
			$('#orderState').html(dictArray.join(''));
		},
		error:function (data) {
			window.top.art.dialog({content:'加载字典组出错！',lock:true,width:'250',height:'50',border: false,time:1.5},function(){});
		}
	});
}
//生成订单类型下拉框
function generateOrderType(){
	var dictArray = new Array();
	dictArray.push("<option value=''><--请选择类别--></option>");//updated by xfk
	$.ajax({
		url:listdictUrl,
		type:"post",
		dataType:"json",
		data:"dictCode=DICT_ORDERTYPE",
		async:false,
		success:function(data){
			$.each(data,function(i,n){
				dictArray.push("<option value='"+ n.dictItemCode +"'>"+ n.dictItemName +"</option>");
			});
			$('#orderType').html(dictArray.join(''));
		},
		error:function (data) {
			window.top.art.dialog({content:'加载字典组出错！',lock:true,width:'250',height:'50',border: false,time:1.5},function(){});
		}
	});
}
//打开添加页面
function openadd(){
	$.dialog({id:'userorder_add'}).close();
	$.dialog.open(addUrl, {
		title: '添加新订单',
		width: 700,
		height:500,
		lock: true,
		border: false,
		id: 'userorder_add',
		drag:true
	});
}

//查询功能
function search(){
	if(str_is_null($('#principal').val()) && str_is_null($('#recipientName').val()) && str_is_null($('#mobilephone').val()) && str_is_null($('#orderType').val()) && str_is_null($('#orderState').val()) &&(str_is_null($('#orderdateTime_1').val())||str_is_null($('#orderdateTime_2').val()))) {
		alert('请选择两个日期！');
		return ;
	}
	var paraStr = "&principal=" + $('#principal').val() + "&recipientName=" + $('#recipientName').val() + "&mobilephone=" + $('#mobilephone').val() + "&orderType=" + $('#orderType').val() + "&orderState=" + $('#orderState').val()+ "&orderdateTime_1=" + $('#orderdateTime_1').val() + "&orderdateTime_2=" + $('#orderdateTime_2').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
