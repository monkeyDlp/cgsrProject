<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>长高思瑞</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/icon.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/demo.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/index.css">
	<link rel="stylesheet" type="text/css" href="easyui/css/OrderContnet.css">
	<link rel="stylesheet" type="text/css" href="css/wel.css">
	<link rel="stylesheet" type="text/css" href="css/zTreeStyle/welcome.css">
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/js/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="easyui/js/index.js" charset="utf-8"></script>
	
	<script type="text/javascript" src="js1/highcharts.js"></script>
	<script type="text/javascript" src="js1/exporting.js"></script>
	
	<script type="text/javascript">
        
</script>
	<script type="text/javascript">
        function showMenu(obj) {
            var secondMenu = obj.getElementsByTagName("dl")[0];
            secondMenu.style.display = "block";
        }
        function hideMenu(obj) {
            var secondMenu = obj.getElementsByTagName("dl")[0];
            secondMenu.style.display = "none";
        }
</script>
  </head>
  
 <body class="easyui-layout">
	<div data-options="region:'north',border:false" id="newslogo">
			<span id="newslogo_span">长高思瑞故障监测系统</span>
			<ul class="site" id="nemus">
		         <li onmousemove="showMenu(this)" onmouseout="hideMenu(this)">
		             <a href="javascript:void(0);">人员登录</a>
		             <dl style="display:none" >
		               	 <dt><a href="register.html">用户注册</a></dt>
		                 <dt><a href="login.html">退出/注销</a></dt>
		              </dl>
		          </li>
		          <li  onmousemove="showMenu(this)" onmouseout="hideMenu(this)">
		             <a href="javascript:void(0);">帮助</a>
		             <dl style="display:none">
		                 <dt><a href="javascript:void(0);" onclick="alert('版本号1.0')">关于系统</a></dt>
		             </dl>
		         </li>    
		     </ul>
	</div>
	<!-- 左侧列表 -->
	<div data-options="region:'west',split:true,title:'馈线列表'" style="width:200px;">
		  
			  
		       <ul id="xxgds" class="easyui-tree">  
				    <li>
				    	<span>XX供电公司</span>
				    		<ul >  
				   			 	<li>
				    				<span>xx供电所</span>
				    					<ul>
				    						<li id="terminal">
				    							<span>终端</span>
				    						</li>
				    						<li id="fault_indicator">
				    							<span>故障指示器</span>
				    						</li>
				    					</ul>
				    		 	</li> 
				    		 	<li>
				    				<span>八开供电所</span>
				    					<ul>
				    						<li id="liuba">
				    							<span>10KV柳八线</span>
				    						</li>
				    					</ul>
				    		 		</li>
								</ul> 
				    </li> 
				</ul>
	</div>
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;padding:10px;">
		有问题请打110
	</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;" id="copyright">
		<p><a href="#">湖南长沙长高思瑞自动化有限公司</a>&copy版权所有   0234-123456789</p>
	</div>
	<div data-options="region:'center',title:'内容'">
		<div id="index_content" class="easyui-tabs" data-options="fit:true">
			
		</div>
	</div>
</body>
</html>
<script>

</script>
