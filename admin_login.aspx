<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="hotel_management.admin_login" %>



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

    <title>Admin Login</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Numans');

        body {
            background-image: url("https://themewagon.github.io/luxe/images/slider2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            background-position: center;
            position: relative;
            font-family: 'Numans', sans-serif;
        }

            body::after {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                content: '';
                background: rgba(0, 0, 0, 0.4);
                z-index: 1;
            }

        .container {
            height: 100%;
            align-content: center;
        }

        .sec-p span {
            border-top: 2px solid rgba(255, 255, 255, 0.3);
            border-bottom: 2px solid rgba(255, 255, 255, 0.3);
        }

        .sec-p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 10px;
            padding-top: 9%;
            font-size: 40px;
            font-weight: 600;
            letter-spacing: 10px;
            position: relative;
            z-index: 2;
        }

        .card {
            height: 379px;
            margin-bottom: auto;
            width: 400px;
            /* background-color: rgba(0,0,0,0.5) !important; */
            background-color: #000000b8 !important;
            z-index: 2;
        }

        .social_icon span {
            font-size: 60px;
            margin-left: 10px;
            color: #ff5722;
        }

            .social_icon span:hover {
                color: white;
                cursor: pointer;
            }

        .card-header h3 {
            color: white;
        }

        .social_icon {
            position: absolute;
            right: 20px;
            top: -45px;
        }

        .input-group-prepend span {
            width: 50px;
            background-color: #ff5722;
            color: black;
            border: 0 !important;
        }

        .input-1:focus {
            outline: 0 0 0 0 !important;
            box-shadow: 0 0 0 0 !important;
        }

        .remember {
            color: white;
        }

            .remember input-1 {
                width: 20px;
                height: 20px;
                margin-left: 15px;
                margin-right: 5px;
            }

        .login_btn {
            color: white;
            background-color: #ff5722;
            width: 100px;
        }

            .login_btn:hover {
                color: black;
                background-color: white;
            }

        .links {
            color: white;
        }

            .links a {
                margin-left: 4px;
            }

        .card {
            margin-top: 3%;
        }

        i {
            color: white;
        }

        .sec-1 {
            margin: 20px 0 0 0 !important
        }

        .card-footer a {
            color: white;
        }

        @media (max-width:992px) {
            .card {
                margin-top: 8% !important;
            }
        }

        @media (max-width:370px) {
            .social_icon span {
                font-size: 30px !important;
            }

            .social_icon {
                top: 0px !important;
            }

            .h3,
            h3 {
                font-size: 20px !important;
            }

            .links {
                font-size: 12px !important;
            }

            .card-footer a {
                font-size: 12px !important;
            }

            .card {
                height: 350px !important;
            }

            .login_btn {
                margin-top: 10px !important;
            }

            .card-footer {
                padding: 0 1.25rem 1.75rem 1.25rem !important;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <p class="text-center sec-p"><span>PARADISE HOTEL</span></p>
        <div class="d-flex justify-content-center">
            <div class="card">
                <div class="card-header pt-4">
                    <h3>Admin Login</h3>
                </div>
                <div class="card-body">
                    <form id="form1" runat="server">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            </div>
                            <asp:TextBox ID="txtemail" class="form-control input-1" placeholder="Email" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* email not in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="* please enter your email" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="txtpass" class="form-control input-1" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="* password should be between 8 to 15 digits" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True" ValidationGroup="val"></asp:CustomValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpass" ErrorMessage="* please enter your password" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>
                        <div class="align-items-center remember">
                            <asp:CheckBox ID="CheckBox1" class="input-1" runat="server" />
                            Remember Me
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Login" class="btn float-right login_btn input-1" OnClick="Button1_Click" ValidationGroup="val" />
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex links mb-3" style="justify-content: space-around;">
                        <a href="index.aspx"><i class="fas fa-hand-point-left"></i>Back to home</a>
                        <a href="user_login.aspx">User Login <i class="fas fa-hand-point-right"></i></a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="#">Forgot your password?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
</body>

</html>
