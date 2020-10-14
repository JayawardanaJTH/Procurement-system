package com.procument.utills;

import java.beans.PropertyChangeEvent;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Common {

	public static final Properties PROPERTY= new Properties();
	public static final Logger LOGGER = Logger.getLogger(Common.class.getName());

	/**
	 * load  property file to PROPERTY global constant
	 */
	static {
		try {
			PROPERTY.load(Constant.class.getResourceAsStream(Constant.PROPERTY_FILE));
		} catch (IOException e) {
			e.printStackTrace();
			LOGGER.log(Level.SEVERE, e.getMessage());
		}
	}

}
