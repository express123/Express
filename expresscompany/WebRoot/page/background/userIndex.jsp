<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
 <title>用户管理页面</title>
	<script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
	*{margin:0;padding:0;}
		a{TEXT-DECORATION:none}
		#body1{
			width: 70%;
			height: 240px;
			margin: 0 auto;
			background-color: rgb(235,235,235);
		}
		#body2{
			width: 70%;
			margin: 0 auto;
			background-color: rgb(235,235,235);
		}
		#p1{
			font-size:25px;
		}
		td{
		    text-align:center;
		}
	</style>
  </head>
  <body>

	<div id="body1">
		<br><br><br><br>
		<center>
		<font id="p1">您好，${session.user.uid}</font><br>
		<font id="p1">您的个人信息完整度为：<s:property value="ratio"/>%</font><br>
		<font id="p1">可以点此</font>&nbsp;&nbsp;<a href="/expresscompany/page/background/updateUserData.jsp" target="backshowiframe" ><font id="p1" color="#9CF">完善资料</font></a>&nbsp;&nbsp;<font id="p1">哦</font>
		</center>
	</div>
	<br><br>
	<div id="body2">
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		您的待处理订单：
		<center>
		<table border="1" width="90%"><!--边框属性需要加强-->
			<tr>
				<th>订单号</th>
				<th>寄件人</th>
				<th>收件人</th>
				<th>物品名称</th>
				<th>备注</th>
				<th>运费</th>
				<th>订单详情</th>
			</tr>
			<s:iterator value="orderslist">
			<tr>
				<td><s:property value="oid" /></td>
				<td><s:property value="usname" /></td>
				<td><s:property value="urname" /></td>
				<td><s:property value="owname" /></td>
				<td><s:property value="oremark" /></td>
				<td><s:property value="omoney" /></td>
				<td><a href="#">查看</a></td>
			</tr>
			</s:iterator>
		</table>
		</center>
		<br><br>
	</div>
	<br>
		<script type="text/javascript">
            
        </script>
  </body>
</html>
