package com.procument.utills;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;

/**
 * 
 * @author Tiran Harsha
 *
 */
public class DBconnection {

	private static Connection connection;
	private static Logger logger;
	
	/**
	 * get connection instance by database
	 * @return connection
	 */
	public static Connection getConnection() {
		
		logger = Logger.getLogger(DBconnection.class.getName());
		
		//here use singleton design pattern
		if(connection == null || connection.isClosed()) {
			
			try {
				Class.forName(Common.PROPERTY.getProperty(Constant.DRIVER_NAME));
				
				connection = (Connection) DriverManager.
						getConnection(Common.PROPERTY.getProperty(Constant.URL), 
								Common.PROPERTY.getProperty(Constant.USERNAME), 
								Common.PROPERTY.getProperty(Constant.PASSWORD));
				
			} catch (SQLException e) {
				e.printStackTrace();
				logger.log(Level.SEVERE, e.getMessage());
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
				logger.log(Level.SEVERE, e.getMessage());
			}
		}
		
		return connection;
	}
}
