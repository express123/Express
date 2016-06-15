<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>取消订单成功后的页面</title>
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
			<font id="p1">取消订单成功！</font><br><br>
			<br><br>
			<font id="p2">请现在打电话通知寄件人取消订单具体原因。</font><br>
			<font id="p2">寄件人电话：<s:property value="orders.usphone"/></font><br>
			<font id="p2">打电话的时候，切记态度要好一点，辛苦了。</font><br>
		<br><br><br>
		</center>
		</div>
	</div>
  </body>
</html>
