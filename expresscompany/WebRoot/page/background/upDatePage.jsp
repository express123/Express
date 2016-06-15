<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点修改界面</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
 .doubles br{
			display: none;
			}
 
 </style>
</head>
<body>
<br>
    <center><font size="7">欢迎来到网点修改界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	  <center><font size="6">修改网点</font></center> <br>
	<s:form action="saveUpDateBanches.action?banches.bid=%{banches.bid}" namespace="/banchesmanage" method="post">
		 <center> 网点名称：<s:textfield name="banches.bname" size="35" /><br/><br/>
		<div class="doubles">
		省        市：<s:doubleselect name="banches.pid" list="allprovince" listKey="pid" listValue="pname" labelposition="left"
			       doubleName="banches.cid" doubleList="cityMap.get(top.pid)"
			       doubleListKey="cid" doubleListValue="cname" >
 	  			</s:doubleselect>
 	  			</div><br/>
		 <center> 详细地址：<s:textfield  name="banches.baddress" size="35" /><br/><br/>
		 <center> 网点电话：<s:textfield name="banches.bphone" size="35" /><br/><br/>
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
</body>
 <script>
$(function(){
	var id1="#saveUpDateBanches_banches_bname";
	var id2="#saveUpDateBanches_banches_baddress";
	var id3="#saveUpDateBanches_banches_bphone";
	$(id1).blur(function(){
		var name1=$(id1).val().trim();
		bname(name1,id1,"姓名不能为空");
	});
	$(id2).blur(function(){
		var name2=$(id2).val().trim();
		bname(name2,id2,"地址不能为空");
	});
	$(id3).blur(function(){
		var mobile=$(id3).val().trim();
		bphone(mobile,id3);
	});
	$("input:reset").bind("click",function(){
		$(id1).next("span").remove();
		$(id2).next("span").remove();
		$(id3).next("span").remove();
	});
});
</script>

</html>
