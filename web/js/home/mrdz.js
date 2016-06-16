$(document).ready(function(){
   loadJs();
});



		function loadJs(){
			$(".moren").hover(function(){
				$(this).find('.moren1').attr('style','color:#996699');//选择器不能直接选中子元素
				$(this).find('.moren1').html("设为默认");
			},function(){$('.moren1').hide();
			})
			$('.del').click(function(){
				$(this).parent().remove();
				$(this).attr('val');
				var attr = 'id='+$(this).attr('val');
				$.ajax({
					url: deladdUrl,
					type: "post",
					dataType: "text",
					data: attr,
					async: false,
				})
			})

			$('.massge_box').click(function(){
				$('.massge_box').removeAttr('style');
				$(this).attr('style','background:url(../../images/home/images_16_Purchasepage/Select1.jpg);');
			})
			
	
			//文字的hover效果
			$('.moren1').click(function(){
				if($(this).attr('class')==('morenChosed'))return;
				
				if($('#morenChosedurl')!=null)
				{
					$('#morenChosedurl').attr('class','moren');
					$('#morenChosedurl').attr('id','');
					}
				$(this).parent().parent().attr('class','morenChosedUl');
				$(this).parent().parent().attr('id','morenChosedurl');
				
				$(".morenChosed").hide();       //
				$(".morenChosed").attr('class','moren1');//
				$(this).attr('class','morenChosed');//清楚moren1的hover效果,jq按顺序加载
   				$(this).text("默认地址");
				var attr = 'id='+$(this).attr('val');
				$.ajax({
					url: baseaddressUrl,
					type: "post",
					dataType: "text",
					data: attr,
					async: false,
				})
				window.location.reload();
			})
			$('.massge_box').click(function(){
				$('.massge_box').removeAttr('style');
				$(this).attr('style','background:url(../../images/home/images_16_Purchasepage/Select1.jpg);');
			})
			
			$(".right ul li").click(function(){	
			},function(){
				$(this).find(".sidebox1")	
			});

			$('.gywm').hover(function(){
				$('.xiala').css('display','block');	
			},function(){
				$('.xiala').css('display','none');
			})

			
		
		
    		$(".weixin").hover(function(){
        		$(".weixinerweima").show();
			},function(){
    		$(".weixinerweima").hide();						})
				
	
			
		
			
		
			$("#city").click(function (e) {
				SelCity(this,e);
			});
			
			$('.edit').click(function(){

				var attr = 'id='+$(this).attr('val');
				$.ajax({
					url: editUrl,
					type: "post",
					dataType: "json",
					data: attr,
					async: false,
					success:function(data){
						$('#id').val(data.id);
						$('#recipientName').val(data.recipientName);
						$('#city1').val(data.areaAddress);
						$('#detailAddress').val(data.detailAddress);
						$('#mobilephone').val(data.mobilephone);
						$('#postcode').val(data.postcode);
						$('.popupal2').css('display','block');
					}
				})
			});
			$('.shouhuodz').click(function(){
				$('.popupall').css('display','none');
			});
			$('.shouhuodz').click(function(){
				$('.popupal2').css('display','none');
			});

			
			$("#city1").click(function (e) {
				SelCity(this,e);
			});
			$('.preservation1').click(function(){
				var str = "";
				str +="&id="+$('#id').val();
				str +="&recipientName="+$('#recipientName').val();
				str +="&areaAddress="+$('#city1').val();
				str +="&detailAddress="+$('#detailAddress').val();
				str +="&mobilephone="+$('#mobilephone').val();
				str +="&postcode="+$('#postcode').val();
				str +="&hcity="+$('input[name="hcity"]').attr('data-id');
				str +="&hcityname="+$('input[name="hcity"]').attr('value');
				$.ajax({
					url: updateUrl,
					type: "post",
					dataType: "text",
					data:str ,
					async: "false",
					success: function (data) {
						$('.popupal2').hide();
						self.location.reload();
					}
				});


			});
			$('.shouhuo').click(function(){
				$('.popupall').css('display','block');
			});
		
		}
