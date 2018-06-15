<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edit Product</h1>
			<p class="lead">Fill the fields please</p>
		</div>
		
		<div class="row span6">
			<form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" 
			           commandName="product" enctype="multipart/form-data">
			           
			    <form:hidden path="productId" value="${product.productId}"/>       
			
				<div class="form-group">
					<label for="name">Name</label>
					<form:errors path="productName" cssStyle="color:#FF0000"/>
					<form:input path="productName" id="name" class="form-control" value="${product.productName}"/>
				</div>
				
				<div class="form-group">
					<label for="name">Description</label>
					<form:textarea path="productDes" id="description" class="form-control" value="${product.productDes}"/>
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="watches"/>Watches</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="shoes"/>Shoes</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="jewelry"/>Jewelry</label>
					<br>
				</div>
				
				<div class="form-group">
					<label for="condition">Condition</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="New"/>New</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Used"/>Used</label>
				    <br>
				</div>
				
				
				<div class="form-group">
					<label for="status">Status</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="condition" value="Active"/>Active</label>
					<label class="checkbox-inline"><form:radiobutton path="productStatus" id="condition" value="No active"/>No active</label>
				</div>
				
				<div class="form-group">
					<label for="price">Price</label>
					<form:errors path="productPrice" cssStyle="color:#FF00DD"/>
					<form:input path="productPrice" id="price" class="form-control" value="${product.productPrice}"/>
				</div>
				
				<div class="form-group">
					<label for="units">Units</label>
					<form:errors path="unitInStock" cssStyle="color:#FF00DD"/>
					<form:input path="unitInStock" id="units" class="form-control" value="${product.unitInStock}"/>
				</div>
				
				<div class="form-group">
					<label for="productImage" class="control-label">Upload Picture</label>
					<form:input path="productImage" id="productImage" type="file" class="file"/>
				</div> 
				
				<br>
				
				<input type="submit" value="submit" class="btn btn-primary" />
				<a href="<c:url  value="/admin/productInventory"/>" class="btn btn-danger">Cancel</a>
				
			</form:form>
		</div>
		
	</div>
</div>
	
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>   