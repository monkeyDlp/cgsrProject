var chart; 
$(document).ready(function () { 
	                chart = new Highcharts.Chart({ 
	                    chart: {  //整体控制
	                        renderTo: 'container',  //图表容器的DIVbar:横向条形图
	                        defaultSeriesType: 'line', //可选，默认为line【line:折线;spline:平滑的线;area:区域图;bar:曲线图;pie:饼图;scatter:点状图等等;
	                        marginRight: 130, //外边距控制 (上下左右空隙)
	                        marginBottom: 25  //外边距控制
	                    }, 
	                    title: { 
	                        text: '遥测曲线测试图', //主标题
	                        x: -20            //标题相对位置  默认居中
	                    },
	                    subtitle: {
	                    text: '趋势图',//副标题
	                    x: 60           //标题相对位置
	                    },
	                    xAxis: {          //x轴数据
	                        categories: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'] 
	                    }, 
	                    yAxis: {          //y轴数据
	                        title: { 
	                            text: '走向' 
	                        }, 
	                        plotLines: [{  //标线
	                            value: 0, 
	                            width: 1, 
	                            color: '#808080'
	                        }] 
	                    }, 
	                    tooltip: {        //数据点的提示框
	                        formatter: function () { 
	                            return '<b>' + this.series.name + '</b><br/>' + this.x + ': ' + this.y; 
	                        }  //formatter需要一个回调函数，可以通过this关键字打点得到当前一些图表信息
	                    }, 
	                    legend: { 
	                        layout: 'vertical', 
	                        align: 'right', 
	                        verticalAlign: 'top', 
	                        x: -10, 
	                        y: 100, 
	                        borderWidth: 0 
	                    }, 
	                    series: [{   //数据数组,json格式中name为这组数据的名字，data为这组数据的数组
	                        name: '测试一', 
	                        data: [2,7,9,25,31,40,9]
	                    }, { 
	                        name: '测试二', 
	                        data: [3,14,19,23,25,28,12]
	                    }, { 
	                        name: '测试三', 
	                        data: [4,16,17,20,25,26,4]
	                    }, { 
	                        name: '测试四', 
	                        data: [5,16,18,24,28,30,6]
	                    }, { 
	                        name: '测试五', 
	                        data: [6, 10, 12, 16, 18, 32, 15]
	                    }] 
	                }); 
	     
	            }); 
