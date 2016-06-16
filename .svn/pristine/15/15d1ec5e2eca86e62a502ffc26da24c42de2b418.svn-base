//查询功能
function search(){
    if(str_is_null($('#materialName').val())) {
        alert('请选择搜索条件！');
        return ;
    }
    var paraStr = "&materialName=" + $('#materialName').val();
    $('#iframeId').attr('src',listallinventoryUrl+paraStr);
}

//打开原材料选择页面
function choose(){
    $.dialog({id:'materialcost_choose'}).close();
    $.dialog.open(chooseUrl, {
        title: '选择原材料',
        width: 200,
        height:250,
        lock: true,
        border: false,
        id: 'materialcost_choose',
        drag:true
    });
}