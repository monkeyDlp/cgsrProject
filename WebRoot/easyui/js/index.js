$(function(){
	$('#index_content').tabs('hideHeader');
	$("#index_content").tabs("add",{
		title:'长高思瑞',
		selected:true,
		closable:false,
		href:"http://localhost:8080/cgsrProject/welcome.html"
	});	
	$("#xxgds").tree({
		lines:true,
		onClick:function(node){
			var obj = $("#index_content");
			if(node.id=="terminal"){
				var tab = $('#index_content').tabs('getSelected');  // get selected panel
				$('#index_content').tabs('update', {
					tab: tab,
					options: {
						title: '终端',
						href: 'http://localhost:8080/cgsrProject/yxdata_list.html'  
					}
				});
				//if(obj.tabs("exists","终端")){
					//obj.tabs("select","终端");
				//}else{
					//obj.tabs("add",{
						//title:"终端",
						//closable:true,
						//fit:true,
						//href:"http://localhost:8080/cgsrProject/yxdata_list.html"
					//});
				//}
			}else if(node.id=="fault_indicator"){
				var tab = $('#index_content').tabs('getSelected');  // get selected panel
				$('#index_content').tabs('update', {
					tab: tab,
					options: {
						title: '故障指示器',
						href: 'http://localhost:8080/cgsrProject/ycdata_list.html'  
					}
				});
				
				//if(obj.tabs("exists","故障指示器")){
					//obj.tabs("select","故障指示器");
					//}else{
					//obj.tabs("add",{
						//title:"故障指示器",
						//closable:true,
						//fit:true,
						//href:"http://localhost:8080/cgsrProject/ycdata_list.html"
				//	});
				//}
			}else if(node.id=="liuba"){
				var tab = $('#index_content').tabs('getSelected');  // get selected panel
				$('#index_content').tabs('update', {
					tab: tab,
					options: {
						title: '10KV柳八线',
						href: 'http://localhost:8080/cgsrProject/SvgPic.html'  
					}
				});
				
				//if(obj.tabs("exists","故障指示器")){
					//obj.tabs("select","故障指示器");
					//}else{
					//obj.tabs("add",{
						//title:"故障指示器",
						//closable:true,
						//fit:true,
						//href:"http://localhost:8080/cgsrProject/ycdata_list.html"
				//	});
				//}
			}
		}
	});
	$("#bakaigds").tree({
		onClick:function(node){
			var obj = $("#index_content");
			if(node.id=="liuba"){
					var tab = $('#index_content').tabs('getSelected');  // get selected panel
					$('#index_content').tabs('update', {
						tab: tab,
						options: {
							title: '10KV柳八线',
							href: 'http://localhost:8080/cgsrProject/SvgPic.html'  
						}
					});

					
					//obj.tabs("add",{
						//title:"10KV柳八线",
						//closable:true,
						//fit:true,
						//href:"http://localhost:8080/cgsrProject/SvgPic.html"
					//});
			}
		}
	});

});