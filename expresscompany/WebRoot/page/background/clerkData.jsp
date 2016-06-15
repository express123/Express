<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>业务员信息</title>
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
			width:58%;
			margin: 0 auto;
			border: 2px solid rgb(0,0,0);
		}
		#body3{
			width:60%;
			margin: 0 auto;
		}
		#p1{
			font-size:20px;
			font-weight:400;
			
		}
		#p2{
			font-size:20px;
			font-weight:400;
			color:#808A87;
		}
		#showIndex_0{
			font-size: 18px;
		  	color:white;
		  	background: #808A87;
		}
		#showClerkIndex_0{
		  	font-size: 18px;
		  	color:white;
		  	background: #808A87;		
		}
		.button{
		  	font-size: 18px;
		  	color:white;
		  	background: #808A87;
		}
	</style>
  </head>
  <body>
    <div id="body1">
		<br><br><br><br><br><br>
		<div id="body2">
			<br><br>
			<div id="body3">
				<font id="p1">职&nbsp;&nbsp;工&nbsp;&nbsp;号：</font><font id="p2">${session.staff.sid}</font>
				<br><br>
				<font id="p1">职工类型：</font><font id="p2">业务员</font>
				<br><br>
				<font id="p1">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</font><font id="p2">${session.staff.sname}</font>
				<br><br>
				<font id="p1">手机号码：</font><font id="p2">${session.staff.sphone}</font>
				<br><br>
				<font id="p1">居住地址：</font><font id="p2">${session.staff.saddress}</font>
				<br><br>
				<s:form method="post" namespace="/staffmanage" action="showClerkIndex"  theme="simple">
				<input type="button"  value="修改信息" class="button" onClick="updateClerk()"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	        	<s:submit  value="返回首页"  />
	        	</s:form>
	        </div>
			<br><br>
		</div>
	</div>
	<script type="text/javascript">
			function updateClerk(){
		    	window.open("/expresscompany/page/background/updateClerkData.jsp",'_self');
		    	window.close();
		    }
	</script>
  </body>
</html>
