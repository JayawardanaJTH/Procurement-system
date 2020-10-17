package com.procument.services;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.procument.models.User;
import com.procument.utills.Constant;
import com.procument.utills.DBconnection;
import com.procument.utills.QueryProcess;

public class UserServicesImpl implements UserServicesInt {

	//database configuration objects
	private Connection connection;
	private PreparedStatement preparedStatement;
	private Statement statement;
	private ResultSet resultSet;
	
	//logger for this class
	private static final Logger LOGGER = Logger.getLogger(UserServicesImpl.class.getName());
		
	public UserServicesImpl() {
		connection = DBconnection.getConnection();
	}
	
	@Override
	public User getUser(String username, String password) {
		User user = null;
		
		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(QueryProcess.CreateQuery(Constant.GET_USER));
			
			preparedStatement.setString(Constant.ONE, username);
			preparedStatement.setString(Constant.TWO, password);
			
			resultSet = (ResultSet) preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				user = new User();
				user.setUsername(resultSet.getString(Constant.TWO));
				user.setPassword(resultSet.getString(Constant.THREE));
				user.setPosition(resultSet.getInt(Constant.FOUR));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			LOGGER.log(Level.SEVERE, e.getMessage());
		}
		
		return user;
	}

}
