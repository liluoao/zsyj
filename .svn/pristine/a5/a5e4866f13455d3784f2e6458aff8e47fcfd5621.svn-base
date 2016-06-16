//从一个方框中获取，传到另外的方框中。隐藏方框中获取真实值，显示方框中显示名称。
function choose(){
	//art.dialog.parent.document.getElementById('materialname')
	var material = $('input[name="materialName"]:checked').val().split(";")
	art.dialog.parent.$("#materialName").val(material[0]);
	art.dialog.parent.$("#material").val(material[1]);
	window.top.$.dialog.get('materialcost_choose').close();
}
