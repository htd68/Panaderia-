<%-- 
    Document   : blog-detail
    Created on : Mar 2, 2023, 8:31:15 PM
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
        <link rel="stylesheet" href="./public/css/blogdetail.css">
    </head>

    <body>
        <%@include file="./inc/header.jsp" %>x
        <!-- Begin main -->
        <main id="main">
            <section class="container title-blog">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="title-wrapper">
                            <div class="title-text">
                                <h1>COOKIES ARE THE SWEETEST LITTLE BIT OF COMFORT FOOD</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
            </section>
            <section class="container content-blog">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <div class="content-post">
                            <img src="./public/images/blog-list-minimal-img-1.jpg" class="blog-img" alt="...">
                            <p class="content-text">Morem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec
                                metus sed nulla auctor ullamcorper non in erat. Vestibulum viverra massa sit amet neque
                                consectetur, nec lobortis leo rutrum. Proin pulvinar volutpat blandit. Nam eleifend quam
                                id vestibulum euismod. Aenean sit amet neque convallis, rhoncus quam.

                                Proin justo sapien, malesuada at nisl id, porttitor maximus ligula. Sed sit amet
                                pharetra leo.Quisque porttitor ipsum vitae fermentum suscipit. Praesent vel semper quam.
                                Nullam non eros a odio aliquam dignissim nec nec metus. Vestibulum scelerisque metus at
                                pulvinar ullamcorper. Morbi pharetra aliquam dictum. Integer scelerisque libero molestie
                                arcu sodales suscipit. Vestibulum et condimentum mi, ut condimentum turpis. Integer
                                commodo est nisi, in mattis dui faucibus a. Aenean rutrum dolor augue, sit amet
                                facilisis ante viverra id. Fusce vel ultrices erat. </p>
                            <div class="quotes">
                                <h4>Discover a Healthier Slice of Life!</h4>
                            </div>
                        </div>
                        <div class="content-post">
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="content-text">Phasellus ultrices id orci at vehicula. Orci varius natoque
                                        penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum
                                        feugiat ante mauris, vitae pulvinar libero semper quis. Nam elementum eros a
                                        consectetur commodo. Cras ligula est, euismod eget ornare at, viverra eu dolor.
                                        Phasellus eu ipsum mollis, blandit purus quis, mollis ante. Integer in fermentum
                                        nulla. Sed non pellentesque lacus, id consectetur felis.
                                        Maecenas iaculis leo quis diam sagittis, et aliquet nulla interdum. Integer placerat
                                        suscipit velit eu sollicitudin. Sed commodo cursus blandit. Nulla volutpat, massa id
                                        aliquet maximus.</p>
                                </div>
                                <div class="col-md-6">
                                    <div class="credit">
                                        <p class="credit-title">Quisque porttitor ipsum vitae fermentum suscipit. Praesent
                                            vel semper ello.</p>
                                        <ul>
                                            <img src="./public/images/icon-w-text-2.png" alt="">
                                            <span>DENISE MEDINA</span>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <img src="./public/images/blog-list-featured-img-2.jpg" class="blog-img" alt="...">
                            <div class="quotes">
                                <h4>Discover a Healthier Slice of Life!</h4>
                            </div>
                        </div>
                        <div class="content-post">
                            <p class="content-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec
                                metus
                                sed nulla auctor ullamcorper non in erat. Vestibulum viverra massa sit amet neque
                                consectetur,
                                nec lobortis leo rutrum. Proin pulvinar volutpat blandit. Nam eleifend quam id vestibulum
                                euismod. Aenean sit amet neque convallis, rhoncus quam a, porta elit.Proin justo sapien,
                                malesuada at nisl id, porttitor maximus ligula. Sed sit amet pharetra leo.Quisque porttitor
                                ipsum vitae fermentum suscipit. Praesent vel semper quam. Nullam non eros a odio aliquam
                                dignissim nec nec metus. Vestibulum scelerisque metus at pulvinar ullamcorper. Morbi
                                pharetra
                                aliquam dictum. Integer scelerisque libero molestie arcu sodales suscipit. Vestibulum et
                                condimentum mi, ut condimentum turpis. Integer commodo est nisi, in mattis dui faucibus a.
                                Aenean rutrum dolor augue, sit amet facilisis ante viverra id. Fusce vel ultrices erat, vel
                                condimentum risus.</p>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
            </section>
            <div class="interact">
                <a href="" class="like">
                    <img src="https://img.icons8.com/ios/50/null/hearts--v1.png" />
                    <span>Like</span>
                </a>
                <a href="" class="like">
                    <img src="https://img.icons8.com/ios/50/null/speech-bubble--v1.png" />
                    <span>Comment</span>
                </a>
                <a href="" class="like">
                    <img src="https://img.icons8.com/ios/50/null/price-tag--v1.png" />
                    <span>Tag</span>
                </a>
            </div>
            <div class="border"></div>
            <div class="comment">
                <h2 class="text-cmt">COMMENT</h2>
                <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="">
                </div>
                <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">Comment</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <a href="#" class="btn__icon">Submit</a>
            </div>

        </main>
        <!-- End main -->
        <%@include file="./inc/footer.jsp" %>
    </body>
</html>
