<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.sql.*"%>
       <%@page import="ToolBean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>图书销售信息</title>
</head>
	<%!int pageSize;
	int recordCount;
	int pageTotal;
	int pageNow; 
	String sql;%>
	
	<%
	OBSSDataBase db=new OBSSDataBase();
	Connection con=db.link();
	
	String jumpPage=request.getParameter("jumpPage");
	String bookNumber;
	
	pageNow=1;
	if(jumpPage!=null&&jumpPage!=""){
		
		pageNow=Integer.parseInt(jumpPage);
		if(pageNow>pageTotal){
			pageNow=1;
		}
		
	}
	
	
	
	String size=application.getInitParameter("pageSize");	//获取系统最大显示页数参数参数
	pageSize=Integer.parseInt(size);
	
	if(session.getAttribute("bookNumber")!=null){          //是否查询了单个书的总销售量
		bookNumber=(String)session.getAttribute("bookNumber");
		sql="select *from salerecord where bookNumber='"+bookNumber+"'";
	}else{
		 sql="select *from salerecord";
	}
	
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery(sql);
	rs.last();
	recordCount=rs.getRow();
	pageTotal=(recordCount+pageSize-1)/pageSize;
	rs.absolute((pageNow-1)*pageSize+1);
	%>
	
	<%
	String saleTotal="";
	if(session.getAttribute("saleTotal")!=null){   //获取销售量
	 saleTotal=(String)session.getAttribute("saleTotal");
	}
	%>
	
<body>
<div style="text-align: center;">
	<font size="4" face="宋体" >	
	<form action="SaleQuery.jsp" method="post" name="form1">
		<table width="1000" height="80" align="center" border="0">
			<tr>
				<td>
				图书编号:&nbsp;<input type="text" name="BookNumber"   size="10">
				</td>
				<td>
				销售日期:&nbsp;<select name="saleDateType"size="1">                  	
						<option value="year">年</option>	
						<option value="year-month">年-月</option>	
						<option value="year-season">年-月-日</option>	
						</select>
						<input type="text" name="saleDate"   size="8">
				</td>
				<td>
				<input type="submit" name="query" value="查询"  >
				</td>
				<td>
				总销售量:&nbsp;<input type="text" name="saleVolume" size="5" value=<%=saleTotal%>>
				</td>
			</tr>
		</table>
	</form>
	
	
	
	<hr><br>
	

	<table width="900" height="500" align="center" border="3" cellspacing="3" cellpadding="3">	
		<tr>
			<th>销售单号</th> <th>图书编号</th> <th>销售日期</th> <th>销售量</th>
		</tr>
		<%
			int i=0;
			while(recordCount>0&&i<pageSize&&!rs.isAfterLast()){%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
				</tr>
			<%
				rs.next();
				i++;
			}
		%>
	</table>

	
	
	<br><hr>
	<form action="" method="get" name="form3">		<!-- 必须get属性 -->
		<table width="500" height="10" align="center" border="0">
			<tr>
				<td>共<%=recordCount%>条记录</td>
				<td>第<%=pageNow%>页/共<%=pageTotal%>页</td>
				<td>
				<%
				  if(pageNow-1>0)
				  {
				%>
				<a href="SaleRecord.jsp?jumpPage=<%=pageNow-1 %>"><img src="../picture/跳转/上一页.png"></a>
				<%}%>
				
				<%if(pageNow+1<=pageTotal)
				{ %>
				<a href="SaleRecord.jsp?jumpPage=<%=pageNow+1 %>"><img src="../picture/跳转/下一页.png"></a>
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