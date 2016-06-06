<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
		<title>北理速运</title>
	    <style type ="text/css">
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
			#big{margin:0 auto;}
			#mid {background-color:#EEEEEE;height:350px;width:150px;float:left;}
			#left {background-color:white;height:350px;width:350px;float:left;}
			#right {background-color:white;height:350px;width:400px;float:left;}
			.doubles br{
			display: none;
			}
	    </style>
    </head>
    <body>
	<br><br>
	
	<!-- 查询快件页面 -->

	<div id=big>
		<div id=left>
		
		</div>
		<div id="mid">
			<h1 id="p1">查询</h1>
			<ul>
			<li id="p3"><a href="queryExpress.html" style="text-decoration:none">查询快件</a></li>
			<li id="p3"><a href="queryFreight.html" style="text-decoration:none">查询运费</a></li>
			<li id="p3"><a href="queryBranch.html" style="text-decoration:none">查询网点</a></li>
			<li id="p3"><a href="queryBranchPhone.html" style="text-decoration:none">查询客服电话</a></li>
			</ul>	
		</div>
		<div id=right> 
			<ul>
		
			<b id="p3">寄件地址：</b>
			请选择省和市
			<s:form action="getbanchesQueryBranch" namespace="/querybranchmanage" method="post" target="showBranch">
			<div class="doubles">
				<s:doubleselect name = "spid" list="allprovince"  listKey="pid" listValue="pname" labelposition="left"				
  				  doubleName = "scid" doubleList="cityMap.get(top.pid)"  doubleListKey="cid" doubleListValue="cname" >
  				</s:doubleselect>  				
  			</div>
  			
			
			
			
			<b id="p3">目的地址：</b>
			<div class="doubles">
				<s:doubleselect name = "rpid" list="allprovince"  listKey="pid" listValue="pname" labelposition="left"				
  				  doubleName = "rcid" doubleList="cityMap.get(top.pid)"  doubleListKey="cid" doubleListValue="cname" >
  				</s:doubleselect>
			</div>
			<b id="p3">输入重量</b><input type="text" size=35>
			<s:submit value="查询"/>
			</s:form>
			</ul>
		</div>	
	</div>

	<div id=big>
		<center>
		<h1>运费</h1>
		<iframe name="showFreight" frameborder=0 width=500 height=250 marginheight=0 marginwidth=0 scrolling=no src="<s:url value='/page/foreground/freight.html'/>" ></iframe>
		</center>
	</div>
	
    </body>
</html>