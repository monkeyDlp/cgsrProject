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
  
<title>遥测曲线</title>  
  
<meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">

<script type="text/javascript" src="js1/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js1/highcharts.js"></script>
<script type="text/javascript" src="js1/exporting.js"></script>

</head>  
<body> 
 <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
    
    <table width="50%" border="1"   align="center">  
        <tr>  
        	<th>时间</th>
            <th>设备类型</th>  
            <th>设备编号</th>
         	<th>设备参数</th> 
            <th>遥信值</th>  
            <th>时间</th>
        </tr>  
        <c:forEach items="${ycdata}" var="ycdata">  
            <tr> 
            	<td>${ycdata.datatime}</td>    
                <td>${ycdata.bjlx}</td>  
                <td>${ycdata.bjid}</td>   
                <td>${ycdata.bjcs}</td>   
                <td>${ycdata.val}</td>  
                <td>${ycdata.freshtm}</td>
            </tr>  
        </c:forEach>  
    </table>
    
    <script type="text/javascript">
        $(document).ready(function () {
    Highcharts.setOptions({
        global: {
            useUTC: false
        }
    });

    Highcharts.chart('container', {
        chart: {
        	backgroundColor: '#DCDCDC',
            type: 'spline',
            animation: Highcharts.svg, // 不要使用旧的ie浏览器
            marginRight: 10,
            events: {
                load: function () {
                    //每秒设置更新图表
                    var series = this.series[0];
                    setInterval(function () {
                        var x = (new Date()).getTime(), // 当前时间
                            y = Math.random();
                        series.addPoint([x, y], true, true);
                    }, 1000);
                }
            }
        },
        title: {
            text: '遥测测试曲线图'
        },
        xAxis: {
            type: 'datetime',
            tickPixelInterval: 150
        },
        
        yAxis: {
            title: {
                text: '时实数据'
            },
        },
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                    Highcharts.numberFormat(this.y, 2);
            }
        },
        legend: {
            enabled: false
        },
        exporting: {
            enabled: false
        },
        colors:['#FF0000'],//设置线条颜色
        series: [{
            name: '随机数据',
            data: (function () {
                // 生成随机数据数组
                var data = [],
                    time = (new Date()).getTime(),
                    i;
                for (i = -19; i <= 0; i += 1) {
                    data.push({
                        x: time + i * 1000,
                        y: Math.random()
                    });
                }
                return data;
            }())
        }]
    });
});
    </script>
</body>  
</html>  