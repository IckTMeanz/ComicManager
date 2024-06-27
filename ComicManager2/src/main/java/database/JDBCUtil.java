package database;



import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.postgresql.Driver;

public class JDBCUtil {
    public static Connection getConnect() {
        Connection c = null;
        Driver d = new Driver();
        
        try {
            DriverManager.registerDriver(d);

            String url = "jdbc:postgresql://localhost:5432/nettrom";
            String username = "postgres";
            String password = "dtn290704";
            c = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return c;
    }

    public static void closeConnection(Connection c) {
        try {
            if (c != null) {
                c.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
