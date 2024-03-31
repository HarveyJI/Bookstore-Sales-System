<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/tableUserHomeBottom.css" /> 
</head>
<body>
	<div style="text-align: center;">
	<table width="1000" height="30" align="center" border="0"  >
		<tr>
			<td background="../picture/管理员首页/Logo.png">
				<font color="#FFFFFF">是个Logo</font>
			</td>
			<td>
				<h1  align="center">欢迎使用网上书店销售系统</h1>
			</td>
			<td>
				<%String account=(String)session.getAttribute("account");   //获取管理员名
				if(account!=null){
			%>
				欢迎 <a href="AdmRecord.jsp" target="_top"><%=account%></a>!
				<%}%>
			<td/>
			<td>
				<a href="../Login.jsp" target="_top">退出登录</a>
			</td>
		</tr>
	
	</table>
	</div>

</body>
</html>