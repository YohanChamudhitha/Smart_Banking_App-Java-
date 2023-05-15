
package Code;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class DBconnect3 {
    Connection con1 = null;
    public static Connection ConnectDB3(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con2 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/slt_payments","root","");
            return con2;
        } 
        catch (Exception e) {
            System.out.println(e);
        }return null;
    }
}
