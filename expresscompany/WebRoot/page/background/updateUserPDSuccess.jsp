<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>密码修改成功页面</title>
  </head>
  	<style type ="text/css">
	*{margin:0;padding:0;}
	#body1{
			width:100%;
			height:580px;
			background: rgb(245,245,245);
		}
	#body2{
			width:30%;
			border: 3px solid rgb(255,0,0);
			margin:0 auto;
		}
	#p1{
			font-size:30px;
			font-weight:400;
			color:brown;
		}
	#p2{
			font-size:20px;
			font-weight:400;
		}
	</style>
  <body>
    <div id="body1">
    <br><br><br><br><br><br>
	    <div id="body2">
	    <center>
	    <br><br>
			<font id="p1">恭喜您，${session.user.uid}</font><br><br>
			<br><br>
			<font id="p2">密码修改成功！</font><br>
			<font id="p2">请牢记您的新密码哦！</font><br>
		<br><br><br>
		</center>
		</div>
	</div>
  </body>
</html>
