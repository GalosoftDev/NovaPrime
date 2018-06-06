<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <hr>
    
    <div class="container-warpper">
    	<div class="container">
    		<div class="page-header">
				<h3>Our Products</h3>
				<p class="lead">Admin products here</p>
			</div>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Thumbnail</th>
				      <th scope="col">Product Name</th>
				      <th scope="col">Category</th>
				      <th scope="col">Condition</th>
				      <th scope="col">Price</th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach items="${products}" var="product">
				    <tr>
				      <td><img alt="Picture" src= "<c:url value="/resources/img/${product.productId}.png"/>" class="myThumb"></td>
				      <td>${product.productName}</td>
				      <td>${product.productCategory}</td>
				      <td>${product.productCondition}</td>
				      <td>${product.productPrice}</td>
				       <td><a href="<spring:url value="/productList/viewProduct/${product.productId}"/>">
				           <span class="icon-info-sign" /></a></td>
				       <td><a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>">
				           <span class="icon-remove" /></a></td>
				       <td><a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>">
				           <span class="icon-edit" /></a></td>
				    </tr>
				  </c:forEach>  
				  </tbody>
				</table>
				
				<a href= "<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary">Add Product</a>
			<hr>
		</div>
	</div>
	<br><br><br><br><br><br><br>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>