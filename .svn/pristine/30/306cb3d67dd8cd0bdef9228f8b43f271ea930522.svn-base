//打开回帖页面
function openback(id,username) {
	$.dialog({id:'message_back'}).close();
	var url = backUrl + '&id='+id;
	$.dialog.open(url,{
		title: '回复--'+username,
		width: 800,
		height:500,
		lock: true,
		border: false,
		id: 'message_back',
		drag:true
	});

}

//多选删除
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
		window.top.art.dialog({content:'请选择至少一个帖子',lock:true,width:'200',height:'50',border: false,time:1.5},function(){});
		return;
	} else {
	var paraStr = 'ids='+ids;
		$.ajax({
			url: delallUrl,
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

//删除一个
function deleteMes(id) {
	var paraStr = "";
	paraStr = "id=" + id;
	if (confirm('您确定要删除这个帖子吗？')){
		$.ajax({
			url: delUrl,
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
