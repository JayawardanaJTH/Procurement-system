<%@page import="com.procument.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

	<%
		String error = null;
		try{
			error = (String)request.getAttribute("error");
			
		}catch(NullPointerException ex){
			
		}
		
	%>

</head>
<body>

	<div class="row row-cols-3">
            <div></div>
            <div class="mt-5">
                <div class="card border-dark text-center ">
                    <div class="card-header border-dark bg-dark text-white">
                        <h5>Login</h5>
                    </div>
                    <div class="card-body">
                        <form action="LoginServlet" method="post">
                            <div class="form-group">
                                <label class="col-form-label" for="username">User Name</label>
                                <input class="form-control" type="text" name="username" placeholder="User Name">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="username">Password</label>
                                <input class="form-control" type="password" name="password" placeholder="Password">
                            </div>
                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" id="remember" name="remember">
                                <label for="remember" class="form-check-label">Remember</label>
                            </div>
                            <% 
                            	try{
                            		if(error != null){
                            %>
	                            <div>
	                            	<h4 class="text-danger"><%= error %></h4>
	                            </div>
	                        <%
                            		}
                           		}catch(NullPointerException ex){
                           			
                           		}
                            	
                            %>
                            <div>
                            	<button class="btn btm-secondary" type="submit">Login</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <div></div>
       </div>

</body>
</html>