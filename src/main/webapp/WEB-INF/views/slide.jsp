

<%@page contentType="text/html" pageEncoding="UTF-8"%>


         <style>
             .flex-active-slide  li{
                 border: 2px solid red;
             }
         </style>

    <div class="loading">

        <div id="container" class="cf">

            <div id="main" role="main">
                <section class="slider">
                    <div id="slider" class="flexslider">
                        <ul class="slides">
                           <li>
                                <img style="width: 100%" src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                        </ul>
                    </div>
                    <div id="carousel" class="flexslider">
                        <ul class="slides" style="height: 100px;">
                            <li>
                                <img style="width: 100%; height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%; height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_cheesecake_brownie.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_lemon.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_donut.jpg" />
                            </li>
                            <li>
                                <img style="width: 100%;  height: 100%"  src="${pageContext.request.contextPath}/resources/images/kitchen_adventurer_caramel.jpg" />
                            </li>
                        </ul>
                    </div>
                </section>

            </div>
  

        </div>

        <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  

  <!-- FlexSlider -->
  <script defer src="${pageContext.request.contextPath}/resources/js/jquery.flexslider.js"></script>

  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 100,
        itemMargin: 0,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>





    </div>

