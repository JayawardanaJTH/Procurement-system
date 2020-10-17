package com.procument.servelets.accountStaff;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.procument.models.Supplier;
import com.procument.models.User;
import com.procument.services.SupplierServicesImpl;
import com.procument.services.SupplierServicesInt;

/**
 * Servlet implementation class UpdateSupplier
 */
@WebServlet("/UpdateSupplier")
public class UpdateSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSupplier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		final Logger LOGGER = Logger.getLogger(AddSupplier.class.getName());
		ArrayList<Supplier> suppliers = null ;
		
		try {
			SupplierServicesInt supplierServicesInt = new SupplierServicesImpl();
			Supplier supplier = new Supplier();
			
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			
			String id = request.getParameter("edit_sup_id");
			
			supplier.setId(Integer.parseInt(id));
			supplier.setSup_name(request.getParameter("name2"));
			supplier.setComp_name(request.getParameter("compName2"));
			supplier.setSup_contact(Integer.parseInt(request.getParameter("contact2")));
			supplier.setSup_email(request.getParameter("email2"));
			supplier.setSup_addby(user.getId());
			supplier.setSup_level(Integer.parseInt(request.getParameter("level2")));
			
			if(request.getParameter("approve2")!= null) {
				supplier.setApprove(true);
			}
			else {
				supplier.setApprove(false);
			}
			
			supplierServicesInt.updateSupplier(supplier, Integer.parseInt(id));
			suppliers = supplierServicesInt.get_AllSuppliers();
			
		}catch(Exception ex) {
			LOGGER.log(Level.SEVERE, ex.getMessage());
		}
		
		request.setAttribute("suppliers", suppliers);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("add_supliers.jsp");
		dispatcher.forward(request, response);
//		doGet(request, response);
	}

}
