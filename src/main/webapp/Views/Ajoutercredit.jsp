<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 06/03/2023
  Time: 01:49
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tableau de bord</title>



    <link href="../assets/css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

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

    </style>

    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #ff7300">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Simulation Credit <sup>2</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="Dashboard.jsp">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Tableau de bord</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Actions
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Ajouter Credit</span>
            </a>

        </li>

        <!-- Nav Item - Utilities Collapse Menu -->

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

        <!-- Sidebar Message -->


    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <form class="form-inline">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                </form>

                <!-- Topbar Search -->
                <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button" style="background-color: #f48225;border-color: #f48225">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Nav Item - Alerts -->

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=session.getAttribute("Username")%></span>
                            <img class="img-profile rounded-circle"
                                 src="../assets/imgs/undraw_profile.svg">
                        </a>

                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid" style="background-color: #FFFFFF">
                <div style="width: 950px;padding-right: 15px;
padding-left: 15px;
margin-right: auto;
margin-left: auto;border: 1px solid #eee;
background-color: #FFFFFF;
    border-radius: 3px;
    margin-top: 30px;
    margin-bottom: 3%;
    border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25),
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;">
                    <c:set var="mensualite" value="${requestScope.mensualites}" />
                    <c:set var="montant" value="${requestScope.montant}" />
                    <c:set var="taux" value="${requestScope.taux}" />
                    <c:set var="duree" value="${requestScope.duree}" />
                    <c:set var="cout_total" value="${requestScope.cout_total}" />
                    <c:set var="nom" value="${requestScope.nom}"/>
                    <c:set var="descr" value="${requestScope.descr}"/>
         <form method="post" action="AjoutercriditServlet">
                    <div style="float: left;width: 100%;padding: 5px 20px;display: flex;justify-content: space-between">
                        <div style="float: left;width: 40%; padding: 5px 0px 0px 0px;
            margin: 5px 0;
            text-transform: uppercase;
            font-weight: 300;">

                            <div style="margin-top: 15px;margin-bottom: 15px;">
                                <div style="padding: 5px 10px;text-align: left; float: left;">
                                    nom de credit
                                </div>
                                <div style="float: left;width: 300px; text-align: left;">
                                    <input style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="text" name="nom" value="${nom}" class="parent simInput InitialRes" value="" >

                                </div>

                            </div>
                        </div>

                        <div style="float: left;width: 50%; padding: 5px 0px 0px 0px;
             margin: 5px 0;
             text-transform: uppercase;
             font-weight: 300;">

                            <div style="margin-top: 15px;margin-bottom: 15px;">
                                <div style="padding: 5px 10px;text-align: left; float: left;">
                                    Description
                                </div>
                                <div style="float: left;width: 100%; text-align: left;">
                         <textarea style="display: inline-block;
                         border: 1px solid #ff4500;
                         border-radius: 5px;
                         padding: 5px 3px;
                         width: 100%;
                         font-size: 16px;" rows="4" value="${descr}"   name="desc">
                         </textarea>

                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- divat l2asliya-->

                    <div style="width: 100%; float: left; display: flex; justify-content: space-around;padding-bottom: 5%;">


                        <div style="float: left; width: 50%;padding: 20px 30px;">

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
                                        <input style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" value="${montant}" name="montant" class="parent simInput InitialRes" step="5000" min="0" max="5000000" value="0" id="montantInput">
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
                                        <input style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" name="taux" value="${taux}" class="parent simInput InitialRes" step="1" min="0" max="30" value="0" id="interetInput">
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
                                        <input style="display: inline-block;
                        border: 1px solid #ff4500;
                        border-radius: 5px;
                        padding: 5px 3px;
                        width: 80%;
                        height: 37px;
                        font-size: 13px;" type="number" name="duree" value="${duree}" class="parent simInput InitialRes" step="6" min="0" max="1000" value="0" id="moisInput">
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
                                <button type="submit" style="margin-top: 25px;width: 70%;border-color: #fff;border-radius: 5px;background-color: #ff4500;padding: 12px 20px; " id="button1">

                                    <span style="font-size: 20px;color: #fff;">Simulation rapide</span>
                                </button>
                            </div>

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
                                    <span id="mensualite" >${not empty mensualite ? mensualite :'0.00' }</span> DH
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
                                    <span  >${not empty duree ?duree:'0'}</span> Mois
                                </div>
                            </div>
                            <div style="width: 100%; padding: 15px 0px; margin: 10px 0px;display: flex;justify-content: space-between;">
                                <div style="float: left;width: 40%;padding-left: 15px;color: #000000;"><span>COÛT TOTAL DU CRÉDIT</span></div>
                                <div style="float: left;width: 50%;text-align: right;">
                                    <span >${not empty cout_total? cout_total:'0.00'}</span> DH
                                </div>

                            </div>


                        </div>

                    </div>
</form>
                    <div style="text-align: center;">
                        <c:if test="${not empty sucess}">




                                <button onclick="myfunc()" style="margin-top: 50px;width: 300px;border-color: #fff;border-radius: 5px;background-color: #086600;padding: 12px 20px; display: none" id="btn2" >

                                <span style="font-size: 20px;color: #fff;">Sauvgarder</span>
                                </button>

                        </c:if>

                    </div>
                </div>

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright HAKIM&RIDA &copy; Simulation Credit 2023</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
</div>

<script>
    function myfunc() {
        var montant = $('input[name="montant"]').val();
        var nom = $('input[name="nom"]').val();
        var descr = $('input[name="desc"]').val();

        var taux = $('input[name="taux"]').val();
        var duree = $('input[name="duree"]').val();
        var mensualite = $('#mensualite').text();


        $.ajax({
            type: "POST",
            url: "AjouterCreditServlet",
            data: {
                montant: montant1,
                taux: taux1,
                duree: duree1,
                mensualite:mensualite,
                nom:nom,
                descr:descr

            },
            success: function(response){

            },
            error: function(jqXHR, textStatus, errorThrown) {
                // Handle the error
            }
        });
    }




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
