package com.procument.servelets.accountStaff;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.procument.models.Supplier;
import com.procument.services.SupplierServicesImpl;
import com.procument.services.SupplierServicesInt;

/**
 * Servlet implementation class DeleteSupplier
 */
@WebServlet("/DeleteSupplier")
public class DeleteSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSupplier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SupplierServicesInt supplierServicesInt = new SupplierServicesImpl();
		
		String id = request.getParameter("sup_id");
		
		supplierServicesInt.deleteSupplier(Integer.parseInt(id));
		ArrayList<Supplier> suppliers = supplierServicesInt.get_AllSuppliers();
		
		request.setAttribute("suppliers", suppliers);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("add_supliers.jsp");
		dispatcher.forward(request, response);
//		doGet(request, response);
	}

}
