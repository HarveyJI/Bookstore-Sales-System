package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import java.io.IOException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import EntityBean.*;
import ToolBean.*;

/**
 * Servlet implementation class SecondFloorUserServlet
 */
public class SecondFloorUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecondFloorUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { //删除记录   链接形式get
		String flag=request.getParameter("flag");
		if(flag.equals("delete")) {
			delete(request,response);
		}else {
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { //添加、修改记录   表单
		String flag=request.getParameter("flag");
		if(flag.equals("insert")) {
			insert(request,response);
		}
	}
	public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//获取图书主键 图书编号
		String bookNumber=request.getParameter("id");
		
		Books book=new Books();
		book.setBookNumber(bookNumber);
		
		BooksDao booksDao=new BooksDao();
		if(booksDao.deleteBooks(book)==1){ //删除图书记录
			response.sendRedirect("adm/Books.jsp");
		}
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {

		Books book=new Books();
	
		String bookNumber=request.getParameter("bookNumber");
		String bookName=request.getParameter("bookName");
		String price=request.getParameter("price");
		String author=request.getParameter("author");
		String bookCategory=request.getParameter("bookCategory");
		String publisher=request.getParameter("publisher");
		String bookStock=request.getParameter("bookStock");
		String publicationTime_year=request.getParameter("publicationTime_year");
		String publicationTime_month=request.getParameter("publicationTime_month");
		String publicationTime_day=request.getParameter("publicationTime_day");
		
		book.setBookNumber(bookNumber);
		book.setBookName(bookName);
		book.setPrice(price);
		book.setAuthor(author);
		book.setBookCategory(bookCategory);
		book.setPublisher(publisher);
		book.setBookStock(bookStock);
		book.setPublicationTime_year(publicationTime_year);
		book.setPublicationTime_month(publicationTime_month);
		book.setPublicationTime_day(publicationTime_day);
		
		
		
		String isAlter=request.getParameter("alter");
				
		BooksDao booksDao=new BooksDao();
		
		if(isAlter!=null&&isAlter.equals("修改")){  //若需修改,则先删除信息
				booksDao.deleteBooks(book);
				
		}
		
		
			if(booksDao.insertBooks(book)==1){ //添加图书信息
				response.sendRedirect("adm/Books.jsp");
			}else{
				HttpSession session=request.getSession();
				session.setAttribute("OPF","OPF");
				response.sendRedirect("adm/Books.jsp");
			}
	}

}
