<%@page import="com.procument.models.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 		<!--script files-->
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
         <!--bootstrap files-->
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
     
     	<%
			User user = (User) session.getAttribute("user");
			String posit = (String)session.getAttribute("position");
		%>
     </head>
     <body class="ml-2 mr-2">
     <%
		if(user==null){
			response.sendRedirect("Login.jsp");
		}
	%>
        <div>
             <!--navigatin bar-->
             <nav class="nav navbar-expand-md navbar-dark bg-dark row">
                 <div class="col-6">
                     <a class="navbar-brand" href="#">Procument System</a>
                 </div>
                 <div class="col-6 text-right">
                     <form action="LoginServlet" method="get">
                         <button class="btn btn-success text-white font-weight-bold">Log out</button>
                     </form>
                 </div>
             </nav>
             <div class="alert-info row">
                <div class="col-6">
                    <h6>User position : <%=posit %>  </h6>
                </div>
                <div class="col-6">
                    <h6>User name : <%=user.getUsername() %></h6>
                </div>
            </div>
        
        <div>

        </div>
</body>
</html>