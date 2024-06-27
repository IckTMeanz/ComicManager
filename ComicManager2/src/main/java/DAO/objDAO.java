package DAO;

import java.util.ArrayList;

public interface objDAO <T>{
	public int insert(T t);
	
	public T getInfoById(String id);
	
	public int delete();
	
	public ArrayList<T> getInfo(String name);

}
