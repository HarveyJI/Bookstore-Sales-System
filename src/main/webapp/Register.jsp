<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
		 <script type="text/javascript" src="js/AccountCheck.js"></script>         <!-- 导入下拉列表处理事件 -->
		 <link rel="stylesheet" type="text/css" href="css/bodyRegister.css" /> 	   <!-- 导入整体界面背景设置 -->  
</head>
<body background="picture/注册/注册.jpg">      
	<!-- 如果注册的账号已存在,提示账号已存在 -->
	<% 
	 if(session.getAttribute("repeat")!=null){
		 %>
		  <script language="javascript">alert("账号已存在！");</script>
		 <% 
	 } 
	%>
	<br><br><br>
	<form action="FirstFloorServlet?flag=zc" method="post" name="form">
	
	<div style="text-align: center;">                                           <!--表格内文字居中  -->
	
	<font size="6" face="黑体" >                                                <!-- 整个表格字体为5,黑体 -->
		
		<table width="600" height="450" align="center">
		<tr>
			<td colspan="2" align="center">
				<font size="10" face="华文琥珀" >欢迎用户注册</font>
			</td>
		</tr>
		
		<tr>
			<td>*账&nbsp;&nbsp;&nbsp;&nbsp;户:</td>
			<td>
				<input type="text" name="reg_account">
			</td>
		</tr>       
		<tr>
			<td>*密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
			<td>
				<input type="password" name="reg_password">
			</td>
		</tr>        
		<tr>
			<td>*确认密码:</td>
			<td>
				<input type="password" name="reg_password_again">
			</td>
		</tr>                   
		<tr>
			<td>&nbsp;*手&nbsp;机&nbsp;号:&nbsp;</td>
			<td>
			<input type="text" name="phone">
			</td>
		</tr>          
		<tr>
		<tr>
			<td >
				<input type="button" name="register" value="注册" onClick="check()" style="width:100px;height:30px" >
			</td>	
			<td>
				<input type="button" name="cancel" value="取消" onClick="location='Login.jsp'" style="width:100px;height:30px" >
			</td>
		</tr>
		
	</table>
	
	</font>
	
	</div>
	
	</form>
		
</body>
</html>