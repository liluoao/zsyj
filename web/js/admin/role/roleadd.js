//打开修改页面
function openedit(userId,userName) {
	$.dialog({id:'user_update'}).close();
	var url = editUrl + '&id='+userId;
	$.dialog.open(url,{
		title: '修改用户信息--'+userName,
		width: 700,
		height:500,
		lock: true,
		border: false,
		id: 'user_update',
		drag:true
	});
}

//打开添加页面
function openadd(){
	$.dialog({id:'user_add'}).close();
	$.dialog.open(path+'/admin/adminUser/user_add.jsp', {
		title: '添加新用户',
		width: 700,
		height:500,
		lock: true,
		border: false,
		id: 'user_add',
		drag:true
	});
}

/**
 * 删除用户
 */
function delopt(name,roleId) {
	var len = $("input[name='id']:checked").size()-1;
	var ids = '';
	$("input[name='id']:checked").each(function(i, n){
		if(i<len){
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
			url:rdeleteallUrl,
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
				art.dialog.parent.location.href = roleaddUrl+'&id='+roleId+'&name='+name;
				/*window.top.$.dialog.get('role_roleadd').close();*/
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
 * 删除一个用户
 */
function deleteUser(roleId,name) {
	var paraStr = "";
	paraStr = "id=" + roleId;
	if (confirm('您确定要删除吗？')){
		$.ajax({
			url: rdeleteUrl,
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
				/*window.top.$.dialog.get('role_roleadd').close();*/
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
 * 打开用户详情
 * @param nowPage
 * @return
 */
function detail(userId,userName){
	$.dialog({id:'user_detail'}).close();
	var url = detailUrl+'&id='+userId;
	$.dialog.open(url,{
		title: '用户信息--'+userName,
		width: 700,
		height:300,
		lock: true,
		border: false,
		id: 'user_detail',
		drag:true
	});
}
function openaddus(id,name) {
	$.dialog({id:'role_roleadd'}).close();
	var url = roleaddlistallUrl+'&id='+id+'&name='+name;
	$.dialog.open(url,{
		title: '分配用户'+'--'+name,
		width: 1100,
		height:400,
		lock: true,
		border: false,
		id: 'role_roleadd',
		drag:true
	});
}