

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- js -->
	<script type="text/javascript" src='<c:url value="/resources/js/jquery-2.1.4.min.js"></c:url>'></script>
	<!-- //js -->
	<!-- /nav -->
	<script src='<c:url value="/resources/js/modernizr-2.6.2.min.js" ></c:url>'></script>
	<script src='<c:url value="/resources/js/classie.js"></c:url>'></script>
	
	<!-- //nav -->
        <!--content-->
        <script src='<c:url value="/resources/js/cumstom.js"></c:url>'></script>
        <!--end content-->
	<!-- cart-js -->
	<script src='<c:url value="/resources/js/minicart.js"></c:url>'></script>
	<script>
		shoe.render();

		shoe.cart.on('shoe_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
	<!-- //cart-js -->
	<!--search-bar-->
	<script src='<c:url value="/resources/js/search.js"></c:url>'></script>
	<!--//search-bar-->
	<script src='<c:url value="/resources/js/responsiveslides.min.js"></c:url>'></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- js for portfolio lightbox -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src='<c:url value="/resources/js/move-top.js"></c:url>'</script>
	<script type="text/javascript" src='<c:url value="/resources/js/easing.js"></c:url>'></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smoth-scrolling -->

	<script type="text/javascript" src='<c:url value="/resources/js/bootstrap-3.1.1.min.js"></c:url>'></script>
