package com.procument.services;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.procument.models.Supplier;
import com.procument.utills.Constant;
import com.procument.utills.DBconnection;
import com.procument.utills.QueryProcess;

/**
 * @author Tiran Harsha
 *
 */
public class SupplierServicesImpl implements SupplierServicesInt {

	//database configuration objects
	private Connection connection;
	private PreparedStatement preparedStatement;
	private Statement statement;
	private ResultSet resultSet;
	
	//logger for this class
	private static final Logger LOGGER = Logger.getLogger(SupplierServicesImpl.class.getName());
	
	public SupplierServicesImpl() {
		//get database connection
		connection = DBconnection.getConnection();
	}
	
	@Override
	public void add_supplier(Supplier supplier) {

		try {
			preparedStatement = (PreparedStatement) connection.prepareStatement(QueryProcess.CreateQuery(Constant.ADD_SUPPLIER));
		
			preparedStatement.setString(Constant.ONE, supplier.getSup_name());
			preparedStatement.setString(Constant.TWO, supplier.getComp_name());
			preparedStatement.setInt(Constant.THREE, supplier.getSup_contact());
			preparedStatement.setString(Constant.FOUR, supplier.getSup_email());
			preparedStatement.setInt(Constant.FIVE, supplier.getSup_addby());
			preparedStatement.setInt(Constant.SIX, supplier.getSup_level());
			preparedStatement.setBoolean(Constant.SEVEN, supplier.isApprove());

			preparedStatement.execute();
			
			preparedStatement.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			LOGGER.log(Level.SEVERE, e.getMessage());
		}
	}

	@Override
	public Supplier get_supplierById(int id) {
		ArrayList<Supplier> supplier = new ArrayList<>();
		
		supplier = getSupplier(id);
		return supplier.get(Constant.ZERO);
	}

	@Override
	public ArrayList<Supplier> ger_AllSuppliers() {
		return getSupplier(Constant.ZERO);
	}
	
	public ArrayList<Supplier> getSupplier(int id){
		
		ArrayList<Supplier> arrayList = new ArrayList<>();
		Supplier supplier;
		
		if(id != Constant.ZERO) {
			try {
				preparedStatement = (PreparedStatement) connection.prepareStatement(QueryProcess.CreateQuery(Constant.GET_SUPPLIER_BY_ID));
			
				preparedStatement.setInt(Constant.ONE, id);
				
			} catch (SQLException e) {
				e.printStackTrace();
				LOGGER.log(Level.SEVERE, e.getMessage());
			}
		}
		else {
			try {
				preparedStatement = (PreparedStatement) connection.prepareStatement(QueryProcess.CreateQuery(Constant.GET_ALL_SUPPLIERS));
			
			} catch (SQLException e) {
				e.printStackTrace();
				LOGGER.log(Level.SEVERE, e.getMessage());
			}
		}
		
		try {
			resultSet = (ResultSet) preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				supplier = new Supplier();
				
				supplier.setId(resultSet.getInt(Constant.ONE));
				supplier.setSup_name(resultSet.getString(Constant.TWO));
				supplier.setComp_name(resultSet.getString(Constant.THREE));
				supplier.setSup_contact(resultSet.getInt(Constant.FOUR));
				supplier.setSup_email(resultSet.getString(Constant.FIVE));
				supplier.setSup_addby(resultSet.getInt(Constant.SIX));
				supplier.setSup_level(resultSet.getInt(Constant.SEVEN));
				
				if(resultSet.getString(Constant.EIGHT).contentEquals("true")) {
					supplier.setApprove(true);
				}
				else {
					supplier.setApprove(false);
				}
				
				arrayList.add(supplier);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			LOGGER.log(Level.SEVERE, e.getMessage());
		}
		
		return arrayList;
	}

	@Override
	public boolean updateSupplier(Supplier supplier) {
		return false;
	}

	@Override
	public void deleteSupplier(int id) {

	}

	@Override
	public boolean get_supplierApprove(int id) {
		return false;
	}

}
