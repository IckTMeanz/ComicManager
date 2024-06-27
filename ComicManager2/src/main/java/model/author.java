package model;

import java.sql.Date;

public class author{
	private String author_id;
	private String author_name;
	private String country;
	public author(String author_id, String author_name, String country) {
		super();
		this.author_id = author_id;
		this.author_name = author_name;
		this.country = country;
	}
	
	public author() {
		
	}
	public String getAuthor_id() {
		return author_id;
	}
	public void setAuthor_id(String author_id) {
		this.author_id = author_id;
	}
	public String getAuthor_name() {
		return author_name;
	}
	public void setAuthor_name(String author_name) {
		this.author_name = author_name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}