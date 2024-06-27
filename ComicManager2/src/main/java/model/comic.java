package model;

public class comic{
	private String comic_id;
	private String comic_name;
	private String author;
	private String dis;
	private String status;
	public String getDis() {
		return dis;
	}

	public void setDis(String dis) {
		this.dis = dis;
	}

	public comic(String comic_id, String comic_name, String author, String dis, String status) {
		this.comic_id=comic_id;
		this.comic_name=comic_name;
		this.author=author;
		this.dis=dis;
		this.status=status;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public comic() {
		
	}
	
	public String getComic_id() {
		return comic_id;
	}
	public void setComic_id(String comic_id) {
		this.comic_id = comic_id;
	}
	public String getComic_name() {
		return comic_name;
	}
	public void setComic_name(String comic_name) {
		this.comic_name = comic_name;
	}
	
	
}
