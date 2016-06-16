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

//页面校验
$(function(){
	$.formValidator.initConfig({
		formid:"myform",
		autotip:true,			//是否显示提示信息
		onerror:function(msg,obj){
		window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})
		}});
	// 校验模型名称					
	$("#materialprice").formValidator({
		onshow:"请输入价格！",
		onfocus:"请输入价格！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入价格！"})

	$("#materialnum").formValidator({
		onshow:"请输入数量！",
		onfocus:"请输入数量！"})
		.inputValidator({               //校验不能为空
			min:1,
			onerror:"请输入数量！"})
})


/**
 * 添加过滤
 * @param path
 * @return
 */
	function add() {
		if ($.formValidator.pageIsValid()) { // 表单提交进行校验
			var paraStr = '';
			paraStr = "materialname=" + $('#materialname').val() + "&materialprice=" + $('#materialprice').val() + "&materialdiscri=" + $('#materialdiscri').val() + "&materialunit=" + $('#materialunit').val() + "&materialnum=" + $('#materialnum').val() + "&materialtype=" + $('#materialtype').val() + "&purchasedatetime=" + $('#purchasedatetime').val();
			$.ajax({
				url: insertUrl,
				type: "post",
				dataType: "text",
				data: paraStr,
				async: "false",
				success: function (data) {
					if (data == "success") {
						window.top.art.dialog({
							content: '添加成功！',
							lock: true,
							width: 250,
							height: 80,
							border: false,
							time: 2
						}, function () {
						});
						art.dialog.parent.location.href = listUrl;
						window.top.$.dialog.get('material_add').close();
					} else {
						window.top.art.dialog({
							content: '添加失败！',
							lock: true,
							width: 250,
							height: 80,
							border: false,
							time: 2
						}, function () {
						});
					}

				},
				error: function (data) {
					window.top.art.dialog({
						content: '添加失败！！！',
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








//添加原材料名称
function nameadd(tag) {
	if(tag == '1'){
		$("#dictItemName").attr('style','display:none;');
		$("#cancle").attr('style','display:none;');
		$("#dictItemName").val('');
		return;
	}
	if($("#dictItemName").attr('style') == 'display:none;'){
		$("#dictItemName").attr('style','width:80px;');
		$("#cancle").attr('style','width:60px;');
		return;
	}
	dictItemName = $('#dictItemName').val();
	if (dictItemName == '' || dictItemName == '材料名称已经添加成功！') {
		window.top.art.dialog({
			content: '请添加名称',
			lock: true,
			width: '200',
			height: '50',
			border: false,
			time: 1.5
		}, function () {
		});

		return;

	} else {
		var paraStr = 'dictItemName=' + dictItemName;
		$.ajax({
			url: nameaddUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: "false",
			success: function (data) {
				if (data == "success") {
					generateMaterialname();
					$("#dictItemName").val('');
					$("#dictItemName").attr('style','display:none;');
					$("#cancle").attr('style','display:none;');
					window.top.art.dialog({
						content: '添加成功！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});

				}else if(data = 'exist'){
					window.top.art.dialog({
						content: '名称已存在！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});
				}
			}
		});
	}
}
//添加原材料单位
function unitadd(tag) {
	if(tag == '2'){
		$("#dictItemName1").attr('style','display:none;');
		$("#cancle1").attr('style','display:none;');
		$("#dictItemName1").val('');
		return;
	}
	if($("#dictItemName1").attr('style') == 'display:none;'){
		$("#dictItemName1").attr('style','width:80px;');
		$("#cancle1").attr('style','width:60px;');

		return;
	}
	dictItemName = $('#dictItemName1').val();
	if (dictItemName == '' || dictItemName == '材料单位已经添加成功！') {
		window.top.art.dialog({
			content: '请添加单位',
			lock: true,
			width: '200',
			height: '50',
			border: false,
			time: 1.5
		}, function () {
		});

		return;

	} else {
		var paraStr = 'dictItemName=' + dictItemName;
		$.ajax({
			url: unitaddUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: "false",
			success: function (data) {
				if (data == "success") {
					generateMaterialunit();
					$("#dictItemName1").val('');
					$("#dictItemName1").attr('style','display:none;');
					$("#cancle1").attr('style','display:none;');
					window.top.art.dialog({
						content: '添加成功！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});

				}else if(data = 'exist'){
					window.top.art.dialog({
						content: '单位已存在！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});
				}
			}
		});
	}
}
//添加原材料类型
function typeadd(tag) {
	if(tag == '3'){
		$("#dictItemName2").attr('style','display:none;');
		$("#cancle2").attr('style','display:none;');
		$("#dictItemName2").val('');
		return;
	}
	if($("#dictItemName2").attr('style') == 'display:none;'){
		$("#dictItemName2").attr('style','width:80px;');
		$("#cancle2").attr('style','width:60px;');

		return;
	}
	dictItemName = $('#dictItemName2').val();
	if (dictItemName == '' || dictItemName == '材料类型已经添加成功！') {
		window.top.art.dialog({
			content: '请添加类型',
			lock: true,
			width: '200',
			height: '50',
			border: false,
			time: 1.5
		}, function () {
		});

		return;

	} else {
		var paraStr = 'dictItemName=' + dictItemName;
		$.ajax({
			url: typeaddUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: "false",
			success: function (data) {
				if (data == "success") {
					generateMaterialtype();
					$("#dictItemName2").val('');
					$("#dictItemName2").attr('style','display:none;');
					$("#cancle2").attr('style','display:none;');
					window.top.art.dialog({
						content: '添加成功！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});

				}else if(data = 'exist'){
					window.top.art.dialog({
						content: '类型已存在！',
						lock: true,
						width: '200',
						height: '50',
						border: false,
						time: 1.5
					}, function () {
					});
				}
			}
		});
	}
}