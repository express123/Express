<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>业务员修改密码</title>
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
			border: 2px solid rgb(255,0,0);
		}
		#p1{
			font-size:20px;
			font-weight:400;
			color: #666666;
		}
		#updateClerkPD_0{
		  	font-size: 18px;
		  	color:white;
		  	background: #9CF;		
		}
		.button{
		  	font-size: 18px;
		  	color:white;
		  	background: #9CF;
		}
	</style>
  </head>
  
  <body><div id="body1">
		<br><br><br><br><br><br>
		<div id="body2">
			<br><br>
			<center>
			<s:form method="post" namespace="/staffmanage" action="updateClerkPD"  theme="simple">
				<font id="p1">职&nbsp;&nbsp;工&nbsp;&nbsp;号：${session.staff.sid}</font>
				<br><br>
				<font id="p1">原&nbsp;&nbsp;密&nbsp;&nbsp;码：</font>
				<s:password name="YPD" maxlength="16" style='font-size:18px' />
				<br><br>
				<font id="p1">新的密码：</font>
				<s:password name="NewPD" maxlength="16" style='font-size:18px' />
				<br><br>
				<font id="p1">确认密码：</font>
				<s:password name="NewYesPD" maxlength="16" style='font-size:18px' />
				<br><br>
				<s:submit  value="确认修改" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        	<input type="button"  value="取消修改" class="button" onClick="backIndex()"/>
	        </s:form>
			</center>
			<br><br>
		</div>
	</div>
	<script type="text/javascript">
		
			function backIndex(){
		    	window.open("/expresscompany/page/background/clerkData.jsp",'_self');
		    	window.close();
		    }
	</script>
  </body>
</html>
