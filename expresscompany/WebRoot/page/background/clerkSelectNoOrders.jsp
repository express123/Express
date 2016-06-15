<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>业务员确定是否接单</title>
    <script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
	a{TEXT-DECORATION:none}
		#body1{
			width:100%;
			height:570px;
			background: rgb(245,245,245);
		}
		#body2{
			width:27%;
			float:left;
			border: 1px solid rgb(255,0,0);
			margin:3%;
		}
		#body3{
			width:27%;
			float:left;
			border: 1px solid rgb(0,0,255);
			margin:3%;
		}
		#body4{
			width:27%;
			float:left;
			border: 1px solid rgb(0,0,0);
			margin:3%;
		}
		#body5{
			width:100%;
			margin:0 auto;
		}
		#p1{
				font-size:30px;
				font-weight:550;
				color: red;
			}
		#p2{
				font-size:30px;
				font-weight:550;
				color: blue;
			}
		#p3{
				font-size:20px;
				font-weight:400;
			}
		#p4{
				font-size:30px;
				font-weight:550;
			}
		#p5{
				font-size:20px;
				font-weight:400;
				color:red;
			}
		#p6{
				font-size:35px;
				font-weight:500;
				color:brown;
			}
			.doubles br{
			display: none;
			}
	</style>
  </head>
  
  <body>
  <center>
  <p id="p6">订单号为：<s:property value="orders.oid"/>&nbsp;&nbsp;详情如下</p>
  </center>
    <!-- 寄件代码开始 -->
		<div id="body1">
			<div id="body2" >
			<center>
				<p id="p1">寄件人信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.usname" maxlength="10" style='font-size:18px' readonly="true" />
				<br>    		 	
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;寄件地址：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textarea name="orders.usaddress" rows="4" cols="25" style='font-size:18px' readonly="true" />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;手机号码：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.usphone" maxlength="11" style='font-size:18px' readonly="true" />
				<br><br>
			</div>
			<div id="body3" >
			<center>
				<p id="p2">收件人信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</p>
				&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.urname" maxlength="10" style='font-size:18px' readonly="true" />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;收件地址：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textarea name="orders.uraddress" rows="4" cols="25" style='font-size:18px' readonly="true" />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;手机号码：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.urphone" maxlength="11" style='font-size:18px' readonly="true" />
				<br><br>
			</div>
			<div id="body4" >
			<center>
				<p id="p4">快件信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;备注：（100字以内）</p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textarea name="orders.oremark" rows="4" cols="25" style='font-size:18px' readonly="true" />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;物品名称：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.owname" maxlength="10" style='font-size:18px' readonly="true" />
				<br><br>
				<font id="p3">&nbsp;&nbsp;&nbsp;&nbsp;重量：</font>
				<s:textfield name="orders.oweight" id="weight"  size="2" style='font-size:18px' readonly="true"/>Kg&nbsp;&nbsp;(注：不能超过50Kg) 
				<br><br>
				<font id="p5">&nbsp;&nbsp;&nbsp;&nbsp;运费：</font>
				<s:textfield name="orders.omoney" id="momey"  size="2" style='font-size:18px' readonly="true"/><font id="p5">元</font>
				<br><br>
			</div>
			
		</div>
		<div id="body5" >
		<br>
			<center>
			
			<s:a namespace="/staffmanage" action="clerkShowSuccessOrders">
			<s:param name="oid1"><s:property value='orders.oid' /></s:param>
			<font style="background:brown; color:white; font-size:30px">确认接单</font></s:a>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<s:a namespace="/staffmanage" action="clerkShowFailOrders">
			<s:param name="oid1"><s:property value='orders.oid' /></s:param>
			<font style="background:brown; color:white; font-size:30px">取消接单</font></s:a>
			</center>
		<br><br><br>
		</div>
		<!-- 寄件代码结束 -->
	<script type="text/javascript">
	function showSuccess(){
		alert("接单成功，请尽快安排快递员上门取件！");
	}
	</script>
  </body>
</html>
