<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2024-04-06
  Time: 오후 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Drips</title>
    <%--API--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />

    <%--Styles--%>
    <link rel="stylesheet" href="../css/carousel.css">
    <link rel='stylesheet' href='../css/bootstrap/bootstrap.css'>
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/index-page.css">
    <link rel="stylesheet" href="../css/theme.css">
    <link rel="stylesheet" href="../css/roster-page.css">

    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.min.css"
            rel="stylesheet"
    />

    <%--Fonts--%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="../css/fonts.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap">

</head>
<body style="overflow-x: hidden">

<%--Nav--%>
<nav class="navbar navbar-expand-lg shadow sticky-top ">
    <div class="container-fluid">
        <a class="navbar-brand" href="./index.jsp">
            <img src="../images/logo.png" alt="Drips" width="64" height="60">
        </a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbar-content">
            <div class="hamburger-toggle">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </button>
        <div class="collapse navbar-collapse" id="navbar-content">
            <ul class="navbar-nav nav-underline mr-auto mb-2 mb-lg-0 ">
                <li class="nav-item dropdown dropdown-mega position-static">
                    <a class="nav-link dropdown-toggle" href="" data-bs-toggle="dropdown"
                       data-bs-auto-close="outside">Roasters</a>
                    <div class="dropdown-menu shadow">
                        <div class="mega-content px-4">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <div class="card">
                                            <img src="../images/lowkey/logo.jpg"
                                                 class="img-fluid rounded-top " alt="image">
                                            <div class="card-body">
                                                <figure>
                                                    <blockquote class="blockquote text-center py-2">
                                                        <p>lowkey</p>
                                                    </blockquote>
                                                    <figcaption
                                                            class="blockquote-footer text-center">
                                                        서울특별시 성동구 연무장3길 6 <br>
                                                        <a href="lowkey.jsp"
                                                           class="stretched-link"></a>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <div class="card">
                                            <img src="../images/pastel/logo.jpg"
                                                 class="img-fluid rounded-top" alt="image">
                                            <div class="card-body">
                                                <figure>
                                                    <blockquote class="blockquote text-center py-2">
                                                        <p>Pastel Coffee Works</p>
                                                    </blockquote>
                                                    <figcaption
                                                            class="blockquote-footer text-center">
                                                        서울특별시 마포구 성지길 58 1층
                                                        <a href="pastelCoffeeWorks.jsp"
                                                           class="stretched-link"></a>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <div class="card">
                                            <img src="../images/peer/logo.jpg"
                                                 class="img-fluid rounded-top" alt="image">
                                            <div class="card-body">
                                                <figure>
                                                    <blockquote class="blockquote text-center py-2">
                                                        <p>Peer Coffee</p>
                                                    </blockquote>
                                                    <figcaption
                                                            class="blockquote-footer text-center">
                                                        서울특별시 성동구 연무장3길 6
                                                        <a href="peerCoffee.jsp"
                                                           class="stretched-link"></a>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-3 py-4">
                                        <div class="card">
                                            <img src="../images/heureum/logo.jpg"
                                                 class="img-fluid rounded-top" alt="image">
                                            <div class="card-body">
                                                <figure>
                                                    <blockquote class="blockquote text-center py-2">
                                                        <p>커피흐름</p>
                                                    </blockquote>
                                                    <figcaption
                                                            class="blockquote-footer text-center">
                                                        경기도 수원시 영통구 하동 975-2
                                                        <a href="coffeeHeureum.jsp"
                                                           class="stretched-link"></a>
                                                    </figcaption>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                       data-bs-auto-close="outside">Multilevel</a>
                    <ul class="dropdown-menu shadow">
                        <li><a class="dropdown-item" href="#">Gallery</a></li>
                        <li><a class="dropdown-item" href="blog.html">Blog</a></li>
                        <li class="dropstart">
                            <a href="#" class="dropdown-item dropdown-toggle"
                               data-bs-toggle="dropdown">Submenu
                                Left</a>
                            <ul class="dropdown-menu shadow">
                                <li><a class="dropdown-item" href=""> Third level 1</a></li>
                                <li><a class="dropdown-item" href=""> Third level 2</a></li>
                                <li><a class="dropdown-item" href=""> Third level 3</a></li>
                                <li><a class="dropdown-item" href=""> Third level 4</a></li>
                                <li><a class="dropdown-item" href=""> Third level 5</a></li>
                            </ul>
                        </li>
                        <li class="dropend">
                            <a href="#" class="dropdown-item dropdown-toggle"
                               data-bs-toggle="dropdown"
                               data-bs-auto-close="outside">Submenu Right</a>
                            <ul class="dropdown-menu shadow">
                                <li><a class="dropdown-item" href=""> Second level 1</a></li>
                                <li><a class="dropdown-item" href=""> Second level 2</a></li>
                                <li><a class="dropdown-item" href=""> Second level 3</a></li>
                                <li class="dropend">
                                    <a href="#" class="dropdown-item dropdown-toggle"
                                       data-bs-toggle="dropdown"
                                       data-bs-auto-close="outside">Let's go deeper!</a>
                                    <ul class="dropdown-menu dropdown-submenu shadow">
                                        <li><a class="dropdown-item" href=""> Third level 1</a></li>
                                        <li><a class="dropdown-item" href=""> Third level 2</a></li>
                                        <li><a class="dropdown-item" href=""> Third level 3</a></li>
                                        <li><a class="dropdown-item" href=""> Third level 4</a></li>
                                        <li class="dropend">
                                            <a href="#" class="dropdown-item dropdown-toggle"
                                               data-bs-toggle="dropdown">Still
                                                don't have enough? Go much deeper!</a>
                                            <ul class="dropdown-menu dropdown-submenu shadow">
                                                <li><a class="dropdown-item" href=""> Third level
                                                    1</a></li>
                                                <li><a class="dropdown-item" href=""> Third level
                                                    2</a></li>
                                                <li><a class="dropdown-item" href=""> Third level
                                                    3</a></li>
                                                <li><a class="dropdown-item" href=""> Third level
                                                    4</a></li>
                                                <li><a class="dropdown-item" href=""> Third level
                                                    5</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href=""> Third level 5</a></li>
                            </ul>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown dropdown-mega position-static">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                       data-bs-auto-close="outside">Megamenu</a>
                    <div class="dropdown-menu shadow">
                        <div class="mega-content px-4">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <h5>Pages</h5>
                                        <div class="list-group">
                                            <a class="list-group-item" href="#">Accomodations</a>
                                            <a class="list-group-item" href="#">Terms &
                                                Conditions</a>
                                            <a class="list-group-item" href="#">Privacy</a>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <h5>Card</h5>
                                        <div class="card">
                                            <img src="https://via.placeholder.com/320x180"
                                                 class="img-fluid" alt="image">
                                            <div class="card-body">
                                                <p class="card-text">Some quick example text to
                                                    build on the card title and
                                                    make up the bulk of the card's content.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <h5>Lot of Pages</h5>
                                        <p>Lorem ipsum dolo sit achmet muhamed borlan de irtka.
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-3 py-4">
                                        <h5>Damn, so many</h5>
                                        <div class="list-group">
                                            <a class="list-group-item" href="#">Accomodations</a>
                                            <a class="list-group-item" href="#">Terms &
                                                Conditions</a>
                                            <a class="list-group-item" href="#">Privacy</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown dropdown-mega position-static">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                       data-bs-auto-close="outside">Megamenu</a>
                    <div class="dropdown-menu shadow">
                        <div class="mega-content px-4">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <h5>Pages</h5>
                                        <div class="list-group">
                                            <a class="list-group-item" href="#">Accomodations</a>
                                            <a class="list-group-item" href="#">Terms &
                                                Conditions</a>
                                            <a class="list-group-item" href="#">Privacy</a>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <div class="card">
                                            <img src="https://via.placeholder.com/320x180"
                                                 class="img-fluid" alt="image">
                                            <div class="card-body">
                                                <p class="card-text">Some quick example text to
                                                    build on the card title and
                                                    make up the bulk of the card's content.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <h5>Lot of Pages</h5>
                                        <p>Lorem ipsum dolo sit achmet muhamed borlan de irtka.
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-3 py-4">
                                        <h5>Damn, so many</h5>
                                        <div class="list-group">
                                            <a class="list-group-item" href="#">Accomodations</a>
                                            <a class="list-group-item" href="#">Terms &
                                                Conditions</a>
                                            <a class="list-group-item" href="#">Privacy</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav ms-auto">
                <li class="nav-theme">
                    <a class="nav-link icons" href="#" tabindex="-1" data-bs-toggle-theme="true"
                       aria-disabled="true">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                             fill="currentColor" class="bi bi-circle-half" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 0 8 1zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16"/>
                        </svg>
                    </a>
                </li>
                <li class="nav-user">
                    <a class="nav-link icons" href="login.jsp" tabindex="-1"
                       data-bs-toggle-theme="true"
                       data-bs-toggle="tooltip" data-bs-placement="bottom"
                       data-bs-title="Login"
                       aria-disabled="true">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                             fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                            <path fill-rule="evenodd"
                                  d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                        </svg>
                    </a>
                </li>
                <li class="nav-cart">
                    <a class="nav-link icons" href="#" tabindex="-1" data-bs-toggle-theme="true"
                       aria-disabled="true">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                             fill="currentColor" class="bi bi-bag-fill" viewBox="0 0 16 16">
                            <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1m3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4z"/>
                        </svg>
                    </a>
                </li>
            </ul>

        </div>
    </div>
</nav>
<%--Nav--%>


<div class="bg-image" style="background-image: url('../images/peer/03.jpeg'); height: 50vh;">
    <div class="mask" style="background: linear-gradient(
      to bottom,
      hsla(0, 0%, 0%, 0) 0%,
      hsla(0, 0%, 0%, 1)
  );">
        <p class="d-flex pt-4 mt-5 ps-4 ms-5 text-white">
            Peer Coffee Roasters
        </p>
        <h1 class="d-flex ps-4 ms-5 text-white" id="title-bold">
            피어 커피 로스터스
        </h1>
        <footer class="pt-3 ps-4 ms-5 text-white blockquote-footer text-opacity-50">Established 2015
            – Seoul.
        </footer>
        <p class="d-flex pt-4 ps-4 ms-5 text-white w-50">
            피어 커피 로스터스는 Barista – Roaster – Designer가 함께 모여 저희 생각과 문화를 또 다른 피어들과 함께 공유하고 만들고 실험하는 공간
            입니다.
            단맛과 클린컵이 뛰어난 커피는 한잔을 더 마셔도 부담스럽지 않으며 피어커피 로스터스가 지향하는 "편하게 즐기는 스페셜티커피" 라는
            목표에 다가갈수 있는 방법이라고 생각하고 있습니다.
        </p>
    </div>
</div>
<%--Header--%>
<%--Products--%>
<div>
    <div class="row w-100">
        <div class="col" style="width: 220px">
             test
        </div>
        <div class="col-10">
            <div class="row row-cols-auto g-5  mt-5">
                <div class="col pd-col">
                    <div class="card roaster-card-img bg-dark text-black" data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card roaster-card-img bg-dark text-black" data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card roaster-card-img bg-dark text-black" data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card roaster-card-img bg-dark text-black" data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card roaster-card-img bg-dark text-black" data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card roaster-card-img bg-dark text-black " data-mdb-ripple-init data-mdb-ripple-color="#525740">
                        <img src="../images/beans.png" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">Last updated 3 mins ago</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--Products--%>
<%--Footer--%>
<div class="container-fluid">
    <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
        <div class="col mb-3">
            <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32">
                    <use xlink:href="#bootstrap"></use>
                </svg>
            </a>
            <p class="text-muted">© 2023 SHIN YUN SEOP All rights reserve</p>
        </div>

        <div class="col mb-3">

        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="content/home.jsp"
                                             class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="content/features.jsp"
                                             class="nav-link p-0 text-muted">Features</a>
                </li>
                <li class="nav-item mb-2"><a href="content/pricing.jsp"
                                             class="nav-link p-0 text-muted">Pricing</a>
                </li>
                <li class="nav-item mb-2"><a href="content/faqs.jsp"
                                             class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="content/about.jsp"
                                             class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="content/home.jsp"
                                             class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="content/features.jsp"
                                             class="nav-link p-0 text-muted">Features</a>
                </li>
                <li class="nav-item mb-2"><a href="content/pricing.jsp"
                                             class="nav-link p-0 text-muted">Pricing</a>
                </li>
                <li class="nav-item mb-2"><a href="content/faqs.jsp"
                                             class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="content/about.jsp"
                                             class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="content/home.jsp"
                                             class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="content/features.jsp"
                                             class="nav-link p-0 text-muted">Features</a>
                </li>
                <li class="nav-item mb-2"><a href="content/pricing.jsp"
                                             class="nav-link p-0 text-muted">Pricing</a>
                </li>
                <li class="nav-item mb-2"><a href="content/faqs.jsp"
                                             class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="content/about.jsp"
                                             class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>
    </footer>
</div>
<%--Footer--%>
<!-- Script -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src='../js/bootstrap.bundle.min.js'></script>
<script src="../js/day-night.js"></script>
<script src="../js/navbar.js"></script>
<script src="../js/swiper.js"></script>

<!-- MDB -->
<script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"
></script>
</body>
</html>

`