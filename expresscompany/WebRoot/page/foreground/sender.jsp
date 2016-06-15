<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>自助寄件</title>
    
    <script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
		#body1{
			width:100%;
			height:580px;
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
			.doubles br{
			display: none;
			}
	</style>
  </head>
  
  <body>
    <!-- 寄件代码开始 -->
    <s:form method="post" namespace="/orders" action="addorders"  theme="simple">
		<div id="body1">
			<div id="body2" >
			<center>
				<p id="p1">寄件人信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.usname" maxlength="10" style='font-size:18px' />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;请选择省/市：</p>
 	  			<div class="doubles">&nbsp;&nbsp;&nbsp;&nbsp;
 	  			<s:doubleselect name="spid" list="allprovince" listKey="pid" listValue="pname" labelposition="top"
			       doubleName="scid" doubleList="cityMap.get(top.pid)"
			       doubleListKey="cid" doubleListValue="cname" >
 	  			</s:doubleselect>
 	  			</div>
    		 	
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;详细地址：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.usaddress" maxlength="32" style='font-size:18px' />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;手机号码：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.usphone" maxlength="11" style='font-size:18px' />
				<br><br>
			</div>
			<div id="body3" >
			<center>
				<p id="p2">收件人信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;真实姓名：</p>
				&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.urname" maxlength="10" style='font-size:18px' />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;请选择省/市：</p>
				
				<div class="doubles">&nbsp;&nbsp;&nbsp;&nbsp;
 	  			<s:doubleselect name="rpid" list="allprovince" listKey="pid" listValue="pname" labelposition="left"
			       doubleName="rcid" doubleList="cityMap.get(top.pid)"
			       doubleListKey="cid" doubleListValue="cname" >
 	  			</s:doubleselect>
 	  			</div>
				
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;详细地址：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.uraddress" maxlength="32" style='font-size:18px' />
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;手机号码：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.urphone" maxlength="11" style='font-size:18px' />
				<br><br>
			</div>
			<div id="body4" >
			<center>
				<p id="p4">快件信息</p>
			</center>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;备注：（100字以内）</p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textarea name="orders.oremark" rows="4" cols="25" style='font-size:18px'/>
				<br>
				<p id="p3">&nbsp;&nbsp;&nbsp;&nbsp;物品名称：</p>
					&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield name="orders.owname" maxlength="10" style='font-size:18px' />
				<br><br>
				<font id="p3">&nbsp;&nbsp;&nbsp;&nbsp;重量：</font>
				<s:textfield name="orders.oweight" id="weight" maxlength="2" size="2" style='font-size:18px'/>Kg&nbsp;&nbsp;(注：不能超过50Kg) 
				<br><br>
				<font id="p5">&nbsp;&nbsp;&nbsp;&nbsp;运费：</font>
				<s:textfield name="orders.omoney" id="momey" maxlength="2" size="2" style='font-size:18px' readonly="true" value="10"/><font id="p5">元</font>
				<br><br>
			</div>
			
		</div>
		<div id="body5" >
		<br>
			<center>
			<s:submit style="background:brown; color:white; font-size:30px" value="提交订单" />
			</center>
		<br><br>
		</div>
		</s:form>

		<!-- 寄件代码结束 -->
	<script type="text/javascript">
		$ (function () {
                $("#weight").bind("blur", function () {
                	Money();
                });
                $("#addorders_spid").bind("change", function () {
                	Money();
                });
                $("#addorders_rpid").bind("change", function () {
                	Money();
                });
                function Money(){
                	var WT=$("#weight").val();//获取重量
                	WT=$.trim(WT);
                	var SP=$("#addorders_spid").val();//获取省的名称
                	var RP=$("#addorders_rpid").val();
                	if(WT==''){
                		if(SP==RP){
                			$("#weight").val("");//清空输入框的内容
                			$("#momey").val(10);
                		}else{
                			$("#weight").val("");//清空输入框的内容
                			$("#momey").val(20);
                		}
                	}else{
                		if(!isNaN(WT)){
	                		if(Number(WT)>50){
	                			$("#weight").val("");//清空输入框的内容
		                		//$("#momey").val("");
		                		Money();
	                			alert("快件重量不能超过50Kg");
	                		}else{
	                			if(Number(WT)<0){
		                			$("#weight").val("");
		                			//$("#momey").val("");
		                			Money();
		                			alert("快件重量不能小于0Kg!");
	                			}else{
	                				if(SP==RP){
			                			$("#momey").val(Math.ceil((Number(WT)/10))*10);
			                		}else{
			                			$("#momey").val(Math.ceil((Number(WT)/10))*10+10);
			                		}
	                			}
	                		}
	                	}else{
	                		$("#weight").val("");
		                	//$("#momey").val("");
		                	Money();
	                		alert("快件重量请不要输入非数字字符!");
	                	}
                	}
                }
            });
	</script>
  </body>
</html>
