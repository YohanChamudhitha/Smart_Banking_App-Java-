
package Code;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;


public class DBconnect2 {
    Connection con1 = null;
    public static Connection ConnectDB2(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/water_department_payments","root","");
            return con1;
        } 
        catch (Exception e) {
            System.out.println(e);
        }return null;
    }
}
