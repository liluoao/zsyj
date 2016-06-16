// 加载字典信息
$(document).ready(function(){
	generateDict('DICT_ARTICLE_TYPE','articleType','文章类别');
})

// 添加文章
function openadd(){
	$.dialog({id:'article_add'}).close();
	$.dialog.open(addUrl, {
		title: '添加文章',
		width: 800,
		height:500,
		lock: true,
		border: false,
		id: 'article_add',
		drag:true
	});
}

//查询功能
function search(){
	if(str_is_null($('#title').val()) && str_is_null($('#author').val()) && str_is_null($('#articleType').val()) && str_is_null($('#_senderDateTime').val()) && str_is_null($('#senderDateTime_').val())) {
		alert('至少有一个查询条件不为空');
		return ;
	}
	var paraStr = "&title="+$('#title').val()+"&author="+$('#author').val()+"&articleType="+$('#articleType').val()+"&_senderDateTime="+$('#_senderDateTime').val()+"&senderDateTime_="+$('#senderDateTime_').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}
