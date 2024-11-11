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
	
	
	
	
	public static int deleteUser(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("DELETE FROM user WHERE id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
		
		
	}
		

	public static int saveUser(User u) {
		int status = 0;
		
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO user (bookid, bookname, number) VALUES (?, ?, ?)");
			ps.setInt(1, u.getBookid());
			ps.setString(2, u.getBookname());
			ps.setLong(3, u.getNumber());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;
		
		
		
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
	
	public static List<User> searchUsers(String searchTerm) {
	    List<User> list = new ArrayList<>();
	    try {
	        Connection con = getConnection();
	        
	        // Inicializa a consulta SQL básica
	        String sql = "SELECT * FROM user WHERE 1=1"; // 1=1 é sempre verdadeiro, facilita adicionar condições dinamicamente
	        
	        // Adiciona condições baseadas no parâmetro searchTerm
	        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
	            sql += " AND (bookname LIKE ? OR id = ? OR bookid = ?)";
	        }
	        
	        PreparedStatement ps = con.prepareStatement(sql);

	        if (searchTerm != null && !searchTerm.trim().isEmpty()) {
	            // O parâmetro 1 será para a pesquisa de livro por nome (usando LIKE)
	            ps.setString(1, "%" + searchTerm + "%");

	            try {
	                // O parâmetro 2 será para a pesquisa pelo id (caso o termo seja numérico)
	                ps.setInt(2, Integer.parseInt(searchTerm));
	            } catch (NumberFormatException e) {
	                // Caso o valor não seja numérico, ignoramos a configuração do parâmetro 2 (id)
	                ps.setNull(2, java.sql.Types.INTEGER); // Define como NULL se não for numérico
	            }

	            try {
	                // O parâmetro 3 será para a pesquisa pelo bookid (caso o termo seja numérico)
	                ps.setInt(3, Integer.parseInt(searchTerm));
	            } catch (NumberFormatException e) {
	                // Caso o valor não seja numérico, ignoramos a configuração do parâmetro 3 (bookid)
	                ps.setNull(3, java.sql.Types.INTEGER); // Define como NULL se não for numérico
	            }
	        }

	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	            User user = new User();
	            user.setId(rs.getInt("id"));
	            user.setBookid(rs.getInt("bookid"));
	            user.setBookname(rs.getString("bookname"));
	            user.setNumber(rs.getLong("number"));
	            list.add(user);
	        }
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}



	
	
	
	
	
	
	
	
	
	
	
	
	

}
