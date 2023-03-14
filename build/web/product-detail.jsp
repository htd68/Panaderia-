<%-- 
    Document   : home
    Created on : Feb 17, 2023, 6:03:01 PM
    Author     : LENOVO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProductDetail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
    <link rel="stylesheet" href="./public/css/productdetail.css">
</head>
<body>
    <%@include file="./inc/header.jsp" %>
    
   
    <!-- Begin main -->
    <main id="main">
        <section class="container single">
            <div class="row">
                <div class="col-md-6">
                    <div class="about__inner">
                        <img src="${product.image}" alt="" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about__inner title">
                        <div class="title-wrap">
                            <span class="text">${product.name}</span>
                            <div class="price">
                                <span class="title-text">Price:</span>
                                <a class="prc" href="">${product.price}$</a>
                            </div>
                            <h2 class="quotes">${product.description}
                            </h2>
                            <form class="buttons_added" action="CartServlet" method="post">
                                <input type="hidden" name="action" value="create"/>
                                <input type="hidden" name="productId" value="${product.id}"/>    
                                <input type="hidden" name="productName" value="${product.name}"/>    
                                <input type="hidden" name="productImage" value="${product.image}"/>    
                                <input type="hidden" name="productPrice" value="${product.price}"/>                                 
                                <ul class="quantity">
                                    <h1 class="qtt">Quantity:</h1>
                                    <input aria-label="quantity" class="input-qty" max="10" min="1"
                                        name="quantity" type="number" value="1">
                                </ul>
                                <button type="submit" class="btn__icon">ADD TO CART</button>
                            </form>
                            <div class="category">
                                <span class ="title-text">Category:</span>
                                <a class="ctg" href="CategoryServlet?categoryId=${category.id}">${category.name}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- End main -->


    <%@include file="./inc/footer.jsp" %>
    
</body>

</html>