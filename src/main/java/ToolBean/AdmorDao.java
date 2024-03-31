package ToolBean;
import EntityBean.*;
import java.sql.*;

public class AdmorDao {
	public int checkLogin(Admor adm) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String account=adm.getAccount();
		String password=adm.getPassword();
		
		try {
			String sqlu="select *from administrators where account='"+account+"'and password='"+password+"'";
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
	
	public int insertUser(Admor adm) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String sql="insert into administrators values(?,?)";	
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,adm.getAccount());
			pst.setString(2,adm.getPassword());
			if(pst.executeUpdate()==1) {
				r=1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
}
