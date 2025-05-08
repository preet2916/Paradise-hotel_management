<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="hotel_management.index" %>

<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <!-- font-awesome 4.7.0 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
        integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="images/favicon.ico" />

    <title>Paradise</title>
    <style>
        /*preloader*/
        #preloader {
            background: white url('https://wpamelia.com/wp-content/uploads/2018/11/ezgif-2-6d0b072c3d3f.gif') no-repeat center center;
            background-size: 20%;
            height: 100vh;
            width: 100%;
            position: fixed;
            z-index: 100;
        }

        /* navbar */
        .BgColour {
            color: black;
            transition: all 2s;
            background-color: black;
            border-bottom: 1px solid black;
        }

        @media (min-width:992px) {
            .nav-ul {
                margin-left: auto;
            }

            .c-1 {
                padding: 0 100px;
            }

            .nav-item a {
                padding: 8px 25px;
                margin: 0 8px;
            }

                .nav-item a:hover {
                    background-color: #ff5722;
                }

            .dropdown-ul a {
                margin: 0;
            }
        }

        @media (max-width:992px) {
            .nav-1 {
                background-color: black !important;
            }
        }

        .nav-1 a {
            color: white !important;
        }

        .nav-1 i {
            color: white;
        }

        .dropdown-ul {
            background-color: #ff5722 !important;
        }

            .dropdown-ul li a:hover {
                color: black !important;
            }

        /* section-2 */
        .sec-2 {
            background-image: url("https://themewagon.github.io/luxe/images/slider2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            background-position: center;
            position: relative;
        }

            .sec-2::after {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                content: '';
                background: rgba(0, 0, 0, 0.4);
                z-index: 1;
            }

            .sec-2 .sec-2-main {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
                z-index: 2;
            }

            .sec-2 p span {
                border-top: 2px solid rgba(255, 255, 255, 0.3);
                border-bottom: 2px solid rgba(255, 255, 255, 0.3);
            }

            .sec-2 p {
                color: rgba(255, 255, 255, 0.8);
                font-size: 10px;
                font-size: 20px;
                font-weight: 600;
                letter-spacing: 10px;
            }

            .sec-2 h1 {
                color: white;
                margin-top: 35px;
                font-size: 45px;
                letter-spacing: 2px;
                font-weight: 400;
            }

        .sec-2-main a input {
            background-color: #ff5722;
            font-size: 20px;
            border-radius: 30px;
            border: 1px solid transparent;
            color: white;
            padding: 10px 25px;
            font-weight: 600;
            margin-top: 20px;
        }

            .sec-2-main a input:hover {
                background-color: #3c4146;
            }

        .sec-2-box {
            position: absolute;
            right: 15%;
            bottom: 1.25rem;
            left: 15%;
            color: white;
            text-align: center;
            z-index: 2;
            background-color: #ff5722;
        }

            .sec-2-box label {
                margin: 0 10px;
            }

        @media (max-width:768px) {
            .sec-2 h1 {
                margin-top: 10px !important;
                font-size: 35px;
            }

            .sec-2-main a input {
                margin-top: 10px !important;
                padding: 5px 15px;
            }

            .sec-2 p {
                font-size: 15px;
            }
        }

        .sec-2-col {
            background-color: #3c4146;
            padding: 23px 16px;
        }

            .sec-2-col a {
                color: white;
                text-decoration: none;
            }

        .sec-2-box .col-main {
            padding-top: 1.25rem;
            padding-bottom: 1.25rem;
        }

        .sec-2-col a i {
            float: right;
            padding-top: 4px;
            color: #FF5722;
        }

        .sec-2-col a:hover {
            color: #FF5722;
        }

        @media (min-width:992px) {
            .sec-2-box input {
                width: 75%;
            }
        }

        @media (max-width:992px) {
            .col-select {
                padding-top: 20px !important;
            }

            .sec-2-box .col-main {
                padding: 5px 0;
            }

            .sec-2-col {
                padding: 15px 16px;
            }

            .sec-2-col {
                border-bottom-right-radius: 20px;
                border-bottom-left-radius: 20px;
            }

            .sec-2-box {
                border-radius: 20px;
            }
        }


        /*section-3*/
        .sec-3 {
            margin-top: 70px;
            margin-bottom: 70px;
        }

        @media (min-width : 1200px) {
            .sec-3 p {
                font-size: 20px;
            }

            .sec-3 h1 {
                font-size: 50px;
            }
        }


        /*section-4*/
        .sec-4 {
            background-color: #e6e6e6;
            padding-top: 70px;
            padding-bottom: 70px;
        }

            .sec-4 img {
                height: 350px;
            }

        .carousel-indicators button {
            border-radius: 50%;
            height: 12px !important;
            width: 13px !important;
        }

        i.fa.fa-bed {
            padding-right: 5px;
        }

        i.fa.fa-plus-square-o {
            padding: 0 5px 0px 20px;
        }

        .sec-4 .card-body {
            padding-top: 35px;
            padding-bottom: 30px;
        }

        .sec-4 a input {
            background-color: #ff5722;
            font-size: 15px;
            border-radius: 30px;
            border: 1px solid transparent;
            color: white;
            padding: 10px 25px;
            font-weight: 600;
        }

        /* section-5 */
        .sec-5 {
            padding-top: 70px;
            padding-bottom: 70px;
        }

        .sec-5-row {
            padding-top: 40px;
        }

        @media (max-width:992px) {
            .sec-5-input {
                margin-top: 22px;
            }
        }

        @media (max-width:576px) {
            .sec-5 iframe {
                height: 350px;
            }
        }

        .sec-5 button {
            border: 1px solid transparent;
            width: 15%;
            height: 41px;
            border-radius: 5px;
        }

        /* section-6 */
        .sec-6 .col-12 i {
            margin: 0 5px;
            padding: 9px 10px;
            background-color: white;
            border-radius: 5px;
            color: black;
        }

        .sec-6 {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #e6e6e6;
        }
    </style>
</head>

<body>
    <!-- preloader -->
    <div id="preloader"></div>

    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top nav-1" id="navbar">
        <div class="container c-1">
            <a class="navbar-brand" href="#">Paradise</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0 nav-ul">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">Book Room
                        </a>
                        <ul class="dropdown-menu dropdown-ul" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#economy">Economy</a></li>
                            <li><a class="dropdown-item" href="#standard">Standard</a></li>
                            <li><a class="dropdown-item" href="#deluxe">Deluxe</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="user_login.aspx">Log in</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- section-2 -->
    <div class="sec-2" id="home">
        <div class="sec-2-main">
            <p><span>PARADISE HOTEL</span></p>
            <h1>Make Your Vacation Comfortable</h1>
            <a href="customer_register.aspx" class="a-button">
                <input type="button" value="Book Now" /></a>
        </div>
        <div class="sec-2-box">
            <div class="row">
                <div class="col-lg-3 col-main col-select">
                    <select id="room" name="room" style="height: 30px;">
                        <option value="-1">Select Room</option>
                        <option value="0">Economy</option>
                        <option value="1">Standard</option>
                        <option value="2">Deluxe</option>
                    </select>
                </div>
                <div class="col-lg-3 col-main">
                    <input type="text" placeholder="Check In" onfocus="(this.type='date')" />
                </div>
                <div class="col-lg-3 col-main">
                    <input type="text" placeholder="Check Out" onfocus="(this.type='date')" />
                </div>
                <div class="col-lg-3">
                    <div class="sec-2-col">
                        <a href="customer_register.aspx">Check Availability <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- section-3 -->
    <div class="sec-3" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h1>About Us</h1>
                    <p style="margin-top: 30px;">
                        Welcome to <b>Paradise Hotel</b>, where luxury meets comfort and
                        hospitality embraces you like a
                        warm
                        embrace from home.
                        Nestled in the heart of Surat, our hotel offers an unparalleled experience,
                        blending contemporary elegance with timeless charm.
                    </p>
                    <p>
                        At <b>Paradise Hotel</b>, we pride ourselves on delivering exceptional service to every guest,
                        ensuring your stay is nothing short of extraordinary. Whether you're traveling for business or
                        pleasure, our dedicated team is committed to making your visit memorable in every way.
                    </p>
                    <p>
                        Come and discover why <b>Paradise Hotel</b> is more than just a place to stay—it's an experience
                        to remember.
                    </p>
                    <p>
                        We can't wait to welcome you.
                    </p>
                    <p></p>
                </div>
                <div class="col-lg-6">
                    <img src="images/about.jpg" alt="about_us" class="img-fluid" />
                </div>
            </div>
        </div>
    </div>


    <!-- section-4 -->
    <div class="sec-4">
        <div class="container">
            <h1 class="text-center mb-5">Choose your Room</h1>
            <div class="card mb-3" style="max-width: 100%;" id="economy">
                <div class="row g-0">
                    <div class="col-lg-4">
                        <!-- <img src="..." class="img-fluid rounded-start" alt="..."> -->
                        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                    class="active" aria-current="true" aria-label="Slide 1">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                    aria-label="Slide 2">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                    aria-label="Slide 3">
                                </button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://www.lemontreehotels.com/uploads/hotelstay/6638b08375d85Executive%20Suite.jpg"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://www.lemontreehotels.com/uploads/hotelstay/663ca6e63d10fstudio%20room.jpg"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://www.kayak.com/rimg/himg/b9/ff/02/expediav2-319662-2dd7ae-669783.jpg?width=1366&height=768&crop=true"
                                        class="d-block w-100" alt="..." />
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card-body">
                            <h5 class="card-title">Economy Room</h5>
                            <p class="card-text mt-4">
                                Perfect for guests who want to live comfortably , but for less
                                money .
                                The comfort is the same as the standard rooms but the rooms are a bit smaller . The
                                rooms are equipped with one or two single beds.
                            </p>
                            <p class="card-text">
                                <small class="text-muted"><i class="fa fa-bed" aria-hidden="true"></i>
                                    Adults: 2 <i class="fa fa-plus-square-o" aria-hidden="true"></i>Size: 35ft²</small>
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="customer_register.aspx" class="a-button">
                                <input type="button" value="Book Now" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-3" style="max-width: 100%;" id="standard">
                <div class="row g-0">
                    <div class="col-lg-4">
                        <!-- <img src="..." class="img-fluid rounded-start" alt="..."> -->
                        <div id="carouselExampleIndicators_two" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators_two"
                                    data-bs-slide-to="0" class="active" aria-current="true"
                                    aria-label="Slide 1">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators_two"
                                    data-bs-slide-to="1" aria-label="Slide 2">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators_two"
                                    data-bs-slide-to="2" aria-label="Slide 3">
                                </button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://kiliwonders.com/images/room/room_standard.jpg"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://kiliwonders.com/images/room/room_standard_1.jpg"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://kiliwonders.com/images/room/room_grand.jpg" class="d-block w-100"
                                        alt="..." />
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleIndicators_two" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleIndicators_two" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card-body">
                            <h5 class="card-title">Standard Room</h5>
                            <p class="card-text mt-4">
                                A rectangular space that usually has a double or queen bed, a
                                private
                                bathroom, a desk, and an armchair or sofa. Standard rooms can vary in size and
                                amenities, but they usually include basic amenities such as a TV, a desk, and Wi-Fi
                            </p>
                            <p class="card-text">
                                <small class="text-muted"><i class="fa fa-bed" aria-hidden="true"></i>
                                    Adults: 3 <i class="fa fa-plus-square-o" aria-hidden="true"></i>Size: 50ft²</small>
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="customer_register.aspx" class="a-button">
                                <input type="button" value="Book Now" /></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mb-3" style="max-width: 100%;" id="deluxe">
                <div class="row g-0">
                    <div class="col-lg-4">
                        <!-- <img src="..." class="img-fluid rounded-start" alt="..."> -->
                        <div id="carouselExampleIndicators_three" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleIndicators_three"
                                    data-bs-slide-to="0" class="active" aria-current="true"
                                    aria-label="Slide 1">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators_three"
                                    data-bs-slide-to="1" aria-label="Slide 2">
                                </button>
                                <button type="button" data-bs-target="#carouselExampleIndicators_three"
                                    data-bs-slide-to="2" aria-label="Slide 3">
                                </button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/232257205.jpg?k=637b5354b0b0dbf61e45c708064951e9a614082cde25341f08bfbd43a3b0d0b4&o=&hp=1"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://images.trvl-media.com/lodging/4000000/3860000/3851700/3851663/319319bf.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium"
                                        class="d-block w-100" alt="..." />
                                </div>
                                <div class="carousel-item">
                                    <img src="https://cdn.businesstraveller.com/wp-content/uploads/fly-images/960512/leela-916x516.jpg"
                                        class="d-block w-100" alt="..." />
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                data-bs-target="#carouselExampleIndicators_three" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                data-bs-target="#carouselExampleIndicators_three" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card-body">
                            <h5 class="card-title">Deluxe Room</h5>
                            <p class="card-text mt-4">
                                They are typically larger and more luxurious than standard rooms.
                                They
                                often have high-quality bedding, plush furniture, and upscale decor. High-tech comforts
                                such as high speed Wi-Fi access, TV, AC, Electric Kettle, and more facilities.
                            </p>
                            <p class="card-text">
                                <small class="text-muted"><i class="fa fa-bed" aria-hidden="true"></i>
                                    Adults: 5 <i class="fa fa-plus-square-o" aria-hidden="true"></i>Size: 80ft²</small>
                            </p>
                        </div>
                        <div class="card-body">
                            <a href="customer_register.aspx" class="a-button">
                                <input type="button" value="Book Now" /></a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- section-5 -->
    <div class="sec-5" id="contact">
        <div class="container">
            <h1 class="text-center">Contact Us</h1>
            <div class="row sec-5-row">
                <div class="col-lg-6">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i>Bandra, Mumbai</p>
                    <p><i class="fa fa-phone" aria-hidden="true"></i>+918866886688</p>
                    <p><i class="fa fa-envelope" aria-hidden="true"></i>paradisehotel@gmail.com</p>
                    <form id="form1" runat="server">

                        <div class="row mt-4">
                            <div class="col-lg-6 form-group">

                                <asp:TextBox ID="txtname" runat="server" placeholder="Name" class="form-control"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="* please enter your name" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>--%>
                            </div>
                            <div class="col-lg-6 form-group">

                                <asp:TextBox ID="txtemail" runat="server" TextMode="Email" class="form-control sec-5-input" placeholder="Email"></asp:TextBox>
                                <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* email not in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val"></asp:RegularExpressionValidator>--%>
                            </div>
                            <div class="col-lg-12 mt-4">

                                <asp:TextBox ID="Txtcomment" runat="server" TextMode="MultiLine" class="form-control" Rows="5"></asp:TextBox>
                                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtcomment" ErrorMessage="* comment" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <asp:Button ID="btpost" runat="server" Text="POST" OnClick="btpost_Click" class="float-left mt-4 mb-4" />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <iframe class="w-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15084.84212221855!2d72.8296543!3d19.054479049999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8e123f8d27b%3A0x437996b49a236a78!2sBandra%20West%2C%20Mumbai%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1708161225884!5m2!1sen!2sin"
                        height="450" style="border: 0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>


    <!-- section-6 -->
    <div class="sec-6 text-center">
        <div class="container">
            <a href="#home" style="color: #ff5722;"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
            <div class="row mt-3">
                <div class="col-12">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                </div>
            </div>
        </div>
    </div>

    <script>
        var loader = document.getElementById("preloader");
        window.addEventListener("load", function () {
            loader.style.display = "none";
        });
    </script>
    <script>
        function scrollValue() {
            var navbar = document.getElementById('navbar');
            var scroll = window.scrollY;
            if (scroll < 280) {
                navbar.classList.remove('BgColour');
            } else {
                navbar.classList.add('BgColour');
            }
        }

        window.addEventListener('scroll', scrollValue);
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>
