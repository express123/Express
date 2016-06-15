<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>修改用户信息</title>
    <script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
		*{margin:0;padding:0;}
		#body1{
			width:50%;
			height:600px;
			margin: 0 auto;
			background: rgb(245,245,245);
		}
		#body2{
			width:60%;
			margin: 0 auto;
			border: 2px solid rgb(0,0,255);
		}
		#body3{
			width:80%;
			margin: 0 auto;
		}
		#p1{
			font-size:20px;
			font-weight:400;
		}
		#updateUserData_0{
			font-size: 18px;
		  	color:white;
		  	background: #666666;
		}
		.button{
		  	font-size: 18px;
		  	color:white;
		  	background: #666666;
		}
	</style>
  </head>
  
  <body>
    <div id="body1">
		<br><br><br><br>
		<div id="body2">
			<br><br>
			<div id="body3">
			<s:form method="post" namespace="/usermanage" action="updateUserData"  theme="simple">
				<font id="p1">用&nbsp;&nbsp;户&nbsp;&nbsp;名：${session.user.uid}</font>
				<br><br>
				<font id="p1">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</font>
				<s:textfield name="user.uname" value="%{#session.user.uname}" maxlength="10" style='font-size:18px' />
				<br><br>
				<font id="p1">手机号码：</font>
				<s:textfield name="user.uphone" value="%{#session.user.uphone}"  maxlength="11" style='font-size:18px' />
				<br><br>
				<font id="p1">居住地址：</font><br>
				<s:textarea name="user.uaddress" value="%{#session.user.uaddress}"  maxlength="32" rows="3" cols="28" style='font-size:18px' />
				<br><br>
				<center>
				<s:submit  value="确认修改" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        	<input type="button"  value="取消修改" class="button" onClick="UserData()"/>
	        	</center>
	        </s:form>
	        </div>
			<br><br>
		</div>
	</div>
	<script type="text/javascript">
			function UserData(){
		    	window.open("/expresscompany/page/background/userData.jsp",'_self');
		    	window.close();
		    }
	</script>
  </body>
</html>
