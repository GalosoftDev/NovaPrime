<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <!-- Start: MAIN CONTENT -->
    <div class="content">
      <!-- Start: PRODUCT LIST -->
        <div class="container">
          <div class="page-header">
            <h2>Our products</h2>
          </div>
          
         
          <div class="row-fluidb">
            <ul class="thumbnails">
            <c:forEach items="${products}" var="product">
	              <li class="span3">
	                <div class="thumbnail">
	                 <img alt="Picture" src= "<c:url value="/resources/img/${product.productId}.png"/>">
	                  <div class="caption">
	                    <h3>${product.productName}</h3>
	                    <p>
	                      Few attractive words about your product.Few attractive words about your product.
	                      Few attractive words about your product.Few attractive words about your product.
	                    </p>
	                  </div>
	                  <div class="widget-footer">
	                    <p>
	                      <a href="#" class="btn btn-primary">Buy now</a>&nbsp;
	                     <a href="<spring:url value="/productList/viewProduct/${product.productId}"/>" class="btn btn-default">Ver mas</a>
	                    </p>
	                  </div>
	                </div>
	              </li>  
            </c:forEach> 
            </ul>
          </div>
          
          <div class="pagination pagination-centered">
                <ul>
                  <li class="disabled">
                    <a href="#">&laquo;</a>
                  </li>
                  <li class="active">
                    <a href="#">1</a>
                  </li>
                  <li>
                    <a href="#">2</a>
                  </li>
                  <li>
                    <a href="#">3</a>
                  </li>
                  <li>
                    <a href="#">4</a>
                  </li>
                  <li>
                    <a href="#">5</a>
                  </li>
                  <li>
                    <a href="#">6</a>
                  </li>
                  <li>
                    <a href="#">&raquo;</a>
                  </li>
                </ul>
          </div>
        </div>
      <!-- End: PRODUCT LIST -->
    </div>
    <!-- End: MAIN CONTENT -->
    <%@ include file="/WEB-INF/views/templates/footer.jsp" %>
    
    
    
    