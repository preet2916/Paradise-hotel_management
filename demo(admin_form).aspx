<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo(admin_form).aspx.cs" Inherits="hotel_management.demo_admin_form_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
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

        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="time"],
        input[type="number"] {
            border: 1px solid #ccc;
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
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Repeater ID="rpt_customer" runat="server">
                <ItemTemplate>
                    <div class="row">
                        <div class="col">
                            <label for="name" class="form-label">Name : </label>
                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" value='<%# Eval("name") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col">
                            <label for="email" class="form-label">Email : </label>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" value='<%# Eval("email") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="password" class="form-label">Password : </label>
                            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" value='<%# Eval("password") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row gen-row">
                        <div class="col">
                            <label for="gender" class="form-label">Gender : </label>
                        </div>
                        <div class="col">
                            <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="contact" class="form-label">Contact :</label>
                            <asp:TextBox ID="txtcontact" runat="server" value='<%# Eval("contact") %>'></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="submitButton" runat="server" Text="Submit" />
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>

