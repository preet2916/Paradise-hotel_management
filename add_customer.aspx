<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_customer.aspx.cs" Inherits="hotel_management.admin_add_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paradise Dashboard</title>
    <link rel="stylesheet" href="css/style.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .sidebar {
            width: 340px !important;
        }

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

        /*main_content css*/
        .container-1 {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 20px;
        }

        .col {
            flex: 1;
            margin-right: 20px;
        }

            .col:last-child {
                margin-right: 0;
            }

        label {
            display: block;
            margin-bottom: 5px;
        }

        .input-11 {
            border: 1px solid #ccc !important;
            border-radius: 4px;
            padding: 8px;
            width: 100%;
            box-sizing: border-box;
        }

        .form-control {
            display: inline-block;
            width: 100%;
            height: calc(1.5em + 0.75rem + 1px);
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .gen-row {
            align-items: center;
        }

        .gen-col {
            display: flex;
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


                <%-- admin_form_details start --%>
                <div class="container-1">
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control input-11" placeholder="First Name "></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control input-11" placeholder="Last Name "></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col">
                            <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control input-11" placeholder="Address" TextMode="MultiLine" Style="width: 573px; height: 88px;"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtstate" runat="server" CssClass="form-control input-11" placeholder="State"></asp:TextBox>

                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtcity" runat="server" CssClass="form-control input-11" placeholder="City"></asp:TextBox>

                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control input-11" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-11" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtphone" runat="server" CssClass="form-control input-11" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtdatein" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:TextBox ID="txtdateout" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:DropDownList ID="Room" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Room_SelectedIndexChanged">
                                <asp:ListItem> -SELECT ROOM TYPE- </asp:ListItem>
                                <asp:ListItem>Economy</asp:ListItem>
                                <asp:ListItem>Standard</asp:ListItem>
                                <asp:ListItem>Deluxe</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:DropDownList ID="member" runat="server">
                            </asp:DropDownList>

                        </div>
                        <div class="col">
                            <asp:DropDownList ID="ddtotalroom" runat="server" AutoPostBack="True">
                                <asp:ListItem> - TOTAL ROOM - </asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <asp:TextBox ID="txtaadharno" runat="server" CssClass="form-control input-11" placeholder="Aadhar No" TextMode="Number"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="submitButton" runat="server" Text="Add Customer" OnClick="submitButton_Click" />
                </div>
                <%-- admin_form_details over --%>
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
             window.location.assign("add_customer.aspx");
         }
     }
     </script>
</body>
</html>
