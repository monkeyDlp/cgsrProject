var setting = {
			data: {
				key: {
					title: "title"
				},
				simpleData: {
					enable: true
				}
			}
		};
		var zNodes =[
			{ id:1, pId:0, name:"娄底线", title:"",open:true,iconOpen:"css/zTreeStyle/img/diy/1_open.png", iconClose:"css/zTreeStyle/img/diy/1_close.png"},
			{ id:11, pId:1, name:"终端",url:"http://localhost:8080/cgsrProject/yxdata_list.html", title:"",open:true, icon:"css/zTreeStyle/img/diy/8.png"},
			{ id:11, pId:1, name:"故障指示器",url:"http://localhost:8080/cgsrProject/ycdata_list.html", title:"",icon:"css/zTreeStyle/img/diy/8.png"}
		];
		function setTitle(node) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			var nodes = node ? [node]:zTree.transformToArray(zTree.getNodes());
			for (var i=0, l=nodes.length; i<l; i++) {
				var n = nodes[i];
				n.title = "[" + n.id + "] isFirstNode = " + n.isFirstNode + ", isLastNode = " + n.isLastNode;
				zTree.updateNode(n);
			}
		}
		function count() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			hiddenCount = zTree.getNodesByParam("isHidden", true).length;
			$("#hiddenCount").text(hiddenCount);
		}
		function showNodes() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getNodesByParam("isHidden", true);
			zTree.showNodes(nodes);
			setTitle();
			count();
		}
		function hideNodes() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
			nodes = zTree.getSelectedNodes();
			if (nodes.length == 0) {
				alert("Please select one node at least.");
				return;
			}
			zTree.hideNodes(nodes);
			setTitle();
			count();
		}
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#hideNodesBtn").bind("click", {type:"rename"}, hideNodes);
			$("#showNodesBtn").bind("click", {type:"icon"}, showNodes);
			setTitle();
			count();
		});