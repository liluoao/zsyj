	(function($) {

		$.suggest = function(input, options) {
	
			var $input = $(input).attr("autocomplete", "off");
			var $results;

			var timeout = false;		// hold timeout ID for suggestion results to appear	
			var prevLength = 0;			// last recorded length of $input.val()
			var cache = [];				// cache MRU list
			var cacheSize = 0;			// size of cache in chars (bytes?)
			
			if($.trim($input.val())=='' || $.trim($input.val())=='中文') $input.val('').css('color','#aaa');
			if( ! options.attachObject )
				options.attachObject = $(document.createElement("ul")).appendTo('body');

			$results = $(options.attachObject);
			$results.addClass(options.resultsClass);
			
			resetPosition();
			$(window)
				.load(resetPosition)		// just in case user is changing size of page while loading
				.resize(resetPosition);

			$input.blur(function() {
				setTimeout(function() { $results.hide() }, 200);
			});
			
			$input.focus(function(){
				
			});
			$input.click(function(){
				var q=$.trim($(this).val());
				if("" != q){
					var dfield="title,1;titlepinyin,1";
					var dataString = "resType="+resType+"&perPage="+perPage+
						"&state=-1&orderField=uploadTime&orderMethod=descending&page=1"+
						"&pubId="+pubId+"&dfield="+dfield+"&title="+q;
					$.ajax({
						url:path+"/ResFetch.do?action=searchResource", 
						type:"post",
						data:dataString,
						dataType:"xml",
						success:function(data) {
							var title,title_pinyin;
							var i=0;
							$(data).find("clipping").each(function(){ 
								title = $(this).find('title').text();
								titlepinyin = $(this).find('titlepinyin').text();
								citys[i] = new Array(title,titlepinyin);
								i++;
							})
							displayItems(q);
							$(this).select();
						}
					})
				}
				
			});
						
			// help IE users if possible
			try {
				$results.bgiframe();
			} catch(e) { }

			$input.keyup(processKey);//
			
			function resetPosition() {
				// requires jquery.dimension plugin
				var offset = $input.offset();
				$results.css({
					top: (offset.top + input.offsetHeight) + 'px',
					left: offset.left + 'px'
				});
			}
			

			function processKey(e) {
				
				// handling up/down/escape requires results to be visible
				// handling enter/tab requires that AND a result to be selected
				if ((/27$|38$|40$/.test(e.keyCode) && $results.is(':visible')) ||
					(/^13$|^9$/.test(e.keyCode) && getCurrentResult())) {
		            
		            if (e.preventDefault)
		                e.preventDefault();
					if (e.stopPropagation)
		                e.stopPropagation();

	                e.cancelBubble = true;
	                e.returnValue = false;
				
					switch(e.keyCode) {
	
						case 38: // up
							prevResult();
							break;
				
						case 40: // down
							nextResult();
							break;
						case 13: // return
							selectCurrentResult();
							break;
							
						case 27: //	escape
							$results.hide();
							break;
	
					}
					
				} else if ($input.val().length != prevLength) {

					if (timeout) 
						clearTimeout(timeout);
					timeout = setTimeout(suggest, options.delay);
					prevLength = $input.val().length;
					
				}			
					
				
			}
			
			function suggest() {
				var q = $.trim($input.val());
				if("" != q){
					var dfield="title,1;titlepinyin,1";
					var dataString = "resType="+resType+"&perPage="+perPage+
						"&state=-1&orderField=uploadTime&orderMethod=descending&page=1"+
						"&pubId="+pubId+"&dfield="+dfield+"&title="+q;
					$.ajax({
						url:path+"/ResFetch.do?action=searchResource", 
						type:"post",
						data:dataString,
						dataType:"xml",
						success:function(data) {
							var title,title_pinyin;
							var i=0;
							$(data).find("clipping").each(function(){ 
								title = $(this).find('title').text();
								titlepinyin = $(this).find('titlepinyin').text();
								citys[i] = new Array(title,titlepinyin);
								i++;
							})
							displayItems(q);
						}
					})
				}
			}		
			function displayItems(items) {
				var html = '';
				if (items=='') {//热门城市遍历
					for(h in options.hot_list){
						html+='<li rel="'+options.hot_list[h][0]+'"><a href="#'+h+'">'+options.hot_list[h][0]+options.hot_list[h][1]+'</a></li>';
					}
					html='<div class="gray ac_result_tip"></div><ul>'+html+'</ul>';
				}
				else {
					/*if (!items)
					return;
					if (!items.length) {
						$results.hide();
						return;
					}*/
					for (var i = 0; i < options.source.length; i++) {//国内城市匹配
						var reg = new RegExp('^' + items + '.*$', 'im');
						if (reg.test(options.source[i][0]) || reg.test(options.source[i][1])) {
							html += '<li rel="' + options.source[i][0] + '"><a href="#' + i + '"><span>' +' '+'</span>'+options.source[i][0] + '</a></li>';
						}
					}
					if (html == '') {
						suggest_tip = '<div class="gray ac_result_tip">此标题没有重复：' + items + '</div>';
					}
					else {
						suggest_tip = '<div class="gray ac_result_tip">' + items + '，按拼音排序</div>';
					}
					html = suggest_tip + '<ul>' + html + '</ul>';
				}

				$results.html(html).show();
				$results.children('ul').children('li:first-child').addClass(options.selectClass);
				
				$results.children('ul')
					.children('li')
					.mouseover(function() {
						$results.children('ul').children('li').removeClass(options.selectClass);
						$(this).addClass(options.selectClass);
					})
					.click(function(e) {
						e.preventDefault(); 
						e.stopPropagation();
						selectCurrentResult();
					});
			}
						
			function getCurrentResult() {
			
				if (!$results.is(':visible'))
					return false;
			
				var $currentResult = $results.children('ul').children('li.' + options.selectClass);
				if (!$currentResult.length)
					$currentResult = false;
					
				return $currentResult;

			}
			
			function selectCurrentResult() {
			
				$currentResult = getCurrentResult();
			
				if ($currentResult) {
					$input.val($currentResult.children('a').html().replace(/<span>.+?<\/span>/i,''));
					$results.hide();

					if( $(options.dataContainer) ) {
						$(options.dataContainer).val($currentResult.attr('rel'));
					}
	
					if (options.onSelect) {
						options.onSelect.apply($input[0]);
					}
				}
			
			}
			
			function nextResult() {
			
				$currentResult = getCurrentResult();
			
				if ($currentResult)
					$currentResult
						.removeClass(options.selectClass)
						.next()
							.addClass(options.selectClass);
				else
					$results.children('ul').children('li:first-child').addClass(options.selectClass);
			
			}
			
			function prevResult() {
			
				$currentResult = getCurrentResult();
			
				if ($currentResult)
					$currentResult
						.removeClass(options.selectClass)
						.prev()
							.addClass(options.selectClass);
				else
					$results.children('ul').children('li:last-child').addClass(options.selectClass);
			
			}
	
		}
		
		$.fn.suggest = function(source, options) {
		
			if (!source)
				return;
		
			options = options || {};
			options.source = source;
			options.hot_list=options.hot_list || [];
			options.delay = options.delay || 0;
			options.resultsClass = options.resultsClass || 'ac_results';
			options.selectClass = options.selectClass || 'ac_over';
			options.matchClass = options.matchClass || 'ac_match';
			options.minchars = options.minchars || 1;
			options.delimiter = options.delimiter || '\n';
			options.onSelect = options.onSelect || false;
			options.dataDelimiter = options.dataDelimiter || '\t';
			options.dataContainer = options.dataContainer || '#SuggestResult';
			options.attachObject = options.attachObject || null;
	
			this.each(function() {
				new $.suggest(this, options);
			});
	
			return this;
			
		};
		
	})(jQuery);