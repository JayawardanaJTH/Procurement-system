<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add supplier</title>
		<jsp:include page="header.jsp"></jsp:include>
	</head>
<body>
	<div>
		<div class="alert-warning mt-5 p-1">
	              <div>
	                  <br/>
	                  <h5 class="text-center font-weight-bold">Supplier Details</h5>
	                  <form action="#" method="POST">
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
	                                  <option value="one">1</option>
	                                  <option value="two">2</option>
	                                  <option value="three">3</option>
	                                  <option value="four">4</option>
	                                  <option value="five">5</option>
	                              </select>
	                          </div>
	                          <div class="custom-control custom-checkbox col-3 mt-5 ">
	                              <input type="checkbox" class="custom-control-input" id="approve" name="approve" required>
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
	                          <th>Suplier Name</th>
	                          <th>Company</th>
	                          <th>Contact</th>
	                          <th>Email</th>
	                          <th>Level</th>
	                          <th>Approvel</th>
	                          <th></th>
	                      </tr>
	                  </thead>
	                  <tbody>
	                      <tr>
	                          <td></td>
	                          <td></td>
	                          <td></td>
	                          <td></td>
	                          <td></td>
	                          <td></td>
	                          <td></td>
	                          <td class="row row-cols-2">
	                              <form action="#" method="GET" class="col">
	                                  <input type="hidden" name="sup_id" value="">
	                                  <button type="button" name="delete" class="btn btn-sm btn-danger">Delete</button>
	                              </form>
	                              <form action="#" method="GET" class="col">
	                                  <input type="hidden" name="sup_id" value="">
	                                  <button type="button" name="edit" data-target="#edit_form" data-toggle="modal" class="btn btn-sm btn-success">Edit</button>
	                              </form>
	                          </td>
	                      </tr>
	                  </tbody>
	              </table>
	          </div>
	      </div>

        <!--Model to edit-->
        <div class="modal" id="edit_form" role="document">
            <div class=" modal-dialog" role="dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span>&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="#" method="POST">
                            <div class="row row-cols-2">
                                <div class="form-group col-4">
                                    <label for="name2" class="col-form-label text-dark">Supplier Name</label>
                                    <input type="text" class="form-control" id="name2" name="name2" placeholder="Tiran Harsha" required>
                                </div>
                                <div class="form-group col-4">
                                    <label for="compName2" class="col-form-label text-dark">Company Name</label>
                                    <input type="text" class="form-control" id="compName2" name="compName2" placeholder="Life Associate" required>
                                </div>
                                <div class="form-group col-4">
                                    <label for="name2" class="col-form-label text-dark">Contact Number</label>
                                    <input type="number" class="form-control" id="name2" name="contact2" placeholder="0771234567" required>
                                </div>
                                <div class="form-group col">
                                    <label for="email2" class="col-form-label text-dark">Email</label>
                                    <input type="email" class="form-control" id="email2" name="email2" placeholder="tiran@gmail.com" required>
                                </div>
                                <div class="form-group col-3">
                                    <label for="level2" class="col-form-label text-dark">Level</label>
                                    <select class="custom-select" name="level2" id="level2">
                                        <option selected>Select</option>
                                        <option value="one">1</option>
                                        <option value="two">2</option>
                                        <option value="three">3</option>
                                        <option value="four">4</option>
                                        <option value="five">5</option>
                                    </select>
                                </div>
                                <div class="custom-control custom-checkbox col-3 mt-5 ">
                                    <input type="checkbox" class="custom-control-input" id="approve2" name="approve2" required>
                                    <label for="approve2" class="custom-control-label text-dark">Approve Supplier</label>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <button type="submit" class="btn btn-success w-auto" >U p d a t e</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>

        </div>
</body>
</html>