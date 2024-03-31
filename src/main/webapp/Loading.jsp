<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/bodyLoading.css" /> <!-- 设置背景格式 -->
</head>
<body background="picture/加载/加载.gif">
		<%
		String who=(String)session.getAttribute("who");                 //根据选的角色登入相应页面
		if(who.equals("adm")){
			response.setHeader("refresh","3;url=adm/AdmHome.jsp");
		}else{
			response.setHeader("refresh","3;url=user/UserHome.jsp");
		}
		%>
		
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br>
	<h1 align="center">
		正在加载...
	</h1>
</body>
</html>