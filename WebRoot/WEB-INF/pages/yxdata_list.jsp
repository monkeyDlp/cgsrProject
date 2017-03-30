<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
<head>  
<base href="<%=basePath%>">  
  
<title>遥信信息</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  
  
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  

</head>  
<body>  
    <table width="30%" border="1"   align="center">  
        <tr>  
            <th>设备类型</th>  
            <th>设备编号</th>  
            <th>设备参数</th>  
            <th>遥信值</th>  
            <th>时间</th>  
              
        </tr>  
        <c:forEach items="${yxdata}" var="yxdata">  
            <tr>  
                <td>${yxdata.bjlx}</td>  
                <td>${yxdata.bjid}</td>  
                <td>${yxdata.bjcs}</td>  
                <td>${yxdata.val}</td>  
                <td>${yxdata.freshtm}</td>  
            </tr>  
        </c:forEach>  
    </table>  
</body>  
  
</html>  