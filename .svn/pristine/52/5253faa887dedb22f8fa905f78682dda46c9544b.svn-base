// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_DEPLEVEL','departmentLevel','级别');
})

//打开添加页面
function openadd(){
	$.dialog({id:'department_add'}).close();
	$.dialog.open(addUrl, {
		title: '添加部门',
		width: 650,
		height:400,
		lock: true,
		border: false,
		id: 'department_add',
		drag:true
	});
}

//查询功能
function search(){
	if(str_is_null($('#departmentLevel').val()) && str_is_null($('#departmentName').val())) {
		alert('至少有一个查询条件不为空');
		return ;
	}
	var paraStr = "&departmentLevel="+$('#departmentLevel').val()+"&departmentName="+$('#departmentName').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
