<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北理速运总经理界面</title>
<link href="/expresscompany/css/style.css" rel="stylesheet" type="text/css" />
<script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
	    *{margin:0;padding:0;}
	    #header{/*头部样式*/
			width:100%;
			height:110px;
			background:#9CF;
		}
		a:link { color: white; text-decoration: none}
		.p1{
			font-size:40px;
			font-weight:550;
			color: white;
		}
		.p2{
			font-size: 25px;
			font-weight:400;
			float:right;
		}

	</style>
</head>
<body>   
<!-- 网页头部开始 -->
	<div id="header">
	
		<br>
		<center>
					<p class="p1">北理速运后台管理系统</p>
		</center>
		<s:a action="exitStaff"  namespace="/staffmanage" ><font class="p2" >退出系统&nbsp;&nbsp;</font></s:a>
	</div>
	<!-- 网页头部结束 -->
	
<div id="bigdiv">

  <div id="leftdiv">
  <br/><br/><br/>
  <table id="left-table" align="center" border="3" >
  <tr>
  <th>功能    列表</th>
  </tr>
  <tr>
  <td><s:a action="enterWebsiteStaff"  namespace="/staffmanage" target="showNotice">&nbsp;&nbsp;员工管理&nbsp;&nbsp;</s:a></td>
  </tr>
   <tr>
  <td><s:a action="getProvince"  namespace="/banchesmanage" target="showNotice">&nbsp;&nbsp;网点管理&nbsp;&nbsp;</s:a></td>
  </tr>
   <tr>
  <td><s:a action="goToPageUser"  namespace="/usermanage" target="showNotice">&nbsp;&nbsp;用户管理&nbsp;&nbsp;</s:a></td>
  </tr>
  <tr>
  <td><s:a action="upDateImformationStaff"  namespace="/staffmanage" target="showNotice">&nbsp;&nbsp;个人信息&nbsp;&nbsp;</s:a></td>
  </tr>
   <tr>
  <td><s:a action="upDatePasswordStaff"  namespace="/staffmanage" target="showNotice">&nbsp;&nbsp;修改密码&nbsp;&nbsp;</s:a></td>
  </tr>
   <tr>
  <td><s:a action="GetALLorders"  namespace="/orders" target="showNotice">&nbsp;&nbsp;运单信息&nbsp;&nbsp;</s:a></td>
  </tr>
  </table>
    </div>
<div id="rightdiv"> 
<!-- <iframe name="showNotice" src="staff.jsp" height="800px" width="100%" frameborder="0" marginheight="0" marginwidth="0"  scrolling="yes"/> 
 -->
 <iframe name="showNotice" src="/expresscompany/page/background/firstmanagerpage.html" height="800px" width="100%" frameborder="0" marginheight="0" marginwidth="0" scrolling="yes"></iframe> 
  </div> 
 
</div>


<!-- 网页尾部开始 -->
	<table align="center" bgcolor="#9CF" width="100%" height="35px">
			<tr><th>&nbsp;</th></tr>
			<tr>
				<th><font color="white">北理速运公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：400-8008820</font></th>
			</tr>
			<tr><th>&nbsp;</th></tr>
	</table>
	<!-- 网页尾部结束 -->
</body>
</html>
