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
    <title>PanaderiaLogin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">
    <link rel="stylesheet" href="./public/css/login.css">
</head>

<body>
    <!-- Begin main -->
    <main id="main">
        <section class="container logins">
            <div class="row">
                <div class="col-md-6">
                    <ul class="login-logo">
                        <a href="">
                            <img src="./public/images/logo-dark.png" />
                        </a>
                        <h1>
                            <img src="./public/images/m-h-break-img-3.png" />
                        </h1>
                    </ul>
                </div>
                <div class="col-md-6">
                    <form action="LoginServlet" method="post" class="login-text">
                        <h3 style="color:red;">${sessionScope.errors}</h3>
                        <div class="form">
                            <div class="form-floating ">
                                <input name="email" type="email" class="form-control" id="floatingInput"
                                    placeholder="name@example.com">
                                <label for="floatingInput">Username</label>
                            </div>
                            <div class="form-floating">
                                <input name="password" type="password" class="form-control" id="floatingPassword"
                                    placeholder="Password">
                                <label for="floatingPassword">Password</label>
                            </div>
                        </div>
                        <div class="button-log">
                            <div class="d-grid gap-2 col-6 mx-auto">
                                <button class="btn btn-primary" type="submit">Log In</button>
                                <a href="RegisterServlet" class="btn btn-primary">Create new account</a>
                            </div>
                        </div>
                        <div class="socialnetwork">
                            <a class="social-icon" href="">
                                <img src="https://img.icons8.com/plasticine/100/null/facebook-new.png"/>
                            </a>
                            <a class="social-icon" href="">
                                <img src="https://img.icons8.com/doodle/100/null/gmail.png"/>
                            </a>
                            <a class="social-icon" href="">
                                <img src="https://img.icons8.com/plasticine/100/null/instagram-new--v2.png"/>
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
    <!-- End main -->

    <%@include file="./inc/footer.jsp" %>
    
</body>

</html>