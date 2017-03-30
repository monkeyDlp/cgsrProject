<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>监测系统登录</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="images/login.js"></script>
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>用户登录<sup>V2017</sup></h1>

<script type="text/javascript">
	function validate(){
		var userName = document.getElementById("u").value;
		var password = document.getElementById("p").value;
		var userCodeSpan = document.getElementById("userCodeSpan");
		var userPassword = document.getElementById("userPassword");
		var flag = true;
		
		if(userName == null || userName == ''){
			userCodeSpan.innerHTML = "请输入用户名!";
			flag = false;
		}
		
		if(password == null || password ==''){
			userPassword.innerHTML = "请输入密码!";
			flag = false;
		}
		
		var loginform = document.getElementById("loginform");
		if(flag){
		loginform.submit();
		}
	
	}
</script>

<div class="login" style="margin-top:50px;">
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">    

            <!--登录-->
	<div class="web_login" id="web_login">
      	<div class="login-box">
			<div class="login_form">
				<form action="loginsuccess.html" name="loginform" accept-charset="utf-8" id="loginform" method="post">
					<input type="hidden" name="did" value="0"/>
                	<input type="hidden" name="to" value="log"/>
                <div class="uinArea" id="uinArea">
                		<label class="input-tips" for="u">帐号：</label>
                	<div class="inputOuter" id="uArea">
                    	<input type="text" id="u" name="userName" class="inputstyle"/><span id="userCodeSpan"></span>
                	</div>
                </div>
                	<div class="pwdArea" id="pwdArea">
               			<label class="input-tips" for="p">密码：</label> 
               			<div class="inputOuter" id="pArea">
                    		<input type="password" id="p" name="password" class="inputstyle"/><span id="userPassword"></span>
                		</div>
                	</div>
                <div style="padding-left:50px;margin-top:20px;">
                
                	<input type="submit" value="登 录" style="width:210px;" class="button_blue" onclick="validate();"/>
                </div>
              </form>
           </div>
        </div>
	</div>
   <!--登录end-->
    </div>
  
    </div>
<div class="jianyi">*推荐使用ie8或以上版本ie浏览器或Chrome内核浏览器访问本站</div>
</body></html>