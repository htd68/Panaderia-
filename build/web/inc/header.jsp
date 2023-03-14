<%-- 
    Document   : header
    Created on : Feb 17, 2023, 6:13:52 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin header -->
<header id="header">
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <ul class="contact">
                        <li class="contact-icon">
                            <span>CALL US
                                <a href="">5555-00-444</a>
                            </span>
                        </li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <ul class="infor">
                        <li class="infor-icon">
                            <a href="">ABOUT US</a>
                        </li>
                        <li class="infor-icon">
                            <a href="">LOCATIONS</a>
                        </li>
                        <li class="infor-icon">
                            <a href="">CAREERS</a>
                        </li>
                        <c:if test="${sessionScope.user == null}">
                            <li class="infor-icon">
                                <a href="RegisterServlet">REGISTER</a>
                                |
                                <a href="LoginServlet">LOGIN</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <li class="infor-icon">
                                <a href="LogoutServlet">Logout</a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="content-header">
        <div class="row">
            <div class="col-md-4">
                <ul class="left">
                    <a href="" class="left-icon">
                        <img src="https://img.icons8.com/quill/100/null/note.png" />
                    </a>
                    <a href="" class="left-icon">
                        <img src="https://img.icons8.com/ios/100/null/worldwide-location.png" />
                    </a>
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="center">
                    <a href="" class="center-logo">
                        <img src="./public/images/logo-dark.png" />
                    </a>
                </ul>
            </div>
            <div class="col-md-4">
                <ul class="right">
                    <a href="CartServlet" class="right-icon">
                        <img src="https://img.icons8.com/carbon-copy/100/null/shopping-basket.png" />
                    </a>
                    <a href="SearchServlet" class="right-icon">
                        <img src="./public/images/125.png" alt="">
                    </a>
                </ul>
            </div>
        </div>
    </div>
    <div class="container menu">
        <nav class="menu-task">
            <div class="row">
                <ul class="menu__list">
                    <li class="menu__item">
                        <a href="HomeServlet" class="menu__link">HOME</a>
                    </li>
                    <li class="menu__item">
                        <a href="ShopServlet" class="menu__link">SHOP</a>
                    </li>
                    <li class="menu__item">
                        <a href="BlogServlet" class="menu__link">BLOG</a>
                    </li>
                    <li class="menu__item">
                        <a href="AboutServlet" class="menu__link">ABOUT</a>
                    </li>
                    <li class="menu__item">
                        <a href="ContactServlet" class="menu__link">CONTACT</a>
                    </li>
                </ul>
        </nav>
    </div>
    <form action="SearchServlet" method="get" class="container search">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-10"><input name="key" class="form-control" placeholder="Search" type="text"> </div>
                    <div class="col-md-2"><input class="btn btn-primary" type="submit" value="Find" /></div>
                </div>
            </div>

            <div class="col-md-2"></div>
        </div>
    </form>
</header>
<!-- End header -->