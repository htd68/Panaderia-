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
    <title>Panaderia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
</head>

<body>
    <%@include file="./inc/header.jsp" %>

    <!-- Begin main -->
    <main id="main">
        <section class="container gallery">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="about__item">
                                <img src="./public/images/masonry-gallery-1-1.jpg" alt="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="about__item">
                                <img src="./public/images/masonry-gallery-2.jpg" alt="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="about__item introduct">
                                <div class="introduct-wrap">
                                    <span class="about__text">DON'T MISS</span>
                                    <h2 class="text">TODAY’S SPECIAL BAKED FOR YOU.</h2>
                                    <a href="#" class="btn__icon">READ MORE</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="about__item">
                                <img src="./public/images/masonry-gallery-3.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="about__item">
                        <img src="./public/images/masonry-gallery-4.jpg" alt="" />
                    </div>
                </div>
            </div>
        </section>
        <section class="container single">
            <div class="row">
                <div class="col-md-6">
                    <div class="about__inner">
                        <img src="./public/images/m-h-single-img-2-1.jpg" alt="" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about__inner title">
                        <div class="title-wrap">
                            <span class="text1">TODAY’S SPECIAL BAKED FRESH FOR YOU.</span>
                            <h2 class="quotes">Lorem ipsum dolor sit amet, his convenire similique efficiendi et, et ius
                                brute tation inermis, movet labitur ea cum. Iusto civibus deseruisse.</h2>
                            <a href="#" class="btn__icon">READ MORE</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container break">
            <div class="row">
                <div class="col-md-4">
                    <a class="card" href="CategoryServlet?categoryId=1">
                        <img src="./public/images/m-h-break-img-1.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text2">Coffee</span>
                            <h2 class="quotes1">Lorem ipsum dolor sit amet, his convenire similique effici.</h2>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="card" href="CategoryServlet?categoryId=2">
                        <img src="./public/images/m-h-break-img-2.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text2">Food</span>
                            <h2 class="quotes1">Lorem ipsum dolor sit amet, his convenire similique effici.</h2>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a class="card" href="CategoryServlet?categoryId=3">
                        <img src="./public/images/m-h-break-img-3.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text2">Lunch</span>
                            <h2 class="quotes1">Lorem ipsum dolor sit amet, his convenire similique effici.</h2>
                        </div>
                    </a>
                </div>
            </div>
        </section>
        <div class="container frontpager">
            <span class="text3">OUR PROCESS</span>
            <h2 class="quotes2">Lorem ipsum dolor sit amet, his convenire similique efficiendi et,</h2>
        </div>
        <section class="container process">
            <div class="row">
                <div class="col-md-3">
                    <div class="timeline">
                        <img src="./public/images/m-h-single-img-11-1.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text">FAMILY-OWNED</span>
                            <h2 class="quotes">Lorem ipsum dolor sit amet, his convenire similiqu.</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="timeline">
                        <img src="./public/images/m-h-single-img-12.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text">PASSION FOR BREAD</span>
                            <h2 class="quotes">Lorem ipsum dolor sit amet, his convenire similique.</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="timeline">
                        <img src="./public/images/m-h-single-img-13-1.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text">COFFEE TO GO</span>
                            <h2 class="quotes">Lorem ipsum dolor sit amet, his convenire similique.</h2>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="timeline">
                        <img src="./public/images/m-h-single-img-14.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <span class="text">DELIVERY</span>
                            <h2 class="quotes">Lorem ipsum dolor sit amet, his convenire similique.</h2>
                        </div>
                    </div>
                </div>
        </section>
        <div class="container special">
            <span class="text3">OUR SPECIALTIES</span>
            <h2 class="quotes2">Lorem ipsum dolor sit amet, his convenire similique efficiendi et,</h2>
        </div>
        <section class="container text-post">
            <div class="row">
                <div class="col-md-6">
                    <div class="about_paper">
                        <img src="./public/images/m-h-single-img-22.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about_paper attachment">
                        <span class="text1">HAVE YOU TRIED OUR NEW BROWNIES YET?</span>
                        <h2 class="quotes">Duis sed odio sit amet nibh vulputate cursus . Proin gravida nibh vel
                            velit auctor aliquet.
                            Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum.
                        </h2>
                    </div>
                </div>
            </div>
            <div class="w-100"></div>
            <div class="row">
                <div class="col-md-6">
                    <div class="about_paper attachment">
                        <span class="text1">A TASTE ALL FOLKS KEEP COMING TO</span>
                        <h2 class="quotes">Duis sed odio sit amet nibh vulputate cursus . Proin gravida nibh
                            vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi
                            elit
                            consequat ipsum.
                        </h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about_paper">
                        <img src="./public/images/m-h-single-img-50.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container logo">
                <div class="row">
                    <div class="about_arward">
                        <div class="col-md-2">
                            <img src="./public/images/client-1.png" alt="">
                        </div>
                        <div class="col-md-2">
                            <img src="./public/images/client-2.png" alt="">
                        </div>
                        <div class="col-md-2">
                            <img src="./public/images/client-3.png" alt="">
                        </div>
                        <div class="col-md-2">
                            <img src="./public/images/client-4.png" alt="">
                        </div>
                        <div class="col-md-2">
                            <img src="./public/images/client-5.png" alt="">
                        </div>
                        <div class="col-md-2">
                            <img src="./public/images/client-6.png" alt="">
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