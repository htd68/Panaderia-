<%-- 
    Document   : home
    Created on : Feb 17, 2023, 6:03:01 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PanaderiaList</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
        <link rel="stylesheet" href="./public/css/shop.css">
    </head>

    <body>
        <!-- Begin header -->
        <%@include file="./inc/header.jsp" %>
        <!-- End header -->  
        <!-- Begin main -->
        <main id="main">
            <section class="container products">
                <div class="row">
                    <div class="col-md-8">
                        <div class="sort">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Sort list</option>
                                <option value="1">Default sorting</option>
                                <option value="2">Sort by popularity</option>
                                <option value="3">Sort by price: Low to high</option>
                                <option value="4">Sort by price: High to low</option>
                            </select>
                        </div>
                        <div class="row">
                            <c:forEach items="${productList}" var="product">
                                <div class="col-md-4">
                                    <div class="p-3">
                                        <a href="ProductDetailServlet?productId=${product.id}" class="product">
                                            <img class="product-image" src="${product.image}" alt="">
                                            <img class="product-rate" src="./public/images/star-rating-icon-21.jpg" alt="">
                                            <span class="product-infor" >${product.name}</span>
                                            <span class="product-price">${product.price}$</span>
                                        </a>
                                    </div>
                                </div>       
                            </c:forEach>  
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="categories">
                            <h2>CATEGORIES</h2>
                            <c:forEach items="${categoryList}" var="category">
                                <li>
                                    <a class="categories-title" href="CategoryServlet?categoryId=${category.id}">${category.name}</a>
                                </li>
                            </c:forEach>
                        </div>
                        <div class="popular">
                            <h2>BEST SELLER</h2>
                            <div class="bestsell">
                                <a href="">
                                    <img src="./public/images/shop-img-4.jpg" alt="">
                                </a>
                                <a href="">
                                    <img src="./public/images/shop-img-1.jpg" alt="">
                                </a>
                                <a href="">
                                    <img src="./public/images/shop-img-5.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        </section>
                        </main>
                        <!-- End main -->

                        <!-- Begin footer -->
                        <%@include file="./inc/footer.jsp" %>
                        <!-- End footer -->
                        </body>

                        </html>