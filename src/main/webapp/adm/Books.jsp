<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@page import="java.sql.*"%>
       <%@page import="ToolBean.*"%>
       
      
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>图书仓库信息</title> 
	<script type="text/javascript" src="../js/DateScript.js"></script>  
</head>
<body>
	<%!int pageSize; //一页多少记录
	int recordCount; //总共多少记录
	int pageTotal; //总共页面
	int pageNow; //现在的页数
	%>
	<%
	OBSSDataBase db=new OBSSDataBase();
	Connection con=db.link();
	
	String jumpPage=request.getParameter("jumpPage");   //获取需要跳转的页数
	
	pageNow=1; //初始化第一页
	
	if(jumpPage!=null&&jumpPage!=""){  
		pageNow=Integer.parseInt(jumpPage);
		if(pageNow>pageTotal){  //当页面不合法自动跳转第一页
			pageNow=1;
		}
	}
	
	String size=application.getInitParameter("pageSize");	//获取系统最大显示页数参数参数
	pageSize=Integer.parseInt(size);
	
	String sql="select *from Books"; 
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery(sql);
	rs.last();
	recordCount=rs.getRow(); //获取总共多少条记录
	pageTotal=(recordCount+pageSize-1)/pageSize; //设置总共多少页
	rs.absolute((pageNow-1)*pageSize+1); //设置游标
	%>
	
	<%
	 if(session.getAttribute("OPF")!=null){
		 session.removeAttribute("OPF");
		 %>
		  <script language="javascript">alert("操作失败,请重新操作！");</script>
		 <% 
	 } 
	%>

	<font size="4" face="宋体" >	
	<form action="../SecondFloorUserServlet?flag=insert" method="post" name="form1">
		<table width="1000" height="80" align="center" border="0">
			<tr>
				<td >
					图书编号:&nbsp;<input type="text" name="bookNumber" size="8"/>&nbsp;
					<input type="submit" value="添加"/>
				<td/>
				<td >
					书&nbsp;&nbsp;&nbsp;名:&nbsp;<input type="text" name="bookName" size="12"/>
				<td/>
				<td >
					价格:&nbsp;<input type="text" name="price" size="2"/>
				<td/>
				<td >
					作者:&nbsp;<input type="text" name="author" size="4"/>
				<td/>
			</tr>
			<tr>
				<td >
					图书类别:&nbsp;<select name="bookCategory" size="1">                  	
						<% String []type={"教育","小说","文艺","文学","动漫","童书","人文","经营","励志","生活","科技","原版","期刊","期刊","文具","独家"};
							for(int i=0;i<type.length;i++)
							{
						%>	
						<option value=<%=type[i] %>><%=type[i]%></option>	
						<%}%>	
						</select>
				<td/>
				<td >
					出&nbsp;版&nbsp;社:&nbsp;<input type="text" name="publisher" size="12"/>
				<td/>
				
				<td >
					库存:&nbsp;<input type="text" name="bookStock" size="5"/>
				<td/>
				<td >
					出版时间:&nbsp;&nbsp;&nbsp;年:                                                                   
						<select name="publicationTime_year" size="1" onChange="getDate()">                                              
						<% int year;
							for(year=1950;year<=2022;year++)
							{
						%>	
						<option value="<%=year %>"><%=year %></option>	
						<%}%>	
						</select>&nbsp;&nbsp;月:
						<select name="publicationTime_month" size="1" onChange="getDate()">
						<% int month;
							for(month=1;month<=12;month++)
							{
						%>	
						<option value="<%=month %>"><%=month %></option>	
						<%}%>	
						</select>&nbsp;&nbsp;日:
						<select name="publicationTime_day" size="1">
						<% int day;
							for(day=1;day<=31;day++)
							{
						%>	
						<option value="<%=day %>"><%=day %></option>	
						<%}%>	
						</select>
				<td/>
			</tr>
		</table>
	</form>
	
	
	
	<hr><br>
	<div style="text-align: center;">
	
	<table width="900"height="500"align="center" border="3" cellspacing="3" cellpadding="3">	
		<tr>
			<th>图书编号</th> <th>书名</th> <th>价格</th> <th>作者</th>
			<th>图书类别</th> <th>出版社</th> <th>出版时间</th> <th>库存</th> <th>操作</th>
		</tr>
		<%
			int i=0;
			while(recordCount>0&&i<pageSize&&!rs.isAfterLast()){%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(7) %></td>
					<td><%=rs.getString(8) %></td>
					<td><a href="../SecondFloorUserServlet?id=<%=rs.getString(1)%>&flag=delete">删除</a>&nbsp;
						<a href="BooksAlter.jsp?id=<%=rs.getString(1) %>">修改</a>
					</td>
				</tr>
			<%
				rs.next();
				i++;
			}
		%>
	</table>
	
	
	
	<br><hr>
	<form action="" method="get" name="form2">		<!-- 必须get属性 -->
		<table width="500"height="10"align="center" border="0">
			<tr>
				<td>共<%=recordCount%>条记录</td>
				<td>第<%=pageNow%>页/共<%=pageTotal%>页</td>
				<td>
				<%
				  if(pageNow-1>0)
				  {
				%>
				<a href="Books.jsp?jumpPage=<%=pageNow-1 %>"><img src="../picture/跳转/上一页.png"></a>
				<%}%>
				
				<%if(pageNow+1<=pageTotal)
				{ %>
				<a href="Books.jsp?jumpPage=<%=pageNow+1 %>"><img src="../picture/跳转/下一页.png"></a>
				<%}%>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				
					第<input type="text" name="jumpPage" size="2" />页
					<input type="image" src="../picture/跳转/跳转.png" style=" height: 20px;"/>
				<td>
			</tr>
		</table>
		</form>
		
	</div>
	</font>
</body>
</html>