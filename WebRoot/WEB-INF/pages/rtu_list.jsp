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
  
<title>终端信息</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  
  
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>  

</head>  
<body>  
    <table width="80%" border="1"   align="center">  
        <tr>  
            <th>ID</th>  
            <th>NAME</th>  
            <th>GROUPID</th>  
            <th>COMPANYID</th>  
            <th>DSUBSTATIONID</th>  
            <th>CITYCODE</th>  
            <th>RTUADDR</th>  
            <th>PROTLID</th>
            <th>CALLCYCLE</th> 
            <th>TYPE</th> 
            <th>IP1</th> 
            <th>IP2</th> 
            <th>PORTNUM</th> 
            <th>FEEDERID</th> 
            <th>XYTYPE</th> 
            <th>X1</th> 
            <th>Y1</th> 
            <th>X2</th> 
            <th>Y2</th> 
            
        </tr>  
        <c:forEach items="${rtu}" var="rtu">  
            <tr>  
                <td>${rtu.id}</td>  
                <td>${rtu.name}</td>  
                <td>${rtu.groupid}</td>  
                <td>${rtu.companyid}</td>  
                <td>${rtu.dsubstationid}</td>  
                <td>${rtu.citycode}</td>  
                <td>${rtu.rtuaddr}</td>  
                <td>${rtu.protlid}</td> 
                
                <td>${rtu.callcycle}</td> 
                <td>${rtu.type}</td> 
                <td>${rtu.ip1}</td> 
                <td>${rtu.ip2}</td> 
                <td>${rtu.portnum}</td> 
                <td>${rtu.feederid}</td> 
                <td>${rtu.xytype}</td> 
                <td>${rtu.x1}</td>  
                <td>${rtu.y1}</td>  
                <td>${rtu.x2}</td>  
                <td>${rtu.y2}</td>  
            </tr>  
        </c:forEach>  
    </table>  
</body>  
  
</html>  