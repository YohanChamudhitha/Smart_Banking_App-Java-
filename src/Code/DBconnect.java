
package Code;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class DBconnect {
    Connection conn = null;
    public static Connection ConnectDB(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/lucky_bank_db","root","");
            return conn;
        } 
        catch (Exception e) {
            System.out.println(e);
        }return null;
    }
}
