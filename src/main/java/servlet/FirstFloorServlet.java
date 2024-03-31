package servlet;

import jakarta.servlet.ServletException; 

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;

import EntityBean.Admor;
import EntityBean.User;
import ToolBean.AdmorDao;
import ToolBean.OBSSDataBase;
import ToolBean.UserDao;

/**
 * Servlet implementation class FirstFloorServlet
 */
public class FirstFloorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstFloorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag=request.getParameter("flag");  
		if(flag.equals("dl")) {
			check(request,response);
		}else {
			insert(request, response);
		}
		
	}
	public void check(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//获取登入信息
		String account=request.getParameter("account");
	    String password=request.getParameter("password");
	    //获取登入权限		
		String who=request.getParameter("who");
		
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		HttpSession session=request.getSession();
		
		session.setAttribute("account",account);
		//如果是用户
		if(who.equals("user")){
			User user=new User();
			user.setAccount(account);
			user.setPassword(password);
			UserDao userDao=new UserDao();
			if(userDao.checkUser(user)==1){ //检查数据库是否有该账号
				session.setAttribute("who","user");
				response.sendRedirect("Loading.jsp");
			}else{
				session.setAttribute("flag","1");
				response.sendRedirect("Login.jsp");
			}
				 
		}else{ //如果是管理员
			Admor adm=new Admor();
			adm.setAccount(account);
			adm.setPassword(password);
			AdmorDao admorDao=new AdmorDao();
			if(admorDao.checkLogin(adm)==1){ //检查数据库是否有该账号
				session.setAttribute("who","adm");
				response.sendRedirect("Loading.jsp");
			}else{
				session.setAttribute("flag","1");
				response.sendRedirect("Login.jsp");
			}	
		}
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	
		//获取注册信息
		String account=request.getParameter("reg_account");
	    String password=request.getParameter("reg_password");
	 
	    OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		
		User user=new User();
		user.setAccount(account);
		user.setPassword(password);
		UserDao userDao=new UserDao();
		
		HttpSession session=request.getSession();
		
		if(userDao.checkUser(user)==1){      //账号已存在
			session.setAttribute("repeat","repeat");
			response.sendRedirect("Register.jsp");
		}else{
			if(userDao.insertUser(user) ==0){ //注册信息插入数据库
			response.sendRedirect("Register.jsp");
			}else{
			response.sendRedirect("Login.jsp");
			}
		}
	} 

}
