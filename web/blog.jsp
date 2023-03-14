<%-- 
    Document   : blog
    Created on : Mar 2, 2023, 8:24:11 PM
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
        <title>Blog</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
        <link rel="stylesheet"
              href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
        <link rel="stylesheet" href="./public/css/blog.css">
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>
        <!-- Begin main -->
        <main id="main">
            <section class="container blogpost">
                <div class="row ">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="blogs">
                                    <a href="BlogDetailServlet">
                                        <img src="./public/images/blog-list-masonry 1.jpg" alt="" />
                                    </a>
                                    <div class="blogs-text">
                                        <a href="BlogDetailServlet" class="thumneil">
                                            <h2>BANANA BREAD</h2>
                                        </a>
                                        <span>His cu impedit definitionem, utanum luptatum nominati sed. Ut...</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="blogs1">
                                    <a href="BlogDetailServlet">
                                        <img class="post-image" src="./public/images/masonry-gallery-4.jpg" alt="" />
                                    </a>
                                    <div class="blogs-text">
                                        <a href="BlogDetailServlet" class="thumneil">
                                            <h2>BEST SANDWICHES</h2>
                                        </a>
                                        <span>His cu impedit definitionem, utanum luptatum nominati sed. Ut...</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="blogs">
                                    <a href="BlogDetailServlet">
                                        <img src="./public/images/blog-list-masonry-img-3-1132x850.jpg" alt="" />
                                    </a>
                                    <div class="blogs-text">
                                        <a href="BlogDetailServlet" class="thumneil">
                                            <h2>HOMEMADE SWEETS</h2>
                                        </a>
                                        <span>His cu impedit definitionem, utanum luptatum nominati sed. Ut...</span>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="blogs">
                            <a href="BlogDetailServlet">
                                <img src="./public/images/blog-list-masonry 2.jpg" alt="" />
                            </a>
                            <div class="blogs-text">
                                <a href="BlogDetailServlet" class="thumneil">
                                    <h2>COFFEE TO GO</h2>
                                </a>
                                <span>His cu impedit definitionem, utanum luptatum nominati sed. Ut...</span>
                            </div>
                        </div>
                        <div class="blogs">
                            <a href="BlogDetailServlet">
                                <img src="./public/images/blog-list-masonry-img-5-1132x850.jpg" alt="" />
                            </a>
                            <div class="blogs-text">
                                <a href="BlogDetailServlet" class="thumneil">
                                    <h2>BEST SANDWICHES</h2>
                                </a>
                                <span>His cu impedit definitionem, utanum luptatum nominati sed. Ut...</span>
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
