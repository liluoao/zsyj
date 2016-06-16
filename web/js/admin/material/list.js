// 加载字典信息
$(document).ready(function(){
	generateMaterialname();
	generateMaterialunit();
	generateMaterialtype();
})
//生成名称下拉框
function generateMaterialname(){
	var dictArray = new Array();
	dictArray.push("<option value=''><--请选择原材料--></option>");//updated by xfk
	$.ajax({
		url:listdictUrl,
		type:"post",
		dataType:"json",
		data:"dictCode=DICT_MATERIALNAME",
		async:false,
		success:function(data){
			$.each(data,function(i,n){
				dictArray.push("<option value='"+ n.dictItemCode +"'>"+ n.dictItemName +"</option>");
			});
			$('#materialname').html(dictArray.join(''));
		},
		error:function (data) {
			window.top.art.dialog({content:'加载字典组出错！',lock:true,width:'250',height:'50',border: false,time:1.5},function(){});
		}
	});
}
//生成单位下拉框
function generateMaterialunit(){
	var dictArray = new Array();
	dictArray.push("<option value=''><--请选择单位--></option>");//updated by xfk
	$.ajax({
		url:listdictUrl,
		type:"post",
		dataType:"json",
		data:"dictCode=DICT_MATERIALUNIT",
		async:false,
		success:function(data){
			$.each(data,function(i,n){
				dictArray.push("<option value='"+ n.dictItemCode +"'>"+ n.dictItemName +"</option>");
			});
			$('#materialunit').html(dictArray.join(''));
		},
		error:function (data) {
			window.top.art.dialog({content:'加载字典组出错！',lock:true,width:'250',height:'50',border: false,time:1.5},function(){});
		}
	});
}
//生成类型下拉框
function generateMaterialtype(){
	var dictArray = new Array();
	dictArray.push("<option value=''><--请选择类型--></option>");//updated by xfk
	$.ajax({
		url:listdictUrl,
		type:"post",
		dataType:"json",
		data:"dictCode=DICT_MATERIALTYPE",
		async:false,
		success:function(data){
			$.each(data,function(i,n){
				dictArray.push("<option value='"+ n.dictItemCode +"'>"+ n.dictItemName +"</option>");
			});
			$('#materialtype').html(dictArray.join(''));
		},
		error:function (data) {
			window.top.art.dialog({content:'加载字典组出错！',lock:true,width:'250',height:'50',border: false,time:1.5},function(){});
		}
	});
}

//打开添加页面
function openadd(){
	$.dialog({id:'material_add'}).close();
	$.dialog.open(addUrl, {
		title: '添加新原材料',
		width: 700,
		height:350,
		lock: true,
		border: false,
		id: 'material_add',
		drag:true
	});
}

//查询功能
function search(){
	if(str_is_null($('#materialname').val()) && str_is_null($('#materialtype').val()) &&(str_is_null($('#purchasedatetime_1').val())||str_is_null($('#purchasedatetime_2').val()))) {
		alert('请选择两个日期！');
		return ;
	}
	var paraStr = "&materialname=" + $('#materialname').val() + "&materialtype=" + $('#materialtype').val() + "&purchasedatetime_1=" + $('#purchasedatetime_1').val() + "&purchasedatetime_2=" + $('#purchasedatetime_2').val();
	$('#iframeId').attr('src',listallUrl+paraStr);
}

//打开原材料选择页面
function choose(){
	$.dialog({id:'material_choose'}).close();
	$.dialog.open(chooseUrl, {
		title: '选择原材料',
		width: 200,
		height:250,
		lock: true,
		border: false,
		id: 'material_choose',
		drag:true
	});
}
