package com.procument.models;

/**
 * @author Tiran Harsha
 *@implNote Supplier class
 */
public class Supplier {

	private int id;
	private String sup_name;
	private String comp_name;
	private String sup_email;
	private int sup_addby;
	private int sup_contact;
	private int sup_level;
	private boolean approve;
	
	//constructors
	public Supplier() {
	}

	public Supplier(int id, String sup_name, String comp_name, String sup_email, int sup_addby, int sup_contact, int sup_level,
			boolean approve) {
		super();
		this.id = id;
		this.sup_name = sup_name;
		this.comp_name = comp_name;
		this.sup_email = sup_email;
		this.sup_addby = sup_addby;
		this.sup_contact = sup_contact;
		this.sup_level = sup_level;
		this.approve = approve;
	}

	public Supplier(String sup_name, String comp_name, String sup_email, int sup_addby, int sup_contact, int sup_level,
			boolean approve) {
		super();
		this.sup_name = sup_name;
		this.comp_name = comp_name;
		this.sup_email = sup_email;
		this.sup_addby = sup_addby;
		this.sup_contact = sup_contact;
		this.sup_level = sup_level;
		this.approve = approve;
	}

	//getters and setters for attributes
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSup_name() {
		return sup_name;
	}

	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}

	public String getComp_name() {
		return comp_name;
	}

	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}

	public String getSup_email() {
		return sup_email;
	}

	public void setSup_email(String sup_email) {
		this.sup_email = sup_email;
	}

	public int getSup_contact() {
		return sup_contact;
	}

	public void setSup_contact(int sup_contact) {
		this.sup_contact = sup_contact;
	}

	public int getSup_level() {
		return sup_level;
	}

	public void setSup_level(int sup_level) {
		this.sup_level = sup_level;
	}

	public boolean isApprove() {
		return approve;
	}

	public void setApprove(boolean approve) {
		this.approve = approve;
	}

	public int getSup_addby() {
		return sup_addby;
	}

	public void setSup_addby(int sup_addby) {
		this.sup_addby = sup_addby;
	}
	
	
}
