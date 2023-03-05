<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 04/03/2023
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with Steller landing page.">
    <meta name="author" content="Devcrud">
    <title>S'identifier</title>
    <!-- font icons -->
    <link rel="stylesheet" href="../assets/vendors/themify-icons/css/themify-icons.css">
    <!-- Bootstrap + Steller main styles -->
    <link rel="stylesheet" href="../assets/css/steller.css">
    <link rel="stylesheet" href="../assets/css/login.css">

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

<!-- Page navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" data-spy="affix" data-offset-top="0">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="../assets/imgs/logo.svg" alt=""></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link">Service</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" >A propos nous</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Contact nous</a>
                </li>
                <li class="nav-item">
                </li>
            </ul>
        </div>
        <div class="nav-item" style="margin-right: 0;">
            <a class="- btn btn-primary rounded ml-4" style="width: 110px;" href="Login.jsp">S'identifier</a>
            <a class="- btn btn-primary rounded ml-4" style="width: 110px;" href="S'inscrire.jsp">S'inscrire</a>

        </div>
    </div>
</nav>
<!-- End of page navibation -->
<div class="container_login" id="container">
    <div class="form-container sign-in-container">
        <form action="LoginServelet" method="post">
            <h1 id="sing_txt">Connexion</h1>
            <span>ou utilisez votre compte</span>
            <input type="email" placeholder="Email" name="email" />
            <input type="password" placeholder="Password" name="password" />
            <a href="#">j'ai oublie password?</a>
            <button type="submit">Connexion</button>
        </form>
    </div>

</div>


<!-- Page Footer -->
<footer class="page-footer">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <p style="color: black;">Copyright <script>document.write(new Date().getFullYear())</script> &copy; <a href="https://github.com/Kaiji21/Lp_JEE_MiniProject" target="_blank">HAKIM & RIDA</a></p>
            </div>
            <div class="col-sm-6">
                <div class="socials">

                    <a class="social-item" href="javascript:void(0)"><i class="ti-github" href="https://github.com/Kaiji21/Lp_JEE_MiniProject"></i></a>

                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End of page footer -->

<!-- core  -->
<script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
<script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>
<!-- bootstrap 3 affix -->
<script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

<!-- steller js -->
<script src="assets/js/steller.js"></script>

</body>
</html>
