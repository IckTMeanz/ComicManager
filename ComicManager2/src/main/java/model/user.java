package model;

public class user{
	private String user_id;
	private String username;
	private String password;
	private String name;
	public user(String user_id, String username, String password, String name) {
		this.user_id=user_id;
		this.username = username;
		this.password = password;
		this.name=name;
		
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public user(){
		
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}


	
	
}