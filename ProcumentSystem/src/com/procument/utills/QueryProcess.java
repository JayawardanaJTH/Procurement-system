package com.procument.utills;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * 
 * @author Tiran Harsha
 *
 */
public class QueryProcess {

	/**
	 * get query by passed id
	 * @param key
	 * @return query
	 */
	public String CreateQuery(String key) {
		
		Element element = null;
		final NodeList nodeList;
		final Logger logger = Logger.getLogger(QueryProcess.class.getName());
		
		try {
			//get all data begin element with tag name
			nodeList = (NodeList) DocumentBuilderFactory.newInstance().
					newDocumentBuilder()
//					.parse((new File(System.getProperty("catalina.base")+"\\WebContent\\Query.xml")))
					.parse((new File("C:\\Users\\Tiran Harsha\\git\\repository\\ProcumentSystem\\WebContent\\Query.xml")))
					.getElementsByTagName(Constant.QUERY_TAG);
		
			for(int i = 0; i < nodeList.getLength(); i++) {
				
				//get each element to element object
				element = (Element) nodeList.item(i);
				
				//check the element attribute is it equals to the passed id
				if(element.getAttribute(Constant.QUERY_ID).equals(key)) {
					break;
				}
			}
			
		} catch (SAXException | IOException | ParserConfigurationException e) {
			e.printStackTrace();
			logger.log(Level.SEVERE, e.getMessage());
		}
		
		return element.getTextContent().trim();
	}
}
