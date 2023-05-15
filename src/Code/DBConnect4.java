
package Code;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class DBConnect4 {
    Connection con4 = null;
    public static Connection ConnectDB4(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con4 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/ez_cash_balance","root","");
            return con4;
        } 
        catch (Exception e) {
            System.out.println(e);
        }return null;
    }
}
