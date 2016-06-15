<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <style type ="text/css"> 
    		#body2{
			width:400px;
			height:150px;
			border: 5px solid #9CF;
			margin:1%;
		}
 </style>
  </head>
  
  <body>
  <div id=body2>
    从<s:property value="spname" /><s:property value="scname"/>到<s:property value="rpname"/><s:property value="rcname"/> <br>
  运费是<s:property value="money"/>
  </div>
  </body>
</html>
