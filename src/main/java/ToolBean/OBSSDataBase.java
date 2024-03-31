package ToolBean;
import java.sql.*;

public class OBSSDataBase {
	private String driver="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/obss";
	private String dbName="root";
	private String dbPassword="88888888";
	
	public  Connection link() {
		Connection con=null;
		try {
		Class.forName(driver);
		con=DriverManager.getConnection(url,dbName,dbPassword);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
