package ToolBean;
import EntityBean.*;
import java.sql.*;
public class UserDao {
	public int checkUser(User user) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String account=user.getAccount();
		String password=user.getPassword();
		
		try {
			String sqlu="select *from user where account='"+account+"'and password='"+password+"'";
			PreparedStatement pst_u=con.prepareStatement(sqlu);
			ResultSet re_m=pst_u.executeQuery();
			if(re_m.next()) {
				r=1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
	
	public int insertUser(User user) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String sql="insert into user values(?,?)";	
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,user.getAccount());
			pst.setString(2,user.getPassword());
			if(pst.executeUpdate()==1) {
				r=1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
}
