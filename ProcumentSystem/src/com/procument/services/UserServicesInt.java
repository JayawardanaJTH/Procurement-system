package com.procument.services;

import com.procument.models.User;

/**
 * @author Tiran Harsha
 *
 */
public interface UserServicesInt {

	public User getUser(String username, String password);
	
}
