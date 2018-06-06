<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <hr>
    
    <div class="container-warpper">
    	<div class="container">
    		<div class="page-header">
				<h3>Admin</h3>
				<p class="lead">Admin here the site</p>
			</div>
				<h4><a href="<c:url value="/admin/productInventory"/>" >Product Inventory</a></h4>
				<p>Here you van check , admin and modify the products</p>	
			<hr>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<h3>
					Welcome: ${pageContext.request.userPrincipal.name} | 
				    <a href= "<c:url value="/j_spring_security_logout"/>" >Logout</a>
				</h3>
	       </c:if>	
			
		</div>
		
	</div>
	<br><br><br><br><br><br><br>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>