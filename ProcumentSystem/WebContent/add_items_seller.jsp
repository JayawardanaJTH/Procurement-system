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
		<div class="mt-5 alert-warning">
                <div class="row no-gutters">
                    <div class="col-4">
                        <div>
                            <form>
                                <div class="form-group ml-2">
                                    <label for="sup_sel">Select supplier</label>
                                    <select class="custom-select" id="sup_sel" name="sup_sel">
                                        <option selected>Select</option>
                                    </select>
                                </div>
                                <div class="form-group ml-2">
                                    <label for="item">Item name</label>
                                    <input type="text" class="form-control" name="item" id="item" placeholder="Cement" required>
                                </div>
                                <div class="form-group ml-2">
                                    <label for="itemCode">Item code</label>
                                    <input type="text" class="form-control" name="itemCode" id="itemCode" placeholder="CE123" required>
                                </div>
                                <div class="form-group ml-2">
                                    <label for="unit">Messurement unit</label>
                                    <select class="custom-select" id="unit" name="unit">
                                        <option selected>Select</option>
                                        <option value="kilo">Kg</option>
                                        <option value="gram">g</option>
                                        <option value="pieces">Pieces</option>
                                        <option value="cube">Cube</option>
                                    </select>
                                </div>
                                <div class="form-group ml-2">
                                    <label for="unit_price">Price of a unit</label>
                                    <input type="text" class="form-control" name="unit_price" id="unit_price" placeholder="900" required>
                                </div>
                                <div class="row col justify-content-center">
                                    <input type="hidden" value="">
                                    <button type="submit" class="btn btn-success">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-8 pl-2">
                        <table class="table table-responsive-sm table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Suplier</th>
                                    <th>Item</th>
                                    <th>Code</th>
                                    <th>Unit</th>
                                    <th>Price</th>
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
                        <form>
                            <div class="form-group ml-2">
                                <label for="sup_sel">Select supplier</label>
                                <select class="custom-select" id="sup_sel" name="sup_sel">
                                    <option selected>Select</option>
                                </select>
                            </div>
                            <div class="form-group ml-2">
                                <label for="item">Item name</label>
                                <input type="text" class="form-control" name="item" id="item" placeholder="Cement" required>
                            </div>
                            <div class="form-group ml-2">
                                <label for="itemCode">Item code</label>
                                <input type="text" class="form-control" name="itemCode" id="itemCode" placeholder="CE123"required>
                            </div>
                            <div class="form-group ml-2">
                                <label for="unit">Messurement unit</label>
                                <select class="custom-select" id="unit" name="unit">
                                    <option selected>Select</option>
                                    <option value="kilo">Kg</option>
                                    <option value="gram">g</option>
                                    <option value="pieces">Pieces</option>
                                    <option value="cube">Cube</option>
                                </select>
                            </div>
                            <div class="form-group ml-2">
                                <label for="unit_price">Price of a unit</label>
                                <input type="text" class="form-control" name="unit_price" id="unit_price" placeholder="900" required>
                            </div>
                            <div class="row col justify-content-center">
                                <input type="hidden" value="">
                                <button type="submit" class="btn btn-success">Update</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>

        </div>
</body>
</html>