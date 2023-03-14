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
        <title>PanaderiaCategories</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
        <link rel="stylesheet" href="./public/css/category.css">
    </head>

    <body>
        <!-- Begin header -->
        <%@include file="./inc/header.jsp" %>
        <!-- End header -->

        <!-- Begin main -->
        <main id="main">
            <section class="container categories">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text">CATEGORY</h2>
                        <div class="product">
                            <div class="coffee">
                                <div class="row align-items-start">
                                    <h2>--${category.name}--</h2>
                                    <c:forEach items="${productList}" var="product">
                                        <div class="col-md-3">
                                            <a href="ProductDetailServlet?productId=${product.id}">
                                                <img class="product-image" src="${product.image}" alt=""></a>
                                            <a class="product-infor" href="">${product.name} ...</a>
                                            <a class="product-price" href="">${product.price}$</a>
                                        </div>   
                                    </c:forEach>
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