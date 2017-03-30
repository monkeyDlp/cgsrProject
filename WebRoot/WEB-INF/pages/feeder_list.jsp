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
  
<title>馈线名称</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  
  
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  

</head>  
<body>  
    <table width="50%" border="1"   align="center">  
        <tr>  
            <th>ID</th>  
            <th>NAME</th>  
            <th>SUBSTATIONID</th>  
            <th>FEEDERZONDID</th>  
            <th>VOLTAGEID</th>  
            <th>WIDTH</th>  
            <th>HEIGHT</th>  
            <th>BGCOLOR</th>  
        </tr>  
        <c:forEach items="${feeder}" var="feeder">  
            <tr>  
                <td>${feeder.id}</td>  
                <td>${feeder.name}</td>  
                <td>${feeder.substationid}</td>  
                <td>${feeder.feederzoneid}</td>  
                <td>${feeder.voltageid}</td>  
                <td>${feeder.width}</td>  
                <td>${feeder.height}</td>  
                <td>${feeder.bgcolor}</td>  
            </tr>  
        </c:forEach>  
    </table>  
</body>  
  
</html>  