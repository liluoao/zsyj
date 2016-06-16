/**
 * Created by Administrator on 2016/4/18.
 */
//表单验证
$(function() {
    $('form :input').blur(function () {
        var $parent = $(this).parent();
        $parent.find('.formtips').remove();
        //验证姓名
        if ($(this).is('#username_1')) {
            if (this.value == '' ) {
                var errormsg = '内容不能为空';
                $parent.append("<span id='fortips_error' class='formtips error'>" + errormsg + '</span>')} else {
                var okmsg = '输入正确';
                $parent.append("<span id='fortips_ok' class='formtips ok'>" + okmsg + "</span>");
            }
        };
        //所在地区验证
        if ($(this).is('#city')) {
            if (this.value == '' ) {
                var errormsg = '内容不能为空';
                $parent.append("<span id='fortips_error' class='formtips error'>" + errormsg + '</span>')} else {
                var okmsg = '输入正确';
                $parent.append("<span id='fortips_ok' class='formtips ok'>" + okmsg + "</span>");
            }
        };
        //详细地址验证
        if ($(this).is('#add_address')) {
            if (this.value == '' ) {
                var errormsg = '内容不能为空';
                $parent.append("<span id='fortips_error' class='formtips error'>" + errormsg + '</span>')} else {
                var okmsg = '输入正确';
                $parent.append("<span id='fortips_ok' class='formtips ok'>" + okmsg + "</span>");
            }
        };
        //验证邮箱
        if($(this).is('#add_email')) {
            if (this.value == '' || (this.value !=''&&!/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(this.value))) {
                var errormsg = '输入邮箱不正确';
                $parent.append("<span id='fortips_error' class='formtips error'>" + errormsg + '</span>');
            } else {
                var okmsg = '输入正确';
                $parent.append("<span id='fortips_ok' class='formtips ok'>" + okmsg + "</span>");
            }
        }
        //所在地区验证
        if ($(this).is('#city1')) {
            if (this.value == '' ) {
                var errormsg = '内容不能为空';
                $parent.append("<span id='fortips_error' class='formtips error'>" + errormsg + '</span>')} else {
                var okmsg = '输入正确';
                $parent.append("<span id='fortips_ok' class='formtips ok'>" + okmsg + "</span>");
            }
        };
    });
});