$(document).ready(function(){
    selectColorDefault();
    function selectColorDefault(){
       var colorDefault = $(".color-product").first();
       colorDefault.addClass("activeColor");
       var productId = colorDefault.closest("span").find(".productId-getColor").attr("data-product-get-color");
       var colorId = colorDefault.attr("data-color");
      $.ajax({
          url: "http://localhost:8084/shoeshop/api/get-product-size-by-color", 
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
    
    
    
    $("body").on("click", ".color-product", function(){
       $(".color-product").removeClass("activeColor");
       $(this).addClass("activeColor");
       var productId = $(this).closest("span").find(".productId-getColor").attr("data-product-get-color");
       var colorId = $(this).attr("data-color");
       $.ajax({
          url: "http://localhost:8084/shoeshop/api/get-product-size-by-color", 
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
       $(".size-product").removeClass("activeColor");
       $(this).addClass("activeColor");
       
       
    });
});