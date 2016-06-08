<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap.min.css'/> ">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<s:url value='/css/bootstrap-theme.min.css'/> ">

	

<table class="table" contenteditable="true">
                  <thead>
                    <tr>
                      <th>物流信息</th>
                      <th>时间</th>
        
                    </tr>
                  </thead>
                  <tbody>
        		<s:iterator value="logisitcslist">	
                    <tr class="info">
                      <td><s:property value="lcontext"/></td>
                      <td><s:property value="ltime"/></td>

                    </tr>
                 </s:iterator>
                  </tbody>
                </table>
              

