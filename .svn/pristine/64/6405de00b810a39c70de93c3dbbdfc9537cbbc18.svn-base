//查询功能
function search(){
	if(str_is_null($('#username').val())) {
		alert('查询条件不为空');
		return ;
	}
	var paraStr = "&username="+$('#username').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
