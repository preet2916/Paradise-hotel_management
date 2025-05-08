<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_dashboard.aspx.cs" Inherits="hotel_management.user_dashboard" %>

<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Bootstrap 5 cdn -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="styles.css" />

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

    <title>User Login</title>
    <style>
        .BgColour {
            color: black;
            transition: all 2s;
            background-color: black;
            border-bottom: 1px solid black;
        }

        .nav-1 a {
            color: white;
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
                    color: white;
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

        .sec-2 {
            background-image: url("https://wallpaperswide.com/download/luxury_hotel-wallpaper-1600x1200.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            background-position: center;
            position: relative;
            background-attachment: fixed;
        }

            .sec-2::after {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                content: '';
                background: rgba(0, 0, 0, 0.6);
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
                font-size: 35px;
                font-weight: 600;
                letter-spacing: 10px;
            }

            .sec-2 h1 {
                color: white;
                margin-top: 35px;
                font-size: 75px;
                letter-spacing: 2px;
                font-weight: 400;
                margin-bottom: 40px;
            }

        .sec-2-main a button {
            background-color: #ff5722;
            font-size: 20px;
            border-radius: 30px;
            border: 1px solid transparent;
            color: white;
            padding: 10px 25px;
            font-weight: 600;
            margin-top: 20px;
        }

            .sec-2-main a button:hover {
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

            .sec-2-main a button {
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

        .sec-3 {
            padding-top: 70px;
            background-color: #f0f2f5;
        }

            .sec-3 .grid_1 {
                display: flex;
                justify-content: center;
            }

        .b-1111 {
            background-color: #ff5722;
            font-size: 15px;
            border-radius: 30px;
            border: 1px solid transparent;
            color: white;
            padding: 2px 20px;
            font-weight: 600;
            margin-top: 6px;
        }

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

        /*   #btnconfirm {
            padding: 8px 35px;
            opacity: .6;
            color: #fff;
            font-weight: 500;
            font-size: 14px;
            line-height: 2.43;
            background-color: transparent;
        }

            #btnconfirm:hover {
                color: white;
                opacity: 1;
            }*/
        .a-111 {
            font-size: 35px;
            font-weight: 600;
            color: white;
            position: relative;
            z-index: 11;
        }

        .sec-4 {
            background-image: url("https://themewagon.github.io/luxe/images/slider2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            background-position: center;
            position: relative;
            font-family: 'Numans', sans-serif;
            background-attachment: fixed;
        }

            .sec-4::after {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                content: '';
                background: rgba(0, 0, 0, 0.4);
                z-index: 1;
            }

        .container-1 {
            position: relative;
            z-index: 11;
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
        <!-- navbar -->
        <div class="navbar-main">
            <nav class="navbar navbar-expand-md nav-1 fixed-top" id="navbar">
                <div class="container c-1">
                    <a class="navbar-brand" href="#">User Dashboard</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#data">Your Data</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#update">Update Data</a>
                            </li>
                            <li class="nav-item">
                                <button id="btnconfirm" type="button" onclick="myFunction()" class="b-1111">Log Out</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="sec-2" id="home">
            <div class="sec-2-main">
                <p><span>PARADISE HOTEL</span></p>
                <h1>Welcome,
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></h1>
                <a href="#data" class="a-button">
                    <button type="button">Click to check your details</button></a>
            </div>
        </div>
        <div class="sec-3 container-fluid pb-5" id="data">
            <h1 class="text-center mb-5">Your Details</h1>
            <div class="grid_1">
                <asp:GridView ID="dgv_user" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgv_user_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </div>
        </div>
        <div class="sec-4" id="update">
            <div class="a-111 pt-5 pb-2 text-center">
                Update Your Data
            </div>
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
             <%--       <div class="col">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-11" placeholder="Email" TextMode="Email"></asp:TextBox>
                    </div>--%>
                    <div class="col">
                        <asp:TextBox ID="txtphone" runat="server" CssClass="form-control input-11" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
           <%--     <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtdatein" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtdateout" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                    </div>
                </div>--%>
               <%-- <div class="row">
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
                </div>--%>
               <%-- <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtaadharno" runat="server" CssClass="form-control input-11" placeholder="Aadhar No" TextMode="Number"></asp:TextBox>
                    </div>
                </div>--%>
                                <asp:Button ID="submitButton" name="update1" runat="server" Text="Update Details" OnClick="update_Click" />
            </div>
        </div>
    </form>
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
    <script>  
        function myFunction() {
            if (confirm("Do you want to log out") == true) {
                window.location.assign("logout.aspx");
            }
            else {
                window.location.assign("user_dashboard.aspx");
            }
        }
    </script>
    <!-- Optional JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>

