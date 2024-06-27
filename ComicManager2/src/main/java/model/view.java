package model;
import java.sql.Date;
import java.sql.Timestamp;

public class view{
	private String user_id;
	private String comic_id;
	private Date created_at;
	

	
	
	public view(String user_id, String comic_id, Date created_at) {
		this.user_id = user_id;
		this.comic_id = comic_id;
		this.created_at = created_at;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComic_id() {
		return comic_id;
	}
	public void setComic_id(String comic_id) {
		this.comic_id = comic_id;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	
	
	
}