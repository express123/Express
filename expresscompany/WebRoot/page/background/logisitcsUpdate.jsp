<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
 <title>更新物流信息</title>
	<script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
	*{margin:0;padding:0;}
		a{TEXT-DECORATION:none}
		#body1{
			width: 80%;
			margin: 0 auto;
			min-height:300px;
			background-color: rgb(235,235,235);
		}
		#body2{
			width: 70%;
			margin: 0 auto;
		}
		#body3{
			width: 85%;
			margin: 0 auto;
		}
		#p1{
			font-size:25px;
			color:#666666;
		}
		#p2{
			font-size:20px;
		}
		#updateLogisitcs_LogisitcsState{
			font-size:20px;
		}
		td{
		    text-align:center;
		}
	</style>
  </head>
  <body>
	<div id="body1">
		<br>
		<div id="body3">
		订单如下：
		<table border="1" width="100%"><!--边框属性需要加强-->
			<tr>
				<th>订单号</th>
				<th>寄件人</th>
				<th>寄件地址</th>
				<th>收件人</th>
				<th>收件地址</th>
				<th>备注</th>
				<th>订单详情</th>
			</tr>
			<tr>
				<td><s:property value="orders.oid" /></td>
				<td><s:property value="orders.usname" /></td>
				<td><s:property value="orders.usaddress" /></td>
				<td><s:property value="orders.urname" /></td>
				<td><s:property value="orders.uraddress" /></td>
				<td><s:property value="orders.oremark" /></td>
				<td><s:a action="logisitcsShowOrders" namespace="/staffmanage" target="backshowiframe">
				<s:param name="oid1"><s:property value='orders.oid' /></s:param>
				查看</s:a></td>
			</tr>
		</table>
		<br>
		<s:form action="updateLogisitcs" namespace="/staffmanage" method="post" theme="simple">
		<font id="p2">订单号为：</font><s:textfield name="orders.oid" style='font-size:20px' readonly="true" /><br>
		<font id="p2">该快件最新物流状态为：</font>
		<s:select name="LogisitcsState" list="allStype" listKey="stid" listValue="stname"></s:select>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<s:submit value="更新物流" style="background:brown; color:white; font-size:20px" onClick="showSuccess()"/>
		</s:form>
		</div>
		
		<br><br>
		</div>
		<br><br>
		<div id="body1">
			<div id="body2">
			<br>
				<font id="p1">物流信息如下所示：</font>
				<s:iterator value="Logisitcslist">
					<p><s:date name="ltime"  format="yyyy-MM-dd HH:mm:ss" /> &nbsp;&nbsp;<s:property value="lcontext" /></p>
				</s:iterator>
			</div>
		</div>
		<script type="text/javascript">
            function showSuccess(){
            	alert("更新物流成功！");
            }
        </script>
  </body>
</html>
