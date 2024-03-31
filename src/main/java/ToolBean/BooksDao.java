package ToolBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import EntityBean.Books;
import EntityBean.User;

public class BooksDao {
	public int checkBooks(Books books) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String bookNumber=books.getBookNumber();
		
		try {
			String sqlu="select *from books where bookNumber='"+bookNumber+"'";
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
	
	public int deleteBooks(Books books) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String bookNumber=books.getBookNumber();
		try {
			String sql="delete from Books where BookNumber=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,bookNumber);
			if(pst.executeUpdate()==1) {
				r=1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
	
	public int insertBooks(Books books) {
		int r=0;
		OBSSDataBase db=new OBSSDataBase();
		Connection con=db.link();
		String bookNumber=books.getBookNumber();
		String bookName=books.getBookName();
		String price=books.getPrice();
		String author=books.getAuthor();
		String bookCategory=books.getBookCategory();
		String publisher=books.getPublisher();
		String bookStock=books.getBookStock();
		String publicationDate=books.getPublicationDate();
		try {
			String sql="insert into Books values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1,bookNumber);
			pst.setString(2,bookName);
			pst.setString(3,price);
			pst.setString(4,author);
			pst.setString(5,bookCategory);
			pst.setString(6,publisher);
			pst.setString(7,publicationDate);
			pst.setString(8,bookStock);
			if(pst.executeUpdate()==1) {
				r=1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
}
