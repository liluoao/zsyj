//查询功能
function search(){
	if(str_is_null($('#_senderDateTime').val()) && str_is_null($('#senderDateTime_').val())) {
		alert('至少有一个查询条件不为空!');
		return ;
	}
	var paraStr = "&_senderDateTime="+$('#_senderDateTime').val()+"&senderDateTime_="+$('#senderDateTime_').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
