
package App;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dilan Sachintha
 */
public class Database {
    public static void main(String[] args) {
        getConnection();
    }
    
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
}
