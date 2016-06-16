

		$(document).ready(function(){
			loadJs();
		});

		function loadJs(){
			$(".three #hide").click(function(){
				$(this).parents(".three").hide("slow");
				var attr = 'id='+$(this).attr('val');
				$.ajax({
					url: deladdUrl,
					type: "post",
					dataType: "text",
					data: attr,
					async: false,
				})
			});
			$('.news').click(function(){
				$('.popupall').css('display','block');
			})
			$('.shouhuodz').click(function(){
				$('.popupall').css('display','none');
			})
			$("input[name='city']").click(function (e) {
				SelCity(this,e);
			});


			var disabled = true;
			$('.three #bianji').click(function(){
				if(!disabled){
					$(".view").attr('disabled', 'disabled');
					$(this).text('编辑');
					$(".view,.city").css("border","0px");
					var str = "";
					var id = $(this).attr('valid');
					str = 'id='+id;
					str +="&recipientName="+$('#'+id+'recipientName').val();
					str +="&areaAddress="+$('#'+id+'areaAddress').val();
					str +="&detailAddress="+$('#'+id+'detailAddress').val();
					str +="&mobilephone="+$('#'+id+'mobilephone').val();
					str +="&postcode="+$('#'+id+'postcode').val();
					str +="&hcity="+$('input[name="hcity"]').attr('data-id');
					str +="&hcityname="+$('input[name="hcity"]').attr('value');
					$.ajax({
						url: updateUrl,
						type: "post",
						dataType: "text",
						data:str ,
						async: "false",
						success: function (data) {
						}
					});

				} else {
					$('.view').removeAttr('disabled');
					$(this).text('确定');
					$(".view").css("border","1px solid #e3dbdb");
					disabled = !disabled;
				}

			});
		}