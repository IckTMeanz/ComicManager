package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import database.JDBCUtil;
import model.comic;
import model.view;

public class viewDAO implements objDAO<view>{
	public static viewDAO getInstance() {
		return new viewDAO();
	}

	@Override
	public int insert(view t) {
		// TODO Auto-generated method stub
		String sql="";
		try {
			Connection c= JDBCUtil.getConnect();
			 sql="INSERT INTO view(user_id, comic_id) VALUES('"
			 		+ t.getUser_id()+"','"
			 		+ t.getComic_id()+"');";
			 
			 Statement st=c.createStatement();
			int a=st.executeUpdate(sql);
			//return rs;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public view getInfoById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList getInfo(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public ArrayList<String> comicHis(String username){
		ArrayList<String> a=new ArrayList<String>();
		
		try {
			
			Connection c=JDBCUtil.getConnect();
			String id=userDAO.getInstance().getIdByName(username);
			String sql="select comic_name "
				+"FROM comic c, view v "
				+"WHERE v.comic_id=c.comic_id AND v.user_id='"+id+"';";
			Statement st=c.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String comic_name=rs.getString("comic_name");
				a.add(comic_name);
			}
			c.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return a;
	}
	
	public int number_of_view(String id) {
		int kq=0;
		try {
			Connection c= JDBCUtil.getConnect();
			 String sql="select count(*) AS c from view where comic_id='"+id+"';";
			 Statement st=c.createStatement();
			 ResultSet rs=st.executeQuery(sql);
			 while(rs.next()) {
				 kq=rs.getInt("c");
			 }
			 


			return kq;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	
}
	
	public String insert2(view t) {
		// TODO Auto-generated method stub
		String sql="";
		try {
			Connection c= JDBCUtil.getConnect();
			 sql="INSERT INTO view(user_id, comic_id) VALUES('"
			 		+ t.getUser_id()+"','"
			 		+ t.getComic_id()+"');";
			 
			 Statement st=c.createStatement();
			int a=st.executeUpdate(sql);
			//return rs;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return sql;
	}



}
