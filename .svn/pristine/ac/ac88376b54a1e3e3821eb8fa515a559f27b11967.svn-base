//打开修改页面
function openedit(id,materialname,materialname1,materialprice,materialdiscri,materialunit,materialnum,materialtype,purchasedatetime_1,purchasedatetime_2) {
	$.dialog({id:'material_update'}).close();
	var url = editUrl + '&id='+id+'&materialname='+materialname1+'&materialprice='+materialprice+'&materialdiscri='+materialdiscri+'&materialunit='+materialunit+'&materialnum='+materialnum+'&materialtype='+materialtype+'&purchasedatetime_1='+purchasedatetime_1+'&purchasedatetime_2='+purchasedatetime_2;
	$.dialog.open(url,{
		title: '修改原材料信息--'+materialname,
		width: 700,
		height:500,
		lock: true,
		border: false,
		id: 'material_update',
		drag:true
	});
}

/**
 * 删除原材料
 */
function delopt() {
	var len = $("input[name='id']:checked").size();
	var ids = '';
	$("input[name='id']:checked").each(function(i, n){
		if(i<len-1){
			ids += $(n).val() + '-';
		}else{
			ids += $(n).val();
		}
	});
	if(ids=='') {
		window.top.art.dialog({content:'请选择至少一条数据',lock:true,width:'200',height:'50',border: false,time:1.5},function(){});
		return;
	} else {
		var paraStr = 'ids='+ids;
		$.ajax({
			url: deleteallUrl,
			type: "post",
			dataType: "text",
			data:paraStr,
			async: "false",
			success: function (data) {
				window.top.art.dialog({
					content: '删除成功！',
					lock: true,
					width: 250,
					height: 80,
					border: false,
					time: 2
				}, function () {
				});
				$('#pageForm').submit();
			},
			error:function(data){
				window.top.art.dialog({
					content: '删除失败！',
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


/**
 * 删除原材料
 */
function deleteUser(id) {
	var paraStr = "";
	paraStr = "id=" + id;
	if (confirm('您确定要删除吗？')){
		$.ajax({
			url: deleteUrl,
			type: "post",
			dataType: "text",
			data:paraStr ,
			async: "false",
			success: function (data) {
				window.top.art.dialog({
					content: '删除成功！',
					lock: true,
					width: 250,
					height: 80,
					border: false,
					time: 2
				}, function () {
				});
				$('#pageForm').submit();
			},
			error:function(data){
				window.top.art.dialog({
					content: '删除失败！',
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

/**
 * 打开原材料详情
 * @param nowPage
 * @return
 */
function detail(id,materialname){
	$.dialog({id:'material_detail'}).close();
	var url = detailUrl+'&id='+id;
	$.dialog.open(url,{
		title: '原材料信息--'+materialname,
		width: 700,
		height:300,
		lock: true,
		border: false,
		id: 'material_detail',
		drag:true
	});
}