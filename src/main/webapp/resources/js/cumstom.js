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
       var promotionId = $(this).closest("#product-details").find(".promotion").val();
       if(null == promotionId){
           promotionId = -1;
       }
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
                sizeName: sizeName,
                promotionId: promotionId
            },
            success: function (value){
                window.location.replace('/ntshoeshop/cart');
            }
       }); 
       }
        
    });
    
    $(".item-quantity").change(function(){
       var price = $(this).closest("tr").find(".item-price").attr("data-price");
       var priceRep = price.replace(/\./g,"");
       
       
        var productId = $(this).closest("tr").find(".product").attr("data-product");
        var colorId = $(this).closest("tr").find(".color").attr("data-color");
        var sizeId = $(this).closest("tr").find(".size").attr("data-size");
        var quantity = $(this).closest("tr").find(".item-quantity").val();
        
        var total = parseInt(priceRep) * quantity;
        var format = total.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
        
        
        $(this).closest("tr").find(".item-price").html(total);
        totalPriceItem(true);
        
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
                $(".message").show();
            }
       }); 
    });
    //close message update quantity to cart
    $(".btn-close").click(function(){      
       $(this).closest("body").find(".message").css("display","none");
       
    });
    //end close message update quantity to cart
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
    
    //ratting
    $("#ratingSystem input").click(function(){
        $("#ratingSystem input").removeClass("activeRating");
        $(this).addClass("activeRating");      
    });
    
    //add rating
    $(".btn-send-rating").click(function(){
        var comment = $(this).closest("#table-rating").find("#comment").val();
        var productId = $(this).closest("#table-rating").find("#comment").attr("data-product");
        var customerName = $(this).closest("#table-rating").find("#customer-name").val();
        var email = $(this).closest("#table-rating").find("#email-customer").val();
        var rate = $(this).closest("#table-rating").find(".activeRating").val();
//        var productId = $(this).closest("table").find(".activeRating").attr("data-product");
        if("" === comment){
            alert("Nội dung không được trống"); 
        }
        if("" === customerName){
            alert("Tên không được trống"); 
        }
        
         if("" === email ){
            alert(comment); 
        }

        if(rate === undefined){
            
                $.ajax({
                    url: "http://localhost:8084/ntshoeshop/api/add-new-comment",
                    type: 'GET',
                    data: {
                        productId: productId,
                        customerName: customerName,
                        email: email,
                        comment: comment
                    },
                    success: function (value) {
                        
                        var tbody = $("#user-comment-product").find("ul");
                            tbody.empty();
                            tbody.html(value);
//                            tbody.append(value);
                        
                    }
                });
            
        }
        
        //rate
        if(rate !== undefined ){
          $.ajax({
          url: "http://localhost:8084/ntshoeshop/api/add-new-rate", 
            type: 'GET',
            data: {
                productId: productId,
                rate: rate,
                customerName: customerName,
                email: email,
                comment: comment
            },
            success: function (value){
                var tbody = $("#user-comment-product").find("ul");
                            tbody.empty();
                            tbody.html(value);
//                            tbody.append(value);
//                alert("theem thanh cong");
            }
       });  
        }
        
         
    });
//    end ratting
//    show rating
    $(".open-rating").click(function(){
       $(this).css("display","none");
       $(this).closest("#table-rating").find(".close-rating").css("display","unset");
       $(this).closest("#table-rating").find(".rateDisplay").css("display","");
    });
    
//    close ratting
    $(".close-rating").click(function(){
       $(this).css("display","none");
       $(this).closest("#table-rating").find(".open-rating").css("display","unset");
       $(this).closest("#table-rating").find(".rateDisplay").css("display","none");
    });
    
//    end show ratting
    
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
    function totalPriceItem(isEventChange){
        var totalPriceProducts = 0;
        $(".item-price").each(function(){
           var price = $(this).attr("data-price");
           var priceRep = price.replace(/\./g,"");
           var quantity = $(this).closest("tr").find(".item-quantity").val();
           var total = quantity * priceRep; 
           var format = parseFloat(total).toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
		if(!isEventChange){
			$(this).html(total);
		}
		totalPriceProducts = totalPriceProducts + total;
		var formattotalPrice = totalPriceProducts.toFixed(3).replace(/(\d)(?=(\d{3})+\.)/g, "$1.").toString();
		$("#totalPrice").html(totalPriceProducts+"");
        });
    }
});