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
            <div class="span12 center-align">
              
              <img alt="Picture" src= "<c:url value="/resources/img/${product.productId}.png"/>" class="thumbnail product-snap">          
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