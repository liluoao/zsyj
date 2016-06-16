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
	dictArray.push("<option value=''><--请选择状态--></option>");//updated by xfk
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
/**
 * 添加过滤
 * @param path
 * @return
 */
function add(){
		var paraStr = '';
		paraStr = "principal=" + $('#principal').val() + "&recipientName=" + $('#recipientName').val() + "&mobilephone=" + $('#mobilephone').val() + "&areaAddress=" + $('#areaAddress').val() + "&detailAddress=" + $('#detailAddress').val() + "&postcode=" + $('#postcode').val() + "&totalCost=" + $('#totalCost').val() + "&orderCode=" + $('#orderCode').val() + "&orderType=" + $('#orderType').val() + "&orderState=" + $('#orderState').val() + "&orderdateTime=" + $('#orderdateTime').val();
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
				window.top.$.dialog.get('userorder_add').close();
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