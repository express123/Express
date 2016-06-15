<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>注册</title>
<script src="../../js/jquery-1.90.js" type="text/javascript"></script>
<style type ="text/css">
*{margin:0;padding:0;}
	#body1{
			width:71%;
			float:left;
		}
	#body2{
			width:29%;
			float:left;

		}
		#img{/*图片设置*/
			height: 100%;
			width: 100%;
		}
		#rebody{
		border: 1px solid rgb(0,0,255);
  		margin:0 10%;
		}
		#Register_0{
		  font-size: 18px;
		  color:white;
		  background: #082E54;
		}
		.button{
		  font-size: 18px;
		  color:white;
		  background: #082E54;
		}
		.p1{
		  font-size: 20px;
		  font-weight:400;
		  text-align: right;
		  color:#9CF
		}
		.p2{
		  font-size: 40px;
		  font-weight:400;
		  text-align: right;
		  color:#9CF
		}
</style>

  </head>
  
  <body>
    <div id="body1">
  	<image src="/expresscompany/images/register.jpg" id="img"></image>
  </div>
  <div id="body2">
  <br>
  <br>
  <br>
  <center>
  <font class="p2">用户注册</font>
  </center>
  <br>
  <br>
  <div id="rebody">
  <br><br>
  <center><s:form action="Register" namespace="/usermanage" method="post" >
    	用户名：<s:textfield name="user.uid"  /><br/><br/><br/>
              
                       密&nbsp;&nbsp;&nbsp;&nbsp;码：<s:password name="user.upd"  /> <br/><br/><br/>
        
                       确认密码：<s:password name="password"  /> <br/><br/><br/>
        <s:submit  value="注册" />&nbsp;&nbsp;&nbsp;&nbsp;
        <input value="重置" class="button" type="reset">
    </s:form>
    </center> 
    <br><center><font class="p1" onClick="backIndex()">返回首页</font>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font class="p1" onClick="login()">已有帐号？</font></center>
    <br>
    </div>
    </div>
      <script>/*div和图片充满屏幕*/
    function change(){
  	    var sh=$(window).height();
  	    $("#body1").height(sh);
        $("#body2").height(sh);
    }
  	$(function(){
  		change();
  	});
  	$(window).resize(function(){
  		change();
  	});
  	function login(){
    	window.open("login.jsp",'_self');
    	window.close();
    }
  	function backIndex(){
    	window.open("index.jsp",'_self');
    	window.close();
    }
  </script>
  </body>
</html>
