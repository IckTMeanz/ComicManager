package DAO;

import java.awt.Taskbar.State;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import database.JDBCUtil;
import model.user;

public class userDAO implements objDAO<user>{
	
	public static userDAO getInstance() {
		return new userDAO();
	}

	//@Override
	public int insert1(user u) {
		String sql="";
		try {
			Connection c= JDBCUtil.getConnect();
			 sql="INSERT INTO \"user\"(user_id, username, password, user_name) VALUES('"
			 		+ u.getUser_id()+"','"
			 		+u.getUsername()+"','"
			 		+u.getPassword()+"','"
			 		+u.getName()+"');";
			Statement st=c.createStatement();
			
			int rs=st.executeUpdate(sql);
			return rs;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}

	@Override
	public user getInfoById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<user> getInfo(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	

	
	
	public user getUserByUNandPW(user u) {
		user u1= null;
		try {
			Connection c =JDBCUtil.getConnect();
			String sql="SELECT * FROM \"user\" WHERE username='"+u.getUsername() +"' AND password='"+u.getPassword()+"';";
			Statement st=c.createStatement();
			System.out.println(sql);
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String username=rs.getString("username");
				String password=rs.getString("password");
				String user_name=rs.getString("user_name");
				u1= new user();
				u1.setUsername(username);
				u1.setPassword(password);
				u1.setName(user_name);
			}}catch(Exception e) {
				e.printStackTrace();
			}
		return u1;
	}
	
	
	public boolean checkUsername(String u) {
		boolean result=true;
		try {
			Connection c=JDBCUtil.getConnect();
			String sql="SELECT username from \"user\";";
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String username=rs.getString("username");
				if(u.equals(username)) {
					result=false;
					return result;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public String getUserId() {
		String id="";
		try {
			Connection c=JDBCUtil.getConnect();
			String sql="SELECT COUNT(*) AS ct FROM \"user\";";
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				int ct=rs.getInt("ct")+1;
				id=id+ct;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}

	@Override
	public int insert(user t) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	public String getIdByName(String name) {
		String kq="";
		try {
			Connection c=JDBCUtil.getConnect();
			String sql="SELECT user_id FROM \"user\" WHERE username='"+name+"';";
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				kq=rs.getString("user_id");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return kq;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}