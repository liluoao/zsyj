//打开分配地区页面
function assign(id) {
	$.dialog({id:'assign'}).close();
	var url = assignUrl+'&id='+id;
	$.dialog.open(url,{
		title: '分配地区',
		width: 800,
		height:500,
		lock: true,
		border: false,
		id: 'assign',
		drag:true
	});
}