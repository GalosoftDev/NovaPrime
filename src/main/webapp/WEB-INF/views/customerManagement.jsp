<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <hr>
    
    <div class="container-warpper">
    	<div class="container">
    		<div class="page-header">
				<h3>Customers</h3>
				<p class="lead">Admin Customers</p>
			</div>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Name</th>
				      <th scope="col">Email</th>
				      <th scope="col">Phone</th>
				      <th scope="col">Username</th>
				      <th scope="col">Enabled</th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${customerList}" var="customer">
				    <tr>
				      <td>${customer.customerName}</td>
				      <td>${customer.customerEmail}</td>
				      <td>${customer.customerPhone}</td>
				      <td>${customer.username}</td>
				      <td>${customer.enabled}</td>
				    </tr>
				  </c:forEach>  
				  </tbody>
				</table>
				
			
			<hr>
		</div>
	</div>
	<br><br><br><br><br><br><br>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>