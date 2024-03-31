<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@page import="java.util.Date"%>
            <%@page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" >
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bodyUserHomeTop.css" />       
<link rel="stylesheet" type="text/css" href="../css/searchBox.css" /> 
<script type="text/javascript" src="../js/ShowTimeScript.js"></script>            <!-- 显示时间脚本 -->
</head>
<body >
	<form action="" method="post" name="form">
	<div style="text-align: center;">
	<font size="6" face="宋体" >
    <table border="0" width="650" height="40" align="center">
	<tr >
		<td align="center"> 
			&nbsp;<input type="text" class="input_text" placeholder="请输入搜索内容">
			
			<input type="image" src="../picture/用户首页/搜索放大镜.png" class="input_sub"></td>
	</table>
	</font>
	<font size="5" face="宋体" >
	<table border="0" width="960" height="80" align="center">
	</tr>
	<tr>
		<td colspan="3">                                               <!-- 获取用户名 -->
			<%
			String username=(String)session.getAttribute("account"); 
			if(username==null){
			%>请登入! 
			 <%
			}else{%>
			欢迎<%=username%>!
			<%}%>
		</td>
	
		<td>
			<div id="time" ></div>
        </td>
	</tr>
	
	</table>
	</font>
	</div>
	
</form>
	
	
	
   




		
</body>
</html>