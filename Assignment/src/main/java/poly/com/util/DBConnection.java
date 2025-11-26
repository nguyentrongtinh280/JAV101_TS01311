package poly.com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
    private static String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static String DB_URL = "jdbc:sqlserver://localhost:1433;databaseName=ABCNewsDB;encrypt=false;trustServerCertificate=true;";
    
    private static String USERNAME = "sa";
    private static String PASSWORD = "123"; 

    /*
     * Nạp driver ngay khi lớp được load vào bộ nhớ
     */
    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException ex) {            
            throw new RuntimeException("Lỗi: Không tìm thấy Driver JDBC SQL Server.", ex);
        }
    }
    
    public static PreparedStatement getStmt(String sql, Object... args) throws SQLException {        
        Connection connection = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
        PreparedStatement pstmt = null;
        if (sql.trim().startsWith("{")) {
            pstmt = connection.prepareCall(sql);
        } else {
            pstmt = connection.prepareStatement(sql);
        }
        
        // Gán các tham số vào PreparedStatement
        for (int i = 0; i < args.length; i++) {
            pstmt.setObject(i + 1, args[i]);
        }
        return pstmt;
    }


    public static void update(String sql, Object... args) {
        PreparedStatement stmt = null;
        try {
            stmt = DBConnection.getStmt(sql, args);
            try {
                stmt.executeUpdate();
            } finally {
                if (stmt != null && stmt.getConnection() != null) {
                    stmt.getConnection().close();
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi thực thi SQL UPDATE/DELETE: " + sql, e);
        }
    }

    public static ResultSet query(String sql, Object... args) {
        try {
            PreparedStatement stmt = DBConnection.getStmt(sql, args);
            return stmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Lỗi thực thi SQL QUERY: " + sql, e);
        }
    }


    public static Object value(String sql, Object... args) {
        ResultSet rs = null;
        try {
            rs = DBConnection.query(sql, args);
            if (rs.next()) {
                return rs.getObject(1); 
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException("Lỗi truy vấn giá trị đơn: " + sql, e);
        } finally {
            if (rs != null) {
                try {
                    rs.getStatement().getConnection().close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }
}
