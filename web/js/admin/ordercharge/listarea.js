$(function(){
    var tbody = $('#user_list_body');
    var str = new Array();
    $(province).each(function(index){
        str.push('<tr align="left">');
        str.push('<td align="left"><input type="checkbox" class="'+province[index].id+'" name="id" value="'+province[index].id+'"/></td>');
        str.push('<td align="center">'+(index+1)+'</td>');
        str.push('<td align="center"><input id="'+province[index].id+'" type="text" value="'+province[index].name+'"readonly/></td>');
        str.push('</tr>');
    })
    tbody.append(str.join(''));
    if(cityids!='' && cityids!=null && cityids!='null') hasProvince();
})

// 将已有地区显示
function hasProvince(){
    var cityArray = cityids.split(",");
    $("input[name='id']:checkbox").each(function(){
        var	cityValue = $(this).val();
        for(var k = 0; k < cityArray.length;k++){
            if(cityArray[k] == cityValue) $('.'+cityValue).attr('checked','checked');
        }
    });
}

//为员工添加地区
function addarea(userId){
     var len=$("input[name='id']:checked").size();
     var ids='';
     var citys='';
     $("input[name='id']:checked").each(function(i, n){
         var province = $(n).val();
        if(i<len-1){
         ids += province + '-';
         citys += $("#"+province).val() + '-';
        }else{
         ids += province;
         citys += $("#"+province).val();
        }
     });
     if(ids=='') {
          window.top.art.dialog({content:'请选择至少一个省份',lock:true,width:'200',height:'50',border: false,time:1.5},function(){});
          return false;
     }else{
          var paraStr = 'userId='+userId+'&ids='+ids+'&citys='+citys;
          $.ajax({
           url: addareaUrl,
           type: "post",
           dataType: "text",
           data:paraStr,
           async: false,
           success: function (data) {
            window.top.art.dialog({
             content: '添加成功！',
             lock: true,
             width: 250,
             height: 80,
             border: false,
             time: 2
            }, function () {
            });
            art.dialog.parent.$('#pageForm').submit();
            window.top.$.dialog.get('assign').close();
           },
           error:function(data){
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
          });
     }
}

