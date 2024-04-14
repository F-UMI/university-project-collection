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
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css">

    <%--Styles--%>
    <link rel="stylesheet" href="../css/carousel.css">
    <link rel='stylesheet' href='../css/bootstrap/bootstrap.css'>
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/index-page.css">
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
<body>
<!-- partial:index.partial.html -->
<!--
(c) 2020-2023 by Simon Köhler
simonkoehler.com
Last Update: August 13 2023 11:48 am, Panama
-->
<%--Nav--%>
<nav class="navbar navbar-expand-lg shadow sticky-top shadow-sm">
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
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
                       data-bs-auto-close="outside">Roasters</a>
                    <div class="dropdown-menu shadow">
                        <div class="mega-content px-4">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-12 col-sm-4 col-md-3 py-4">
                                        <div class="card">
                                            <img src="../images/lowkey_logo.jpg"
                                                 class="img-fluid" alt="image">
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
                                            <img src="../images/pastel_coffee_works_logo.jpg"
                                                 class="img-fluid" alt="image">
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
                                            <img src="../images/peer_coffee_logo.jpg"
                                                 class="img-fluid" alt="image">
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
                                            <img src="../images/coffee_heureum_logo.jpg"
                                                 class="img-fluid" alt="image">
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

<%--로그인 입력 폼을 가운데 위치하게하고 백그라운드 처리하면 될거 같은데 한번 보자고--%>

<!-- Section: Design Block -->
<section class="text-center">
    <!-- Background image -->
    <div class="p-5 bg-image object-cover" style="
        background-image: url('../images/lowkey_swiper.jpg');
        height: 91vh;
        "></div>
    <!-- Background image -->

    <div class="card mx-4 mx-md-5 shadow-5-strong w-50 position-absolute" style="
        top: 15%;
        left: 22.4%;
        background: hsla(0, 0%, 100%, 0.2);
        backdrop-filter: blur(30px);
        ">
        <div class="card-body h-25 py-5 px-md-5">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <h2 class="fw-bold mb-3">- Register -</h2>
                    <div id="stepperForm" class="bs-stepper">
                        <%--Stepper Header--%>
                        <div class="bs-stepper-header" role="tablist">
                            <div class="step" data-target="#user-form">
                                <button type="button" class="step-trigger" role="tab"
                                        id="stepperFormTrigger1" aria-controls="user-form">
                                    <span class="bs-stepper-circle">1</span>
                                    <span class="bs-stepper-label">User</span>
                                </button>
                            </div>
                            <div class="bs-stepper-line"></div>
                            <div class="step" data-target="#address-form">
                                <button type="button" class="step-trigger" role="tab"
                                        id="stepperFormTrigger2" aria-controls="address-form">
                                    <span class="bs-stepper-circle">2</span>
                                    <span class="bs-stepper-label">Address</span>
                                </button>
                            </div>
                            <div class="bs-stepper-line"></div>
                            <div class="step" data-target="#test-form-3">
                                <button type="button" class="step-trigger" role="tab"
                                        id="stepperFormTrigger3" aria-controls="test-form-3">
                                    <span class="bs-stepper-circle">3</span>
                                    <span class="bs-stepper-label">Validate</span>
                                </button>
                            </div>
                        </div>
                        <%--Stepper Header--%>
                        <div class="bs-stepper-content">
                            <%--Stepper Contenet--%>
                            <form class="needs-validation" onSubmit="return false" novalidate>
                                <%--User Input Form--%>
                                <div id="user-form" role="tabpanel" class="bs-stepper-pane fade"
                                     aria-labelledby="stepperFormTrigger1">
                                    <div class="data-mdb-input-init form-outline mb-5"
                                         data-mdb-input-init>
                                        <input type="text" id="inputIdForm" class="form-control"
                                               required/>
                                        <label class="form-label" for="inputIdForm">ID</label>
                                        <div class="invalid-feedback">아이디를 입력해주세요</div>
                                    </div>
                                    <div class="data-mdb-input-init form-outline mb-5"
                                         data-mdb-input-init>
                                        <input type="password" id="inputPasswordForm"
                                               class="form-control" required/>
                                        <label class="form-label"
                                               for="inputPasswordForm">Password</label>
                                        <div class="invalid-feedback">비밀번호를 입력해주세요</div>
                                    </div>
                                    <div class="data-mdb-input-init form-outline mb-5"
                                         data-mdb-input-init>
                                        <input type="password" id="inputPasswordVerifiedForm"
                                               class="form-control" required/>
                                        <label class="form-label" for="inputPasswordVerifiedForm">Password
                                            Verified</label>
                                        <div class="invalid-feedback">동일한 비밀번호를 입력해주세요</div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="data-mdb-input-init form-outline mb-5"
                                                 data-mdb-input-init>
                                                <input type="text" id="inputNameForm"
                                                       class="form-control"
                                                       required/>
                                                <label class="form-label"
                                                       for="inputNameForm">이름</label>
                                                <div class="invalid-feedback">이름을 입력해주세요</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <h6 class="mb-2 pb-1">Gender: </h6>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio"
                                                       name="inlineRadioOptions" id="femaleGender"
                                                       value="option1" checked/>
                                                <label class="form-check-label" for="femaleGender">Female</label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio"
                                                       name="inlineRadioOptions" id="maleGender"
                                                       value="option2"/>
                                                <label class="form-check-label" for="maleGender">Male</label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="data-mdb-input-init form-outline mb-4"
                                         data-mdb-input-init>
                                        <input type="email" id="inputEmailForm"
                                               class="form-control"
                                               required/>
                                        <label class="form-label"
                                               for="inputEmailForm">Email</label>
                                        <div class="invalid-feedback">정확한 이메일을 입력해주세요</div>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check mb-3">
                                        <input class="form-check-input" type="checkbox" value=""
                                               id="allowingSMSReceives"/>
                                        <label class="form-check-label"
                                               for="allowingSMSReceives">
                                            정보/이벤트 메일 수신에 동의합니다. </label>
                                    </div>
                                    <div class="data-mdb-input-init form-outline mb-4"
                                         data-mdb-input-init>
                                        <input type="tel" id="inputPhoneNumberForm"
                                               class="form-control"
                                               required/>
                                        <label class="form-label"
                                               for="inputPhoneNumberForm">Phone</label>
                                        <div class="invalid-feedback">정확한 전화번호를 입력해주세요</div>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="form-check mb-3">
                                        <input class="form-check-input" type="checkbox" value=""
                                               id="allowingEMailReceives"/>
                                        <label class="form-check-label"
                                               for="allowingEMailReceives">
                                            정보/이벤트 SMS 수신에 동의합니다. </label>
                                    </div>
                                    <button class="btn btn-primary btn-next-form">Next</button>
                                </div>
                                <%--User Input Form--%>

                                <%--Address Input Form--%>
                                <div id="address-form" role="tabpanel"
                                     class="bs-stepper-pane fade"
                                     aria-labelledby="stepperFormTrigger2">
                                    <div class="input-group mb-5" style="height: 34px">
                                        <div class="data-mdb-input-init form-outline"
                                             data-mdb-input-init>
                                            <input type="text" id="inputZipCodeForm"
                                                   class="form-control active"
                                                   aria-describedby="button-addon" required/>
                                            <label class="form-label"
                                                   for="inputZipCodeForm">우편번호</label>
                                            <div class="invalid-feedback" style="margin: 0">우편번호를
                                                입력해주세요
                                            </div>
                                        </div>
                                        <button class="btn btn-primary btn-sm col-2"
                                                type="button" id="button-addon" data-mdb-ripple-init
                                                onclick="find_address()"
                                                data-mdb-ripple-color="dark">
                                            <p style="margin-top: -3px">
                                                우편번호 찾기
                                            </p>
                                        </button>
                                    </div>

                                    <div class="data-mdb-input-init form-outline mb-5"
                                         data-mdb-input-init>
                                        <input type="text" id="inputAddressForm"
                                               class="form-control active"
                                               aria-describedby="button-addon" required/>
                                        <label class="form-label"
                                               for="inputAddressForm">주소</label>
                                        <div class="invalid-feedback">주소를 입력해주세요</div>
                                    </div>
                                    <div class="input-group">
                                        <div class="data-mdb-input-init form-outline mb-5"
                                             data-mdb-input-init>
                                            <input type="text" id="inputDetailedAddressForm"
                                                   class="form-control"
                                                   aria-describedby="button-addon" required/>
                                            <label class="form-label"
                                                   for="inputDetailedAddressForm">상세주소</label>
                                            <div class="invalid-feedback" style="margin: 0">상세주소를
                                                입력해주세요
                                            </div>
                                        </div>
                                        <div class="row-cols-10">
                                            <div class="data-mdb-input-init form-outline mb-5"
                                                 data-mdb-input-init>
                                                <input type="text" id="inputExtraAddressForm"
                                                       class="form-control active"
                                                       aria-describedby="button-addon"/>
                                                <label class="form-label"
                                                       for="inputExtraAddressForm">참고항목</label>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-next-form">Next</button>
                                </div>
                                <%--Address Input Form--%>

                                <%--Validate Form--%>
                                <div id="test-form-3" role="tabpanel"
                                     class="bs-stepper-pane fade text-center"
                                     aria-labelledby="stepperFormTrigger3">
                                    <button type="button" class="btn btn-primary mt-5">Submit
                                        <a href="./index.jsp"></a>
                                    </button>
                                </div>
                                <%--Validate Form--%>

                            </form>
                            <%--Stepper Contenet--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section: Design Block -->


<%--Footer--%>
<footer class="text-center text-lg-start bg-body-tertiary text-muted pt-5">
    <!-- Section: Social media -->
    <section
            class="d-flex justify-content-center justify-content-lg-between p-5 border-bottom mt-5">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Get connected with us on social networks:</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
        <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i>Company name
                    </h6>
                    <p>
                        Here you can use rows and columns to organize your footer content. Lorem
                        ipsum
                        dolor sit amet, consectetur adipisicing elit.
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Products
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Angular</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">React</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Vue</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Laravel</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Useful links
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Pricing</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Settings</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Orders</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Help</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                    <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        info@example.com
                    </p>
                    <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2021 Copyright:
        <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>
<%--Footer--%>
<%--Script--%>
<%--API--%>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src='../js/bootstrap.bundle.min.js'></script>
<script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"
></script>
<script
        type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"
></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<%--CUSTOM--%>
<script src="../js/day-night.js"></script>
<script src="../js/swiper.js"></script>
<script src="../js/form-validate.js"></script>
<script src="../js/stepper.js"></script>
<script src="../js/kakao-find-address.js"></script>

</body>
</html>