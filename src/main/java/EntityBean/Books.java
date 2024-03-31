package EntityBean;
import java.util.Date;
public class Books {
	private String bookNumber;
	private String bookName;
	private String price;
	private String author;
	private String bookCategory;
	private String publisher;
	private String bookStock;
	private String publicationTime_year;
	private String publicationTime_month;
	private String publicationTime_day;
	
	public String getBookNumber() {
		return bookNumber;
	}
	public void setBookNumber(String bookNumber) {
		this.bookNumber = bookNumber;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBookCategory() {
		return bookCategory;
	}
	public void setBookCategory(String bookCategory) {
		this.bookCategory = bookCategory;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getBookStock() {
		return bookStock;
	}
	public void setBookStock(String bookStock) {
		this.bookStock = bookStock;
	}
	public String getPublicationTime_year() {
		return publicationTime_year;
	}
	public void setPublicationTime_year(String publicationTime_year) {
		this.publicationTime_year = publicationTime_year;
	}
	public String getPublicationTime_month() {
		return publicationTime_month;
	}
	public void setPublicationTime_month(String publicationTime_month) {
		this.publicationTime_month = publicationTime_month;
	}
	public String getPublicationTime_day() {
		return publicationTime_day;
	}
	public void setPublicationTime_day(String publicationTime_day) {
		this.publicationTime_day = publicationTime_day;
	}
	public String getPublicationDate() {
		return 		(publicationTime_year+"-"+publicationTime_month+"-"+publicationTime_day);
	}
	
}
