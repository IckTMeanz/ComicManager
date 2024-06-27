package DAO;


import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import javax.websocket.Session;

import database.JDBCUtil;

import model.comic;
import model.user;
import model.view;

public class comicDAO implements objDAO<comic>{
	
	public static comicDAO getInstance() {
		return new comicDAO();
	}
	
	public comicDAO() {
		
	}
	@Override
	public int insert(comic c) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public comic getInfoById(String id) {
		comic cm=new comic();
		try {
		// TODO Auto-generated method stub
		Connection c= JDBCUtil.getConnect();
		
		String sql="SELECT * FROM comic WHERE comic_id='"+id+"';";
		Statement st=c.createStatement();
		ResultSet rs =st.executeQuery(sql);
		//comic cm= new comic(1, "hehe");
		while(rs.next()) {
			String comic_id=rs.getString("comic_id");
			String comic_name=rs.getString("comic_name");
			String comic_author=rs.getString("author_id");
			String dis=rs.getString("description");
			String status=rs.getString("status");
			
			cm.setComic_id(comic_id);
			cm.setComic_name(comic_name);
			cm.setAuthor(comic_author);
			cm.setDis(dis);
			cm.setStatus(status);
			
		}
		return cm;
		
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList getInfo(String name) {
		// TODO Auto-generated method stub
		try {
		Connection c =JDBCUtil.getConnect();
		
		String sql="SELECT * FROM comic WHERE comic_name LIKE '%"+name+"%'";
		Statement st=c.createStatement();
		ResultSet rs=st.executeQuery(sql);
		ArrayList<comic> list= new ArrayList<comic>();
		while(rs.next()) {
			String comic_id=rs.getString("comic_id");
			String comic_name=rs.getString("comic_name");
			String author = rs.getString("author_id");
			String dis=rs.getString("description");
			String status=rs.getString("status");
			comic cm=new comic(comic_id, comic_name, author, dis, status);
			list.add(cm);
		}
		return list;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public ArrayList<String> getType(String id){
		ArrayList<String> a=new ArrayList<String>();
		try {
			Connection c=JDBCUtil.getConnect();
			String sql="SELECT type_name "
					+ "FROM type t, comic_type ct"
					+ "WHERE t.type_id=ct.type_id AND ct.comic_id='"+id+"';";
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String type_name=rs.getString("type_name");
				a.add(type_name);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public static void main(String[] args) {
		

		 
	 
}}
