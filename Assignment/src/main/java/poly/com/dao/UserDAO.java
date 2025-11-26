package poly.com.dao;

import poly.com.model.User;
import poly.com.util.DBConnection; 
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDAO {
	
	public User checkLogin(String email, String password) {
        String sql = "SELECT * FROM USERS WHERE Email = ? AND Password = ?";
        
        ResultSet rs = null;
        try {
            rs = DBConnection.query(sql, email, password); 

            if (rs.next()) {
                poly.com.model.User user = new poly.com.model.User();
                user.setId(rs.getString("Id"));
                user.setPassword(rs.getString("Password")); 
                user.setFullname(rs.getString("Fullname"));
                user.setBirthday(rs.getDate("Birthday"));
                user.setGender(rs.getBoolean("Gender"));
                user.setMoble(rs.getString("Mobile")); 
                user.setEmail(rs.getString("Email"));
                user.setRole(rs.getBoolean("Role"));


                return user; 
            }
            
        } catch (SQLException e) {
            System.err.println("Lỗi CSDL khi đăng nhập:");
            e.printStackTrace();
            throw new RuntimeException(e); 
        } finally {
            if (rs != null) {
                try {
                    rs.getStatement().getConnection().close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
        return null; 
    }

}
