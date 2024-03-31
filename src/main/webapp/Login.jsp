<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>网上书店销售系统登入界面</title>
	<script type="text/javascript" src="js/LoginScript.js"></script>           <!-- 登入判断处理事件 -->      
	<link rel="stylesheet" type="text/css" href="css/bodyLogin.css" />     <!-- 设置背景格式 -->   
</head>
<body background="picture/登入/登入背景.png">
	<!-- 当输入密码错误,提示重新登入! -->
	<% String name="";
	 if(session.getAttribute("flag")!=null){
		 %>
		  <script language="javascript">alert("密码不正确,请重新登入！");</script>
		 <% 
		 name=(String)session.getAttribute("account");
	 } 
	%>
	
	<br><br><br><br><br><br><br><br>                                                              <!-- 管理员测试
																													账户:Harvey
																													密码:123456
																										用户测试 可注册
																								  -->
	<h1 align="center">
		<font size="7" face="impact">Welcome &nbsp;&nbsp;&nbsp; Bookworm
		</font>
	</h1>
	
	<form action="FirstFloorServlet?flag=dl" method="post" name="form">
		
		<table align="center">
			<tr height="58">
				<td>
					<font size="6" face="隶书">账户:</font> 
					<input type="text" name="account" value="<%=name%>">	
				</td>
			</tr>
			<tr height="100">
				<td>
					<font size="6" face="隶书">密码:</font>
					<input type="password" name="password" value="">
				</td>
			</tr><!-- 密码输入框 -->
			<tr>
				<td align="center">
					&nbsp;&nbsp;&nbsp;<input type="button" name="login" value="登入" onClick="check()" style="width:50px;height:25px"> &nbsp;&nbsp;&nbsp;		<!-- 登入按钮 -->
					&nbsp;&nbsp;&nbsp;<input type="button" name="register" value="注册" onClick="location='Register.jsp'" style="width:50px;height:25px">&nbsp;&nbsp;&nbsp;	
					&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="重置" style="width:50px;height:25px">&nbsp;&nbsp;&nbsp;
				</td>
			</tr><!-- 重置按钮 -->
			<tr height="88">
			<td>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="who" value="user" align="middle">
				<font size="5" face="宋体">我是用户</font>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="who" value="administrators" align="middle">
				<font size="5" face="宋体">我是管理员</font>&nbsp;&nbsp;&nbsp;
			</td>
		</tr>       
	</table>
	
	</form>
</body>
</html>