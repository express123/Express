<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/expresscompany/js/identity.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>网点管理</title>
 <link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
 <style type="text/css"> 
 .doubles br{
			display: none;
			}
  .ta td{
  word-break: keep-all;
  white-space:nowrap;
  text-align:center;
  padding:10px;
  }
 </style>
</head>
<body>
<br>
    <center><font size="7">欢迎来到网点界面</font></center> <br>
	 <hr size="6"  color="#ff0000"><br><br>
	  <center><font size="6">添加网点</font></center> <br>
	<s:form action="addBanches" namespace="/banchesmanage" method="post">
		 <center> 网点名称：<s:textfield name="banches.bname" size="35"/><br/><br/>
		<div class="doubles">
		省        市：<s:doubleselect name="banches.pid" list="allprovince" listKey="pid" listValue="pname" labelposition="left"
			       doubleName="banches.cid" doubleList="cityMap.get(top.pid)"
			       doubleListKey="cid" doubleListValue="cname" >
 	  			</s:doubleselect>
 	  			</div><br/>
		 <center> 详细地址：<s:textfield  name="banches.baddress" size="35"/><br/><br/>
		 <center> 网点电话：<s:textfield name="banches.bphone" size="35"/><br/><br/>
		 <center> <s:submit value="保存"/>&nbsp;&nbsp;<s:reset value="重置" />
	</s:form>
	      <br/>  <br/>   <br/>
	      
     <hr size="3"  color="#ff0000"><br><br>
      <center><font size="7">全部网点信息</font></center> <br><br>
     <table width="600" border="3">
     <tr class="ta">
     <td>网点名称</td>
     <td>网点省份</td>
     <td>网店城市</td>
     <td>详细地址</td>
     <td>网点电话</td>
     <td>修       改 </td>
     <td>删      除 </td>
     </tr>
     <s:iterator value="allwebsite">
  <tr class="ta">
    <td>
	<s:property value="bname" />
    </td>
    <td>
	<s:property value="pname" />
    </td>
     <td>
	<s:property value="cname" />
    </td>
    <td>
	<s:property value="baddress" />
    </td>
    <td>
	<s:property value="bphone" />
    </td>
    
    <td>
    <s:a action = "updateBanches" namespace = "/banchesmanage" target="showNotice">
    <s:param name = "bid"><s:property value = "bid" /></s:param>
            修改
    </s:a>
    </td>
 
    <td>
    <s:a action = "delectBanches" namespace = "/banchesmanage" target="showNotice">
    <s:param name = "bid"><s:property value = "bid" /></s:param>
            删除
    </s:a>
    </td>
   
  </tr>
  </s:iterator>
  </table>   
     <br/><br/><br/>
</body>
<script>
$(function(){
	var id1="#addBanches_banches_bname";
	var id2="#addBanches_banches_baddress";
	var id3="#addBanches_banches_bphone";
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