<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_panel.aspx.cs" Inherits="hotel_management.admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbleml" runat="server" Text="email : "></asp:Label>
            <br />
            <asp:Label ID="name" runat="server" Text="name : "></asp:Label>
            <br />
            <asp:Label ID="password" runat="server" Text="password : "></asp:Label>
            <br />
            <asp:Label ID="gender" runat="server" Text="gneder : "></asp:Label>
            <br />
            <asp:Label ID="mobile" runat="server" Text="mobile : "></asp:Label>
        </div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
    </form>
</body>
</html>