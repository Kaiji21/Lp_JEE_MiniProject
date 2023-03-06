<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with Steller landing page.">
    <meta name="author" content="Devcrud">
    <title>Steller Landing page | Free Bootstrap 4.1 landing page</title>
    <style>


        .rangestyle {
            -webkit-appearance: none;
            margin-top: 15px;
            width: 100%;
            height: 7px;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 5px;
            background-image: linear-gradient(#ff4500, #ff4500);
            /* background-size: 70% 100%;  */
            background-repeat: no-repeat;
        }

        .rangestyle::-webkit-slider-thumb {
            -webkit-appearance: none;
            height: 20px;
            width: 20px;
            border-radius: 50%;
            background: #ff4500;
            cursor: ew-resize;
            box-shadow: 0 0 2px 0 #555;
            /*  transition: background .3s ease-in-out; */
        }

        .slidecontainer {
            width: 100%;
        }

        .slider {
            margin-top: 30px;
            -webkit-appearance: none;
            width: 100%;
            height: 15px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }

        .slider:hover {
            opacity: 1;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            background:#3b8d42;
            cursor: pointer;
        }

        .slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            background: #04AA6D;
            cursor: pointer;
        }
    </style>

    <!-- font icons -->
    <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">
    <!-- Bootstrap + Steller main styles -->
    <link rel="stylesheet" href="../assets/css/steller.css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" >
<c:set var="mensualite" value="${requestScope.mensualites}" />
<c:set var="montant" value="${requestScope.montant}" />
<c:set var="taux" value="${requestScope.taux}" />
<c:set var="duree" value="${requestScope.duree}" />
<c:set var="cout_total" value="${requestScope.cout_total}" />

<!-- Page navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" data-spy="affix" data-offset-top="0">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="assets/imgs/logo.svg" alt=""></a>
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

<!-- Page Header -->
<header class="header" id="home">
    <div class="container">
        <div class="infos">

            <h6 class="title">Bienvenue dans nos services de estimation des crédit</h6>
            <p>Utilisez notre application pour obtenir une simulation rapide et facile de votre crédit.
                Entrez vos informations et recevez instantanément une estimation de vos mensualités.</p>

            <div class="buttons pt-3">

                <button class="btn btn-dark rounded">Simulez votre crédit maintenant</button>
            </div>


        </div>
        <div class="img-holder">
            <img src="../assets/imgs/simulation_credit1.png" alt="">
        </div>
    </div>

</header>

<!-- End of Page Header -->

<div class="container" style="background-color: #FFFFFF">
    <div style="width: 100%; float: left; display: flex; justify-content: space-around;padding-bottom: 5%;
    padding-top: 5%;
    background-color: #FFFFFF;
    border: 1px solid #eee;
    border-radius: 3px;
    margin-top: 30px;
    margin-bottom: 3%;
    border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25),
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;">


        <div style="float: left; width: 45%;padding: 20px 30px;" id="simulation">
            <form action="Simulation" method="post">


            <!--row1 montant lighaydkhel-->

            <div style="width: 100%; padding: 5px 0px 0px 0px;
            margin: 5px 0;
            text-transform: uppercase;
            font-weight: 300;">

                <div style="margin-top: 15px;margin-bottom: 15px;">
                    <div style="padding: 5px 10px;text-align: left; float: left;">
                        MONTANT DU CRÉDIT
                    </div>
                    <div style="float: left;width: 100%; text-align: left;">

                        <input name="montant" value="${montant}"  style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" class="parent simInput InitialRes" step="5000" min="0" max="5000000" value="0" id="montantInput">
                        <span style="-webkit-text-size-adjust: 100%;
                        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                        -webkit-font-smoothing: antialiased;
                        font-size: 13px;
                        border-radius: 5px;
                        line-height: 23px;
                        letter-spacing: 0.02em;
                        font-family: 'Roboto', sans-serif;
                        text-transform: uppercase;
                        font-weight: 300;
                        text-align: right !important;
                        outline: none !important;
                        -webkit-transition: all .2s !important;
                        box-sizing: border-box;
                        background: #ff4500;
                        padding: 10px 15px;
                        color: #fff;
                        margin: 0 0 0 10px;">DH</span>
                    </div>


                </div>
                <div style="width: 100%;padding: 3px 6px;margin-top: 12px;">
                    <input type="range" step="5000" min="0" max="1000000" value="0" class="rangestyle" id="montantRange">

                </div>


            </div>

            <!--row2 lfa2ida lighaydkhel-->

            <div style="width: 100%; padding: 5px 0px 0px 0px;
            margin: 20px 0;
            text-transform: uppercase;
            font-weight: 300;">
                <div style="margin-top: 15px;margin-bottom: 15px;">
                    <div style="padding: 5px 10px;text-align: left; float: left;">
                        TAUX HT
                    </div>
                    <div style="float: left;width: 100%; text-align: left;">
                        <input name="taux" value="${taux}" style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" class="parent simInput InitialRes" step="1" min="0" max="30" value="0" id="interetInput">
                        <span style="-webkit-text-size-adjust: 100%;
                        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                        -webkit-font-smoothing: antialiased;
                        font-size: 13px;
                        border-radius: 5px;
                        line-height: 23px;
                        letter-spacing: 0.02em;
                        font-family: 'Roboto', sans-serif;
                        text-transform: uppercase;
                        font-weight: 300;
                        text-align: right !important;
                        outline: none !important;
                        -webkit-transition: all .2s !important;
                        box-sizing: border-box;
                        background: #ff4500;
                        padding: 10px 15px;
                        color: #fff;
                        margin: 0 0 0 10px;">%</span>
                    </div>


                </div>
                <div style="width: 100%;padding: 3px 6px;margin-top: 12px;">
                    <input type="range" step="1" min="0" max="20" value="0" class="rangestyle" id="interetRange">

                </div>


            </div>

            <!--row3 mois lighaydkhel-->

            <div style="width: 100%; padding: 5px 0px 0px 0px;
            margin: 5px 0;
            text-transform: uppercase;
            font-weight: 300;">
                <div style="margin-top: 15px;margin-bottom: 15px;">
                    <div style="padding: 5px 10px;text-align: left; float: left;">
                        DURÉE
                    </div>
                    <div style="float: left;width: 100%; text-align: left;">
                        <input name="duree" value="${duree}" style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" class="parent simInput InitialRes" step="6" min="0" max="1000" value="0" id="moisInput">
                        <span style="-webkit-text-size-adjust: 100%;
                        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
                        -webkit-font-smoothing: antialiased;
                        font-size: 13px;
                        border-radius: 5px;
                        line-height: 23px;
                        letter-spacing: 0.02em;
                        font-family: 'Roboto', sans-serif;
                        text-transform: uppercase;
                        font-weight: 300;
                        text-align: right !important;
                        outline: none !important;
                        -webkit-transition: all .2s !important;
                        box-sizing: border-box;
                        background: #ff4500;
                        padding: 10px 15px;
                        color: #fff;
                        margin: 0 0 0 10px;">Mois</span>
                    </div>


                </div>
                <div style="width: 100%;padding: 3px 6px;margin-top: 12px;">
                    <input type="range" step="6" min="0" max="100" value="0" class="rangestyle" id="moisRange" style="-webkit-appearance: none;">

                </div>


            </div>
            <div style="text-align: center;">
                <button type="submit" style="margin-top: 25px;width: 70%;border-color: #fff;border-radius: 5px;background-color: #ff4500;padding: 12px 20px;">

                    <span style="font-size: 20px;color: #fff;">Simulation rapide</span>
                </button>
            </div>
            </form>

        </div>

        <div style="float: left; width: 45%;padding: 50px 30px; background-color:#ffffff;">

            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">

                <div style="float: left;width: 40%;padding-left: 15px;color: #000;">MONTANT DU CRÉDIT</div>
                <div style="float: left;width: 50%;text-align: right;">
                    <span >${not empty montant?montant:'0.00'}</span> DH
                </div>

            </div>
            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">
                <div style="float: left;width: 40%;padding-left: 15px; color: #000;">MENSUALITÉS</div>
                <div style="float: left;width: 50%;text-align: right;">
                    <span >${not empty mensualite ? mensualite :'0.00' }</span> DH
                </div>

            </div>
            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">
                <div style="float: left;width: 40%;padding-left: 15px;color: #000000;">TAUX HT</div>
                <div style="float: left;width: 50%;text-align: right;">
                    <span >${not empty taux?taux:'0.00'}</span> %
                </div>
            </div>
            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">
                <div style="float: left;width: 40%;padding-left: 15px; color: #000000;">DURÉE DU CRÉDIT</div>
                <div style="float: left;width: 50%;text-align: right;">
                    <span >${not empty duree ?duree:'0'}</span> Mois
                </div>
            </div>
            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">
                <div style="float: left;width: 40%;padding-left: 15px;color: #000000;">COÛT TOTAL DU CRÉDIT</div>
                <div style="float: left;width: 50%;text-align: right;">
                    <span >${not empty cout_total? cout_total:'0.00'}</span> DH
                </div>

            </div>


        </div>

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
<script>

    var r1 = document.getElementById("montantRange");
    var inp1 = document.getElementById("montantInput");
    var r2 = document.getElementById("interetRange");
    var inp2 = document.getElementById("interetInput");
    var r3 = document.getElementById("moisRange");
    var inp3 = document.getElementById("moisInput");

    const min = r1.min;
    const max = r1.max;
    var val = r1.value;

    const min2 = r2.min;
    const max2 = r2.max;
    var val2 = r2.value;

    const min3 = r3.min;
    const max3 = r3.max;
    var val3 = r3.value;

    r1.style.backgroundSize = (val - min) * 100 / (max - min) + '% 100%';
    r2.style.backgroundSize = (val2 - min2) * 100 / (max2 - min2) + '% 100%';
    r3.style.backgroundSize = (val3 - min3) * 100 / (max3 - min3) + '% 100%';



    r1.oninput = function() {
        val = r1.value;
        inp1.value = this.value;
        r1.style.backgroundSize = (val - min) * 100 / (max - min) + '% 100%';
    }
    r2.oninput = function() {
        val2 = r2.value;
        inp2.value = this.value;
        r2.style.backgroundSize = (val2 - min2) * 100 / (max2 - min2) + '% 100%';

    }
    r3.oninput = function() {
        val3 = r3.value;
        inp3.value = this.value;
        r3.style.backgroundSize = (val3 - min3) * 100 / (max3 - min3) + '% 100%';

    }
</script>
</body>
</html>
