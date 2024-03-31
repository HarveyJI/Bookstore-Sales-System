<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% String BookNumber="";
		 BookNumber=request.getParameter("id");
	%>
	
	<form action="../SecondFloorUserServlet?flag=insert" method="post" name="form">
		<div style="text-align: center;">
		<table width="1000"height="680"align="center" border="0">
			<tr>
				<td >
					图书编号:&nbsp;<input type="text" name="bookNumber" value=<%=BookNumber%> />&nbsp;
			
				<td/>
			</tr>
			<tr>	
				<td >
					书&nbsp;&nbsp;&nbsp;名:&nbsp;<input type="text" name="bookName"/>
				<td/>
			</tr>
			<tr>	
				<td >
					价格:&nbsp;<input type="text" name="price" />
				<td/>
			</tr>
			<tr>
				<td >
					作者:&nbsp;<input type="text" name="author" />
				<td/>
			</tr>
			<tr>
				<td >
					图书类别:&nbsp;<select name="bookCategory">                  	
						<% String []type={"教育","小说","文艺","文学","动漫","童书","人文","经营","励志","生活","科技","原版","期刊","期刊","文具","独家"};
							for(int i=0;i<type.length;i++)
							{
						%>	
						<option value=<%=type[i] %>><%=type[i]%></option>	
						<%}%>	
						</select>
				<td/>
			</tr>
			<tr>
				<td >
					出版社:&nbsp;<input type="text" name="publisher" />
				<td/>
			</tr>
			<tr>	
				<td >
					库存:&nbsp;<input type="text" name="bookStock"/>
				<td/>
			<tr>	
				<td >
					出版时间:&nbsp;&nbsp;&nbsp;年:                                                                   
						<select name="publicationTime_year"  onChange="getDate()">                                              
						<% int year;
							for(year=1950;year<=2022;year++)
							{
						%>	
						<option value="<%=year %>"><%=year %></option>	
						<%}%>	
						</select>&nbsp;&nbsp;月:
						<select name="publicationTime_month"  onChange="getDate()">
						<% int month;
							for(month=1;month<=12;month++)
							{
						%>	
						<option value="<%=month %>"><%=month %></option>	
						<%}%>	
						</select>&nbsp;&nbsp;日:
						<select name="publicationTime_day">
						<% int day;
							for(day=1;day<=31;day++)
							{
						%>	
						<option value="<%=day %>"><%=day %></option>	
						<%}%>	
						</select>
				<td/>
			</tr>
			<tr>
				<td >
				<input type="submit" name="alter" value="修改" onClick="" style="width:100px;height:30px" >
				<input type="button" name="cancel" value="取消" onClick="location='Books.jsp'" style="width:100px;height:30px" >
			</td>
			</tr>
		</table>
		</div>
	</form>
			
</body>
</html>