<%@page import="com.procument.models.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.procument.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add supplier</title>
		<jsp:include page="header.jsp"></jsp:include>
		
		<%
			String error = (String)request.getAttribute("error");
			User user = (User) session.getAttribute("user");
			ArrayList<Supplier> list = (ArrayList) request.getAttribute("suppliers");
		%>
	</head>
<body>
<%
	if(user==null){
		response.sendRedirect("Login.jsp");
	}
%>
	<div>
		<div class="alert-warning mt-5 p-1">
	              <div>
	                  <br/>
	                  <h5 class="text-center font-weight-bold">Supplier Details</h5>
	                  <form action="AddSupplier" method="POST">
	                      <div class="row row-cols-2">
	                          <div class="form-group col-4">
	                              <label for="name" class="col-form-label text-dark">Supplier Name</label>
	                              <input type="text" class="form-control" id="name" name="name" placeholder="Tiran Harsha" required>
	                          </div>
	                          <div class="form-group col-4">
	                              <label for="compName" class="col-form-label text-dark">Company Name</label>
	                              <input type="text" class="form-control" id="compName" name="compName" placeholder="Life Associate" required>
	                          </div>
	                          <div class="form-group col-4">
	                              <label for="name" class="col-form-label text-dark">Contact Number</label>
	                              <input type="number" class="form-control" id="name" name="contact" placeholder="0771234567" required>
	                          </div>
	                          <div class="form-group col">
	                              <label for="email" class="col-form-label text-dark">Email</label>
	                              <input type="email" class="form-control" id="email" name="email" placeholder="tiran@gmail.com" required>
	                          </div>
	                          <div class="form-group col-3">
	                              <label for="level" class="col-form-label text-dark">Level</label>
	                              <select class="custom-select" name="level" id="level">
	                                  <option selected>Select</option>
	                                  <option value="1">1</option>
	                                  <option value="2">2</option>
	                                  <option value="3">3</option>
	                                  <option value="4">4</option>
	                                  <option value="5">5</option>
	                              </select>
	                          </div>
	                          <div class="custom-control custom-checkbox col-3 mt-5 ">
	                              <input type="checkbox" class="custom-control-input" id="approve" name="approve">
	                              <label for="approve" class="custom-control-label text-dark">Approve Supplier</label>
	                          </div>
	                      </div>
	                      <div class="row justify-content-center">
	                          <button type="submit" class="btn btn-success w-auto" >S a v e</button>
	                      </div>
	                  </form>
	              </div>
	          </div>
	          <div>
	              <table class="table table-responsive-sm table-striped table-sm table-hover table-info mt-5">
	                  <thead>
	                      <tr class="d-table-row">
	                          <th>ID</th>
	                          <th>Supplier Name</th>
	                          <th>Company</th>
	                          <th>Contact</th>
	                          <th>Email</th>
	                          <th>Level</th>
	                          <th>Approval</th>
	                          <th></th>
	                      </tr>
	                  </thead>
	                  <tbody>
	                  <%
	                  if(list != null){
	                	  int i = 0;
		                  	for(Supplier supplier : list){
	                  %>
	                      <tr>
	                          <td><%= list.get(i).getId() %></td>
	                          <td><%= list.get(i).getSup_name() %></td>
	                          <td><%= list.get(i).getComp_name() %></td>
	                          <td><%= list.get(i).getSup_contact() %></td>
	                          <td><%= list.get(i).getSup_email() %></td>
	                          <td><%= list.get(i).getSup_level() %></td>
	                          <td><% if(list.get(i).isApprove()){ out.print("Approved");} else{out.print("Not Approved"); } %></td>
	                          <td >
	                              <form action="DeleteSupplier" method="POST">
	                                  <input type="hidden" name="sup_id" value="<%= list.get(i).getId() %>">
	                                  <button type="submit" name="delete" class="btn btn-sm btn-danger">Delete</button>
	                              </form>
	                              
	                                  <input type="hidden" name="sup_id" value="<%= list.get(i).getId() %>">
	                                  <button type="submit" name="edit" data-target="#edit_form<%=list.get(i).getId() %>" data-toggle="modal" class="btn btn-sm btn-success mt-1">Edit</button>
	                              
	                          </td>
	                      </tr>
	                      <%
	                      			i++;
		                  		}
	                  		}
	                  
	                      %>
	                  </tbody>
	              </table>
	          </div>
	      </div>

		<%
	            if(list != null){
	               int i = 0;
		          	for(Supplier supplier : list){
	     %>
        <!--Model to edit-->
        <div class="modal" id="edit_form<%=list.get(i).getId() %>" role="document">
            <div class=" modal-dialog" role="dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="UpdateSupplier" method="POST">
                            <div class="row row-cols-2">
                                <div class="form-group col-4">
                                    <label for="name2" class="col-form-label text-dark">Supplier Name</label>
                                    <input type="text" class="form-control" id="name2" name="name2" value=<%=list.get(i).getSup_name() %> required>
                                </div>
                                <div class="form-group col-4">
                                    <label for="compName2" class="col-form-label text-dark">Company Name</label>
                                    <input type="text" class="form-control" id="compName2" name="compName2" value=<%=list.get(i).getComp_name() %> required>
                                </div>
                                <div class="form-group col-4">
                                    <label for="name2" class="col-form-label text-dark">Contact Number</label>
                                    <input type="number" class="form-control" id="name2" name="contact2" value=<%=list.get(i).getSup_contact() %> required>
                                </div>
                                <div class="form-group col">
                                    <label for="email2" class="col-form-label text-dark">Email</label>
                                    <input type="email" class="form-control" id="email2" name="email2" value=<%=list.get(i).getSup_email() %> required>
                                </div>
                                <div class="form-group col-3">
                                    <label for="level2" class="col-form-label text-dark">Level</label>
                                    <select class="custom-select" name="level2" id="level2">
                                        <option>Select</option>
                                        <%
                                        	for(int j =1; j <=5; j++){
                                        %>
                                        <option value=<%=j %> <% if(j == list.get(i).getSup_level()){ out.print("selected");} %>><%=j %></option>
                                        <%
                                        	}
                                        %>
                                    </select>
                                </div>
                                <div class="custom-control custom-checkbox col-3 mt-5 ">
                                    <input type="checkbox" class="custom-control-input" id="approve2"  name="approve2"  >
                                    <label for="approve2" class="custom-control-label text-dark">Approve Supplier</label>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                            	<input type="hidden" value=<%=list.get(i).getId() %> name="edit_sup_id">
                                <button type="submit" class="btn btn-success w-auto" >U p d a t e</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>

        </div>
        <%
        				i++;
		          	}
	            }
        %>
</body>
</html>