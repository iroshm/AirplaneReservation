
package App;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dilan Sachintha
 */
public class Database {
    
    private static Connection conn;
    
    public static Connection getConnection(){
        try{
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/airplane";
            String username = "root";
            String password = "";
            Class.forName(driver);
            
            Connection con = DriverManager.getConnection(url,username,password);
            System.out.println("Connected with mysql");
            return con;
        }catch(Exception e){
            System.out.println(e);
        }
        
        return null;
    }
    
    public static ResultSet getData(String sql){
        conn = getConnection();
        
        PreparedStatement preparedStmt;
        try {
            preparedStmt = conn.prepareStatement(sql);
            ResultSet rs = preparedStmt.executeQuery(sql);
            //conn.close();
            return rs;
            
        } catch (SQLException ex) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
