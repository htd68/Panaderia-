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
        <title>PanaderiaCart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
        <link rel="stylesheet" href="./public/css/cart.css">
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>


        <!-- Begin main -->
        <main role="main">
            <div class="container cart">
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Ảnh </th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Đơn giá</th>
                                    <th>Thành tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="datarow">
                                <c:set var="index" value="1"></c:set>
                                <c:forEach items="${cart}" var="product">
                                    <tr>
                                        <td>${index}</td>
                                        <td>
                                            <img src="${product.productImage}" class="hinhdaidien">
                                        </td>
                                        <td>${product.productName}</td>
                                        <td>
                                            <form class="buttons_added" action="CartServlet" method="post">
                                                <input type="hidden" name="action" value="update"/>
                                                <input type="hidden" name="productId" value="${product.productId}"/>    
                                                <input aria-label="quantity" class="input-qty" max="Số tối đa"
                                                       min="Số tối thiểu" name="quantity" type="number" value="${product.quantity}">
                                                <input class="is-form" type="submit" value="OK">
                                            </form>
                                        </td>
                                        <td class="text-right">${product.productPrice}$</td>
                                        <td>${product.quantity * product.productPrice}$</td>
                                        <td>
                                            <form action="CartServlet" method="post">
                                                <input type="hidden" name="action" value="delete"/>
                                                <input type="hidden" name="productId" value="${product.productId}"/>  
                                                <button id="delete_1" data-sp-ma="2" class="btn btn-danger btn-delete-sanpham">Xóa</button>
                                            </form>
                                        </td>
                                    </tr>
                                    <c:set var="index" value="${index + 1}"></c:set>
                                </c:forEach>
                                    <tr>
                                        <td colspan="5"></td>
                                        <td><strong>Total:</strong> ${total}$</td>
                                        <td></td>
                                    </tr>
                            </tbody>
                        </table>
                        <div class="button-cart">
                            <a href="ShopServlet" class="btn btn-primary btn-md">Quay lại</a>
                            <a href="CheckoutServlet" class="btn btn-primary btn-md">Thanh toán</a>
                        </div>
                    </div>
                </div>
            </div>   
        </main>
        <!-- End main -->

        <%@include file="./inc/footer.jsp" %>

    </body>

</html>