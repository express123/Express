<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>更新物流信息</title>
</head>
<script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
<style type ="text/css">
	*{margin:0;padding:0;}
		#body1{
			width:60%;
			height:300px;
			margin: 0 auto;
			background: rgb(245,245,245);
		}
		#p1{
			font-size:20px;
			font-weight:400;
		}
		#select1{
			font-size: 18px;
		  	color:white;
		  	background: #666666;
		}
</style>
  </head>
  
  <body>
  <br><br><br>
    <div id="body1">
		<br><br><br>
		<center>
		<s:form method="post" namespace="/staffmanage" action="selectOrdersLogisitcs"  theme="simple">
		<font id="p1">请输入订单号：</font>
		<s:textfield name="oid1" maxlength="9" style='font-size:18px'/>
		<s:submit  value="查询"  id="select1"/>
		</s:form>
		<br><br>
		</center>
	</div>
	<br><br>
  </body>
</html>
