$(document).ready(function(){
    selectColorDefault();
    function selectColorDefault(){
       var colorDefault = $(".color-product").first();
       colorDefault.addClass("activeColor");
       var productId = colorDefault.closest("span").find(".productId-getColor").attr("data-product-get-color");
       var colorId = colorDefault.attr("data-color");
      $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/get-product-size-by-color", 
            type: 'GET',
            data: {
                productId: productId,
                colorId: colorId,
            },
            success: function (value){
                var tbodysize = $("#product-size");
                tbodysize.empty();
                tbodysize.append(value);
            }
       });
    }
    
    $("#add-to-card").click(function(){
       var productId = $(this).closest("#product-details").find(".productId").val();
       var productName = $(this).closest("#product-details").find(".prodduct-name").text();
       var price = $(this).closest("#product-details").find(".product-unitprice").attr("data-price");
       var colorId = $(this).closest("#product-details").find(".activeColor").attr("data-color");
       var colorName = $(this).closest("#product-details").find(".activeColor").text();
       var sizeId = $(this).closest("#product-details").find(".activeSize").attr("data-size");
       var sizeName = $(this).closest("#product-details").find(".activeSize").text();
       if(null == sizeId){
           alert("vui lòng chọn size");
       }else{
          $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/add-to-cart", 
            type: 'GET',
            data: {
                productId: productId,
                productName: productName,
                price: price,
                colorId: colorId,
                colorName: colorName,
                sizeId: sizeId,
                sizeName: sizeName  
            },
            success: function (value){
                window.location.replace('/ntshoeshop/cart');
            }
       }); 
       }
        
    });
    
    $(".item-quantity").change(function(){
       
        var productId = $(this).closest("tr").find(".product").attr("data-product");
        var colorId = $(this).closest("tr").find(".color").attr("data-color");
        var sizeId = $(this).closest("tr").find(".size").attr("data-size");
        var quantity = $(this).closest("tr").find(".item-quantity").val();
         $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/update-to-cart", 
            type: 'GET',
            data: {
                productId: productId,
                colorId: colorId,
                sizeId: sizeId,
                quantity: quantity
            },
            success: function (value){
                alert("update thanh cong");
            }
       }); 
    });
//    remove Item to cart
    $(".btn-delete-cart").click(function(){
       var self = $(this);
        var productId = $(this).closest("tr").find(".product").attr("data-product");
        var colorId = $(this).closest("tr").find(".color").attr("data-color");
        var sizeId = $(this).closest("tr").find(".size").attr("data-size");
        var quantity = $(this).closest("tr").find(".item-quantity").val();
         $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/remove-item-to-cart", 
            type: 'GET',
            data: {
                productId: productId,
                colorId: colorId,
                sizeId: sizeId,
                quantity: quantity
            },
            success: function (value){
                self.closest("tr").remove();
            }
       }); 
    });
    
    
    $("body").on("click", ".color-product", function(){
       $(".color-product").removeClass("activeColor");
       $(this).addClass("activeColor");
       var productId = $(this).closest("span").find(".productId-getColor").attr("data-product-get-color");
       var colorId = $(this).attr("data-color");
       $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/get-product-size-by-color", 
            type: 'GET',
            data: {
                productId: productId,
                colorId: colorId,
            },
            success: function (value){
                var tbodysize = $("#product-size");
                tbodysize.empty();
                tbodysize.append(value);
            }
       });
       
    });
    
    $("body").on("click", ".size-product", function(){
       $(".size-product").removeClass("activeSize");
       $(this).addClass("activeSize");   
    });
    
    totalPriceItem();
    function totalPriceItem(isEnventChange){
        var totalPriceProducts = 0;
        $(".item-price").each(function(){
           var price = $(this).text();
           var quantity = $(this).closest("tr").find(".item-quantity").val();
           var total = quantity * price; 
           var format = parseFloat(total).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
		if(!isEventChange){
			$(this).html(format);
		}
		totalPriceProducts = totalPriceProducts + total;
		var formattotalPrice = totalPriceProducts.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
		$("#totalPrice").html(formattotalPrice+"");
        });
    }
});