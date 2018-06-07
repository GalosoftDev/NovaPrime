<%@ include file="/WEB-INF/views/templates/header.jsp" %>
    <!-- Start: Main content -->
    <div class="content">    
      <div class="container">
        <!-- Start: Product description -->
        <airticle class="article">
          <div class="row bottom-space">
            <div class="span12">
              <div class="page-header">
                <h1>${product.productName} <small>Caption for the product</small></h1>
              </div>
            </div>
            <div class="span12 center-align" ng-app="cartApp">
              
              <img alt="Picture" src= "<c:url value="/resources/img/${product.productId}.png"/>" class="thumbnail product-snap"> 
               <hr>
						<c:set var="role" scope="page" value="${param.role}"/>
						<c:set var="url" scope="page" value="/productList"/>
						<c:if test="${role=='admin'}">
							<c:set var="url" scope="page" value="/admin/productInventory"/>
						</c:if>
						
						<p ng-controller="cartCtrl">
						    <a href="#" ng-click="testCart()" class="btn btn-warning">Test Angular</a>
							<a href="<c:url value="${url}"/>" class="btn btn-primary">Back</a>
							<a href="#" ng-click="addToCart('${product.productId}')" class="btn btn-success">Order Now</a>
							<a href= "<spring:url value="/cart" />" class="btn btn-default" >View Cart</a>
                       </p>    
               <hr>            
            </div>
          </div>
          <div class="row">
            <div class="span10 offset1">
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>
              <p>
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
                Detailed description about the product that how it makes the customer's life easy.
              </p>        
              <div class="span8 offset1">
                <h3>Fetures of product1</h3>
                <ul class="features">
                  <li>
                    <i class="icon-ok "></i>24 hrs support
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>
                  <li>
                    <i class="icon-ok "></i>unlimited download
                  </li>                  
                </ul>
              </div>                                              
            </div>      
          </div>
          
          
          
          <div class="row">
            <div class="span10 offset1">
              <hr>
              <div class="span3">
                <p>
                  Ready to start the innovation?
                </p>
                <a class="btn btn-large btn-block" href="#">Buy now</a>
              </div>
              <div class="span3">
                <p>
                  Got confused?
                </p>
                <a class="btn btn-large btn-block" href="contact_us.html">Contact us</a>
              </div>
              <div class="span3">
                <p>
                  Check frequently asked question
                </p>
                <a class="btn btn-large btn-block" href="faq.html">FAQ</a>
              </div>              
            </div>
          </div>
        </airticle>
        <!-- End: Product description -->
      </div>
    </div>
    </div>
    <!-- End: Main content -->
    <%@ include file="/WEB-INF/views/templates/footer.jsp" %>