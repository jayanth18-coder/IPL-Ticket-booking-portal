package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	static Connection con=null;
	/**
	 * @param args
	 */
	public static void main(String[] args) {


	}
	public static Connection createconnection()
	{
		try
		{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ipl","root","");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	

}
