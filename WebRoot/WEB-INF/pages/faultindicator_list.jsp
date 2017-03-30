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
  
<title>故障指示器信息</title>  
  
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
            <th>FEEDERID</th>  
            <th>DSUBSTATIONID</th>  
            <th>POLEDESC</th>  
            <th>ACLINEID</th>  
            <th>XYTYPE</th>  
            <th>X1</th> 
            <th>Y1</th>  
            <th>X2</th>  
            <th>Y2</th>   
        </tr>  
        <c:forEach items="${faultindicator}" var="faultindicator">  
            <tr>  
                <td>${faultindicator.id}</td>  
                <td>${faultindicator.name}</td> 
                <td>${faultindicator.feederid}</td>  
                <td>${faultindicator.dsubstationid}</td>  
                <td>${faultindicator.poledesc}</td>
                <td>${faultindicator.aclineid}</td>
                <td>${faultindicator.xytype}</td>
                <td>${faultindicator.x1}</td>  
                <td>${faultindicator.y1}</td>  
                <td>${faultindicator.x2}</td>  
                <td>${faultindicator.y2}</td>
            </tr>  
        </c:forEach>  
    </table>  
</body>  
  
</html>  