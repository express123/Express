<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
	<head>
		<title>北理速运</title>
			<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap.min.css'/> ">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap-theme.min.css'/> ">

 <script src="/expresscompany/js/jquery-1.90.js" type="text/javascript"></script>
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
				<div class="col-sm-4">
<b id="p3">寄件地址：</b>

			<s:form action="getFreight" namespace="/queryfreightmanage" method="post" target="showFreight">
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
			<b id="p3">输入重量</b><s:textfield id="cWeight" size="2" name="weight" maxlength="2"/><b id="p3">kg</b><br>
			<s:submit value="查询" />
			</s:form>				
						</div>
						<div class="col-sm-8">
						<center>
					<iframe name="showFreight" frameborder=0 width=500 height=250 marginheight=0 marginwidth=0 scrolling=no src="<s:url value='/page/foreground/freight.html'/>" ></iframe>
						</center>
				</div>
			</div>
		</div>
	</div>
    
    
   <script type="text/javascript">
		$ (function () {
                $("#cWeight").bind("blur", function () {
                	Money();
                });
                $("#getFreight_0").bind("click",function (){
                	Money();
                });
                function Money(){
                	var WT=$("#cWeight").val();//获取重量
					WT=$.trim(WT);
                	if(WT==''){
                		$("#cWeight").val("");
              			alert("快件重量不能为空");
                	}else{
                		if(!isNaN(WT)){
	                		if(Number(WT)>50){
	                			$("#cWeight").val("");//清空输入框的内容		                		                	
	                			alert("快件重量不能超过50Kg!");
	                		}else{
	                			if(Number(WT)<0){
		                			$("#cWeight").val("");
		                			alert("快件重量不能小于0Kg!");
	                			}else{
	               		
	                			}
	                		}
	                	}else{
	                		$("#cWeight").val("");
	                		alert("快件重量请不要输入非数字字符!");
	                	}
                	}
                }
            });
	</script>
	
    </body>
</html>