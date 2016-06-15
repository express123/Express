<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>北理速运会员管理系统</title>
	<script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
	<style type ="text/css">
	    *{margin:0;padding:0;}
	    a{TEXT-DECORATION:none}
	    #header{/*头部样式*/
			width:100%;
			height:110px;
			background:#9CF;
		}
		#header1{
			font-size: 25px;
		}
		#ul1
        {
            list-style-type: none;
            padding: 5px;
            margin: 0px;
            display: none;
        }
        .li
        {
            margin: 3px;
        }
        #h41
        {
            padding: 5px;
            margin: 0px;
            color: #9CF;
        }
        #p1{
			padding: 5px;
            margin: 0px;
            color: #9CF;
            float:right;
        }
		#p2{
			font-size:40px;
			font-weight:550;
			color: white;
		}
		#p3{
			font-size: 25px;
			font-weight:400;
			float:right;
			color: white;
		}
	</style>
  </head>
  <body>
    <!-- 网页头部开始 -->
	<div id="header">
		<br>
		<center>
					<p id="p2">北理速运会员管理系统</p>
		</center>
		<s:a action="exit" namespace="/usermanage"><font id="p3" >退出系统&nbsp;&nbsp;</font></s:a>
	</div>
	<!-- 网页头部结束 -->
	<div id="header1">
		<a href="#"><font id="h41">用户信息 ▽</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
		<span><s:a action="showIndex" namespace="/usermanage" target="backshowiframe"><font color="#9CF">首页</font></s:a></span>&nbsp;&nbsp;&nbsp;&nbsp;
		<span><s:a action="getall" namespace="/address" target="backshowiframe"><font color="#9CF">我要寄件</font></s:a></span>&nbsp;&nbsp;&nbsp;&nbsp;
		<span><a href="#" target="backshowiframe"><font color="#9CF">我要查件</font></a></span>&nbsp;&nbsp;&nbsp;&nbsp;
		<span><a href="#" target="backshowiframe"><font color="#9CF">我的订单</font></a></span>&nbsp;&nbsp;&nbsp;&nbsp;
		<span><a href="/expresscompany/page/background/userData.jsp" target="backshowiframe"><font color="#9CF" id="p1" >用户:${session.user.uid} </font></a></span>
		<ul id="ul1">
		    <li class="li" id="li1"><a href="#" target="backshowiframe"><font color="#9CF">地址管理</font></a></li>
		    <li class="li" id="li2"><a href="/expresscompany/page/background/updateUserPD.jsp" target="backshowiframe"><font color="#9CF">修改密码</font></a></li>
		    <li class="li" id="li3"><a href="/expresscompany/page/background/userData.jsp" target="backshowiframe"><font color="#9CF">基本信息</font></a></li>
		</ul>
		<input id="hidval" type="hidden" value="0" />
	</div>
	
	<iframe  name="backshowiframe"  width="100%" height="100%" frameborder="0"  id="win" 
	onload="Javascript:SetWinHeight(this)"  scrolling="no" marginheight="0" marginwidth="0"
	src="/expresscompany/page/background/transferUserIndex.jsp" ></iframe>

	<!-- 网页尾部开始 -->
	<table align="center" bgcolor="#9CF" width="100%" height="35px">
			<tr><th>&nbsp;</th></tr>
			<tr>
				<th><font color="white">北理速运公司&nbsp;&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服热线：400-8008820</font></th>
			</tr>
			<tr></tr>
			<tr><th>&nbsp;</th></tr>
	</table>
	<!-- 网页尾部结束 -->
	
	<script type="text/javascript">
		$(function (){
                var i=0;
                $("#h41").bind("click",function (){
                    if(i==0){
                        i=1;
                        $("#ul1").show(600,function(){
                            $("#hidval").show();
                        });
                    }else{
                        i=0;
                        $("#ul1").hide(600,function(){
                            $("#hidval").hide();
                        });
                    }
                });
                });
                $("#li1").bind("click",function(){
                	$("#ul1").hide(10,function(){
                		$("#hidval").hide();
                	});
                });
                $("#li2").bind("click",function(){
                	$("#ul1").hide(10,function(){
                		$("#hidval").hide();
                	});
                });
                $("#li3").bind("click",function(){
                	$("#ul1").hide(10,function(){
                		$("#hidval").hide();
                	});
                });
	function SetWinHeight(obj)
	{
		var win=obj;
		if (document.getElementById)
		{
			if (win && !window.opera)
			{
				if (win.contentDocument && win.contentDocument.body.offsetHeight)  
					win.height = win.contentDocument.body.offsetHeight;    
				else if(win.Document && win.Document.body.scrollHeight)  
					win.height = win.Document.body.scrollHeight;
			}	
		}
	}
</script>
  </body>
</html>
