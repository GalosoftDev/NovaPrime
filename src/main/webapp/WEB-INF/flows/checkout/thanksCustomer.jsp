<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<br><br>
<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<div class="container">
						<h1>Thanks for your shopping</h1>
						
					</div>
				</div>
			</section>
			
		    <section class="container" >
		   
		    		<p><a href="<spring:url value="/" />" class="btn btn-primary">Ok</a></p>
		    		
		    </section>
		</div>
	</div>
	<br><br>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>