<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
	<title>监测系统</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="css/zTreeStyle/welcome.css" type="text/css">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="js/jquery.ztree.exhide.js"></script>
	<script type="text/javascript" src="js/tree.js"></script>
    <!--引入highchart插件-->
    <script src="js/graphs/highcharts.js" type="text/javascript"></script> 
    <!--引入highchart主题-->
    <script src="js/graphs/grid.js" type="text/javascript"></script> 
    <!--调用数据，生成chart-->
    <script type="text/javascript" src="js/graphs/graphs.js"></script>

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
<body>
<div class="Left">
	<div style='border:0px solid #000; background-color: #C4E1FF;padding:10px;'>馈线列表</div>
	<ul id="treeDemo" class="ztree"></ul>
</div>
	<div class="Right">
	<div style='border:0px solid #000; background-color: #C4E1FF;padding:10px;'>功能区域.....</div>
	 <div id="container" style="width: 100%; height: 94.5%"></div>
	</div>

	<div class="Header" >
    <h2 id="welcom_name">欢迎您：${user.userName}</h2>
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
</body>
</html>