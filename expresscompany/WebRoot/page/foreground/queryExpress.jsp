<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<title>北理速运</title>
			<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap.min.css'/> ">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap-theme.min.css'/> ">
	    <style type ="text/css">
html,body{height:90%;overflow:hidden;}
			#p1{
				font-size:32px;
				font-weight:700;
				color:brown;
			}
			
			#p3{
				font-size:20px;
				font-weight:600;
			}
			
			#p4{
				font-size:20px;
				font-weight:600;
				color:#444444;
			}
			
			#mid {background-color:#EEEEEE;height:350px;width:150px;float:left;}
			#left {background-color:white;height:350px;width:350px;float:left;}
			#right {background-color:white;height:350px;width:400px;float:left;}
	    </style>
    </head>
    <body>
	<br><br>
	
	<!-- 查询快件页面 -->
	<div class="container">
		<div class="row">
			<div class="col-sm-2">
				<ul>
				<li id="p3"><a href="/expresscompany/page/foreground/queryExpress.jsp">查询快件</a></li>
				<li id="p3"><s:a action="tofreightProvinceCity"  namespace="/provincecitymanage" >查询运费</s:a></li>
				<li id="p3"><s:a action="tobranchProvinceCity"  namespace="/provincecitymanage" >查询网点</s:a></li>
				<li id="p3"><s:a action="tophoneProvinceCity"  namespace="/provincecitymanage" >查询客服电话</s:a></li>
				</ul>
			</div>
			
			<div class="col-sm-10">
				<div class="col-sm-2">
					<ul>
					<center>
					<s:form action="getLogisitcs" namespace="/logisitcsmanage" method="post" target="showLogistics" >
					<b id="p3">运单号&nbsp;&nbsp;</b>
					<s:textfield name="oid"/>
					<br>
					<br>
					<s:submit value="查询"/>
					</s:form>
					</center>
					</ul>							
				</div>
				<div class="col-sm-10">
					<center>
					<iframe name="showLogistics" frameborder=0 width=500 height=250 marginheight=0 marginwidth=0 scrolling=no src="<s:url value='/page/foreground/logisitcs.jsp'/>"  ></iframe>	
					</center>
				</div>
			</div>
		</div>
	</div>

    </body>
</html>
