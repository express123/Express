<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>下单成功</title>
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
			border: 3px solid rgb(0,0,255);
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
			<font id="p1">下单成功！</font><br><br>
			<font id="p2">订单号为：</font>
			<s:textfield name="orders.oid" maxlength="10" style='font-size:18px' readonly="true" />
			<br><br>
			<font id="p2">可凭此订单号查询快件信息。</font><br>
			<font id="p2">因此，请务必记下此订单号！</font>
		<br><br><br>
		</center>
		</div>
	</div>
  </body>
</html>
