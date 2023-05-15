
package Code;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class DBconnect1 {
    Connection con = null;
    public static Connection ConnectDB1(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/electricity_board_payments","root","");
            return con;
        } 
        catch (Exception e) {
            System.out.println(e);
        }return null;
    }
}

