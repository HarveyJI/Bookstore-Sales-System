<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
         <%@page import="java.sql.*"%>
       <%@page import="ToolBean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<%!
		String saleDate;
		String sql;
		String saleTotal;
		%>
	<%
	OBSSDataBase db=new OBSSDataBase();
	Connection con=db.link();
	
	String saleDateType=request.getParameter("saleDateType");
	String bookNumber=request.getParameter("BookNumber");

	
	if(saleDateType.equals("year")){           //查询指顶图书的指定年总销售量
		saleDate=request.getParameter("saleDate");
		sql="select sum(salesvolume) from salerecord WHERE bookNumber='"+bookNumber+"'AND year(saleDate)='"+saleDate+"'";
	}
		
		
	
	
	Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ResultSet rs=st.executeQuery(sql);
	int i=0;
	while(rs.next()&&i<1){
		saleTotal=rs.getString(1);
	i++;
}
	
	session.setAttribute("saleTotal",saleTotal);
	session.setAttribute("bookNumber",bookNumber);
	response.sendRedirect("SaleRecord.jsp");
%>

 	 	

	
</body>
</html>