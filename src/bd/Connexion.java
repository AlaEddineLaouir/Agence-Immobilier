package bd;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Connexion {
	public java.sql.Connection connect = null;
	public Statement stat = null;
	public ResultSet rs = null;
	
	public Connexion() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/MonBIEN","root", "admin");
			stat = connect.createStatement();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean Deconnexion() throws SQLException {
		if(connect!=null)connect.close();
		if(stat!=null)stat.close();
		if(rs!=null)rs.close();
		return true;
	}	
}
