//打开修改页面
function openedit(id,departmentName) {
	$.dialog({id:'department_update'}).close();
	var url = editUrl+'&id='+id;
	$.dialog.open(url,{
		title: '修改部门'+'--'+departmentName,
		width: 600,
		height:500,
		lock: true,
		border: false,
		id: 'department_update',
		drag:true
	});
}

//打开添加用户页面
function openaddu(id,departmentName){
	window.parent.location.href= adduUrl+'&id='+id+'&departmentName='+departmentName;
}

//查看详情
function detail(id,departmentName) {
	$.dialog({id:'department_detail'}).close();
	var url = depdetailUrl+'&id='+id;
	$.dialog.open(url,{
		title: '部门详情'+'--'+departmentName,
		width: 500,
		height:200,
		lock: true,
		border: false,
		id: 'department_detail',
		drag:true
	});
}

//删除部门操作
function delopt(){
	var len=$("input[name='id']:checked").size();
	var ids='';
	$("input[name='id']:checked").each(function(i, n){
		if(i<len-1){
			ids += $(n).val() + '-';
		}else{
			ids += $(n).val();
		}
	});
	if(ids=='') {
		window.top.art.dialog({content:'请选择至少一个部门',lock:true,width:'200',height:'50',border: false,time:1.5},function(){});
		return false;
	}else{
		var paraStr = 'ids='+ids;
		$.ajax({
			url: deldepallUrl,
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

// 单一删除
function deleteDep(id){
	var paraStr = 'id='+id;
	if (confirm('您确定要删除这个部门吗？')) {
		$.ajax({
			url: deldepUrl,
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