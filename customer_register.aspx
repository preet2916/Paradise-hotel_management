<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_register.aspx.cs" Inherits="hotel_management.customer_register" %>

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
        @import url('https://fonts.googleapis.com/css?family=Numans');

        body {
            background-image: url("https://themewagon.github.io/luxe/images/slider2.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            height: 1100px;
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
            padding-top: 7%;
            font-size: 40px;
            font-weight: 600;
            letter-spacing: 10px;
            position: relative;
            z-index: 2;
        }

        .container-1 {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: black;
            border: 1px solid black;
            opacity : 0.7;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 20px;
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

        #btnconfirm {
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
            }

        .sec-11 {
            position: relative;
            z-index: 11;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container sec-11">
            <p class="text-center sec-p"><span>PARADISE HOTEL</span></p>
            <div class="container-1">
                <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control input-11" placeholder="First Name "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="* please enter your name" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                        
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control input-11" placeholder="Last Name "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="* please enter your surname" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                                            
                    </div>
                </div>
                <div class="row">

                    <div class="col">
                        <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control input-11" placeholder="Address" TextMode="MultiLine" Style="width: 558px; height: 88px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="* please enter your address" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                                                                
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtstate" runat="server" CssClass="form-control input-11" placeholder="State"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate" ErrorMessage="* please enter your state" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                                                                
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control input-11" placeholder="City"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity" ErrorMessage="* please enter your state" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                                                                
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control input-11" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtpincode" ErrorMessage="* not  a 6 digit pincode" ForeColor="Red" ValidationExpression="^[0-9]{6}$" ValidationGroup="val"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpincode" ErrorMessage="* please enter your pincode" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                    
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-11" placeholder="Email" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* email not in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="val"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="* please enter your email" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                  
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtphone" runat="server" CssClass="form-control input-11" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="* not  a 10 digit number" ForeColor="Red" ValidationExpression="^[0-9]{10}$" ValidationGroup="val"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtphone" ErrorMessage="* please enter your phone number" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>             
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtdatein" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtdatein" ErrorMessage="* please enter your check in date" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                    
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtdateout" runat="server" CssClass="form-control input-11" TextMode="DateTimeLocal"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtdateout" ErrorMessage="* please enter your check out date" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                                        
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Room" ErrorMessage="* please select your state" ForeColor="Red" InitialValue=" -SELECT ROOM TYPE- " ValidationGroup="val"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col">
                        <asp:DropDownList ID="member" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="member" ErrorMessage="* please select your city" ForeColor="Red" InitialValue="---select---" ValidationGroup="val"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddtotalroom" ErrorMessage="* please select your total room" ForeColor="Red" InitialValue=" - TOTAL ROOM - " ValidationGroup="val"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtaadharno" runat="server" CssClass="form-control input-11" placeholder="Aadhar No" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtaadharno" ErrorMessage="* not  a 12 digit number" ForeColor="Red" ValidationExpression="^[0-9]{12}$" ValidationGroup="val"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtaadharno" ErrorMessage="* please enter your aadhar number" ForeColor="Red" ValidationGroup="val"></asp:RequiredFieldValidator>                    
                    </div>
                </div>
<%--                <asp:Button ID="submitButton" runat="server" Text="Add Customer" OnClick="submitButton_Click" />--%>
                <asp:Button ID="Button1" runat="server" Text="Add Customer" OnClick="submitButton_Click"  ValidationGroup="val"/>

            </div>
        </div>
    </form>
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
