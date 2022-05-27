<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/app.js"></script>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Expenses</title>
</head>
<body>
	<div class="m-3">
		<div class="mb-4">
			<h1>Save Travels</h1>
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Expense</th>
						<th>Vendor</th>
						<th>Amount</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${expenses}" var="oneExpense">
						<tr>
							<td>${oneExpense.name}</td>
							<td>${oneExpense.vendor}</td>
							<td>${oneExpense.amount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div>
			<h2>Add an expense:</h2>
			<form:form action="/expenses/create" method="post" modelAttribute="expense" class="d-flex flex-column">
				<form:label path="name" for="name">Expense Name:</form:label>
				<form:input path="name" type="text" name="name"/>
				<form:errors path="name" class="text-danger"/>
				<form:label path="vendor" for="vendor">Vendor:</form:label>
				<form:input path="vendor" type="text" name="vendor"/>
				<form:errors path="vendor" class="text-danger"/>
				<form:label path="amount" for="amount">Amount:</form:label>
				<form:input path="amount" type="number" name="amount"/>
				<form:errors path="amount" class="text-danger"/>
				<form:label path="description" for="description">Description:</form:label>
				<form:textarea path="description" name="description" rows="5"></form:textarea>
				<form:errors path="description" class="text-danger"/>
				<input type="submit" value="Submit" class="btn btn-primary submit"/>
			</form:form>
		</div>
	</div>
</body>
</html>