<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="hotel_management.admin_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paradise Dashboard</title>
    <link rel="stylesheet" href="css/style.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
    <style>
        .s1 {
            background-color: #ff5722 !important;
        }

        .logo {
            background-image: url("images/logo-1.png");
            background-size: cover;
            background-color: black;
            border-radius: 50%;
        }

        #i-1 i {
            position: relative;
            left: 30px;
        }

        /*main-content-1-css*/
        /*sec-101*/
        .sidebar {
            width: 340px !important;
        }

        .sec-101 {
            display: flex;
            text-align: center;
            justify-content: space-evenly;
            margin-top: 30px;
        }

        .sec-101-part {
            border: 1px solid transparent;
            background-color: white;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .1), 0 8px 16px rgba(0, 0, 0, .1);
        }

            .sec-101-part i {
                font-size: 60px;
                padding-bottom: 10px;
            }

            .sec-101-part div {
                font-size: 25px;
                padding-bottom: 10px;
                font-weight: 600;
            }

            .sec-101-part p {
                opacity: 0.5;
                font-size: 15px;
            }

        /*sec-102*/
        .sec-102 {
            display: flex;
            text-align: center;
            justify-content: space-evenly;
            margin-top: 30px;
        }

        .sec-102-part {
            border: 1px solid transparent;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .1), 0 8px 16px rgba(0, 0, 0, .1);
        }

        .sec-102-bottom {
            padding: 20px 10px 15px;
            display: flex;
            justify-content: space-around;
        }

        .sec-102-part i {
            font-size: 40px;
            padding-bottom: 10px;
            color: white;
            background-color: indianred;
            padding: 20px 90px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .sec-102-bottom-part div {
            font-size: 18px;
            padding-bottom: 5px;
            font-weight: 600;
        }

        .sec-102-bottom-part p {
            opacity: 0.5;
            font-size: 15px;
        }
        #btnconfirm{
            padding: 8px 35px;
            opacity: .6;
            color: #fff;
            font-weight: 500;
            font-size: 14px;
            line-height: 2.43;
            background-color: transparent;
        }
        #btnconfirm:hover{
            color:white;
            opacity:1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-flex">
            <!-- ! Sidebar -->
            <aside class="sidebar s1">
                <div class="sidebar-start">
                    <div class="sidebar-head">
                        <a href="/" class="logo-wrapper" title="Home">
                            <span class="sr-only">Home</span>
                            <span class="icon logo" aria-hidden="true"></span>
                            <div class="logo-text">
                                <span class="logo-title">Paradise</span>
                                <span class="logo-subtitle">Hotel</span>
                            </div>

                        </a>
                        <button class="sidebar-toggle transparent-btn" title="Menu" type="button">
                            <span class="sr-only">Toggle menu</span>
                            <span class="icon menu-toggle" aria-hidden="true"></span>
                        </button>
                    </div>
                    <div class="sidebar-body">
                        <ul class="sidebar-body-menu">
                            <li>
                                <a class="active" href="admin_dashboard.aspx"><span class="icon home" aria-hidden="true"></span>Dashboard</a>
                            </li>

                            <li>
                                <a href="customer_details.aspx">
                                    <span class="icon message" aria-hidden="true"></span>
                                    Customer Details
                                </a>
                                <span class="msg-counter">7</span>
                            </li>
                            <li>
                                <a href="add_customer.aspx">
                                    <span class="icon message" aria-hidden="true"></span>
                                    Add Customer
                                </a>
                            </li>
                            <li>
                                <a href="comments.aspx">
                                    <span class="icon message" aria-hidden="true"></span>
                                    Comments Section
                                </a>
                            </li>
                            <li>
                                <a href="admin_form_details.aspx">
                                    <span class="icon message" aria-hidden="true"></span>
                                    Your Details
                                </a>
                            </li>
                            <li>
                                <%--                               <asp:Button ID="btnconfirm" runat="server" Text="Log Out"  
OnClientClick =" return confirm_meth()" Width="160px" />--%>
                                <button id="btnconfirm" type="button" onclick="myFunction()">Log Out</button>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="sidebar-footer">
                    <a href="##" class="sidebar-user">
                        <span class="sidebar-user-img">
                            <picture>
                                <%--                            <source srcset="./img/avatar/avatar-illustrated-01.webp" type="image/webp"><img
                                src="./img/avatar/avatar-illustrated-01.png" alt="User name">--%>
                            </picture>
                        </span>
                        <div class="sidebar-user-info">
                            <span class="sidebar-user__title">Preet</span>
                            <span class="sidebar-user__subtitle">manager</span>
                        </div>
                    </a>
                </div>
            </aside>
            <div class="main-wrapper">
                <!-- ! Main nav -->
                <nav class="main-nav--bg">
                    <div class="container main-nav">
                        <div class="main-nav-start" id="i-1">
                            <div class="search-wrapper">
                                <i class="fa fa-search" aria-hidden="true"></i>
                                <input type="text" placeholder="Enter keywords ..." />
                            </div>
                        </div>
                        <div class="main-nav-end">
                            <button class="sidebar-toggle transparent-btn" title="Menu" type="button">
                                <span class="sr-only">Toggle menu</span>
                                <span class="icon menu-toggle--gray" aria-hidden="true"></span>
                            </button>


                            <div class="nav-user-wrapper">
                                <button href="##" class="nav-user-btn dropdown-btn" title="My profile" type="button">
                                    <span class="sr-only">My profile</span>
                                    <%--  <span class="nav-user-img">
                                    <picture>
                                        <source srcset="./img/avatar/avatar-illustrated-02.webp" type="image/webp"><img
                                            src="./img/avatar/avatar-illustrated-02.png" alt="User name">
                                    </picture>
                                </span>--%>
                                </button>
                            </div>
                        </div>
                    </div>
                </nav>

                <!-- main-content-1-start -->
                <div class="sec-content">
                    <div class="sec-101">
                        <div class="sec-101-part">
                            <i class="fa fa-home" aria-hidden="true" style="color: orange;"></i>
                            <div>7</div>
                            <p>Total Room Book</p>
                        </div>
                        <div class="sec-101-part">
                            <i class="fa fa-user" aria-hidden="true" style="color: dodgerblue;"></i>
                            <div>50</div>
                            <p>Total User</p>
                        </div>
                        <div class="sec-101-part">
                            <i class="fa fa-home" aria-hidden="true" style="color: green;"></i>
                            <div>5</div>
                            <p>Total Room Left</p>
                        </div>
                        <div class="sec-101-part">
                            <i class="fa fa-commenting" aria-hidden="true" style="color: deeppink;"></i>
                            <div>10</div>
                            <p>Total Comments</p>
                        </div>
                    </div>

                    <div class="sec-102">
                        <div class="sec-102-part">
                            <i class="fa fa-facebook" aria-hidden="true" style="padding: 20px 100px 20px 90px; background-color: #3b5998;"></i>
                            <div class="sec-102-bottom">
                                <div class="sec-102-bottom-part">
                                    <div>35k</div>
                                    <p>Friends</p>
                                </div>
                                <div class="sec-102-bottom-part">
                                    <div>128</div>
                                    <p>Feeds</p>
                                </div>
                            </div>
                        </div>
                        <div class="sec-102-part">
                            <i class="fa fa-twitter" aria-hidden="true" style="background-color: #1DA1F2;"></i>
                            <div class="sec-102-bottom">
                                <div class="sec-102-bottom-part">
                                    <div>35k</div>
                                    <p>Followers</p>
                                </div>
                                <div class="sec-102-bottom-part">
                                    <div>128</div>
                                    <p>Tweets</p>
                                </div>
                            </div>
                        </div>
                        <div class="sec-102-part">
                            <i class="fa fa-linkedin" aria-hidden="true" style="background-color: #0A66C2;"></i>
                            <div class="sec-102-bottom">
                                <div class="sec-102-bottom-part">
                                    <div>350+</div>
                                    <p>Contacts</p>
                                </div>
                                <div class="sec-102-bottom-part">
                                    <div>128</div>
                                    <p>Feeds</p>
                                </div>
                            </div>
                        </div>
                        <div class="sec-102-part">
                            <i class="fa fa-google" aria-hidden="true"></i>
                            <div class="sec-102-bottom">
                                <div class="sec-102-bottom-part">
                                    <div>35k</div>
                                    <p>Followers</p>
                                </div>
                                <div class="sec-102-bottom-part">
                                    <div>128</div>
                                    <p>Cricles</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- main-content-1-end -->

            </div>
        </div>
    </form>
    <script src="js/script.js"></script>
     <script>  
         function myFunction() {
             if (confirm("Do you want to log out") == true) {
                 window.location.assign("logout.aspx");
             }
             else {
                 window.location.assign("admin_dashboard.aspx");
             }
         }
     </script>
</body>
</html>
