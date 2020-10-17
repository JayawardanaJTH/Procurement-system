package com.procument.services;

import java.util.ArrayList;

import com.procument.models.Supplier;

/**
 * @author Tiran Harsha
 *
 */
public interface SupplierServicesInt {

	/**
	 * use to add new supplier
	 * @param supplier object
	 * @author Tiran Harsha
	 */
	public void add_supplier(Supplier supplier);
	
	/**
	 * get supplier by the id
	 * @param supplier id
	 * @return supplier object
	 * @author Tiran Harsha
	 */
	public Supplier get_supplierById(int id);
	
	/**
	 * get all suppliers details
	 * @return arrayList of supplier objects
	 * @author Tiran Harsha
	 */
	public ArrayList<Supplier> get_AllSuppliers();
	
	/**
	 * update supplier details
	 * @param supplier object
	 * @return boolean value
	 * @author Tiran Harsha
	 */
	public boolean updateSupplier(Supplier supplier, int id);
	
	/**
	 * delete supplier
	 * @param id
	 */
	public void deleteSupplier(int id);
	
	/**
	 * get supplier approval details
	 * @param supplier id
	 * @return approval details
	 */
	public boolean get_supplierApprove(int id);
}
