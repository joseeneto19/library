package com.library.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.library.bean.User;

public class UserDao {
	
	public static Connection getConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/libary", "root", "1234");
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static User getRegistroById(int id) {
		User user = null;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setBookid(rs.getInt("bookid"));
				user.setBookname(rs.getString("bookname"));
				user.setNumber(rs.getLong("number"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return user;
	}
	
	public static int updateUser(User u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE user SET bookid=?,"
					+ "bookname=?, number=? WHERE id=?");
			
			ps.setInt(1, u.getBookid());
			ps.setString(2, u.getBookname());
			ps.setLong(3, u.getNumber());
			ps.setInt(4, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	
	
	
	
	
	public static List<User> getAllUsers(){
		List<User> list = new ArrayList<User>();
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM user");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setBookid(rs.getInt("bookid"));
				user.setBookname(rs.getString("bookname"));
				user.setNumber(rs.getLong("number"));
				list.add(user);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	

}
