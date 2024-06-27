package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import database.JDBCUtil;
import model.author;

public class authorDAO implements objDAO<author>{
	
	public static authorDAO getInstancd() {
		return new authorDAO();
	}

	@Override
	public int insert(author t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public author getInfoById(String id) {
		author a = new author();
		try {
		// TODO Auto-generated method stub
		Connection c=JDBCUtil.getConnect();
		String sql="SELECT author_name FROM author WHERE author_id='"+id+"';";
		Statement st=c.createStatement();
		ResultSet rs=st.executeQuery(sql);	
		while(rs.next()) {
			String author_name=rs.getString("author_name");
			a.setAuthor_name(author_name);
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<author> getInfo(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}