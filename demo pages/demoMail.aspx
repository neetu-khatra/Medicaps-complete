<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demoMail.aspx.cs" Inherits="demo_pages_demoMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Pass"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        To<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="subject"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox><br />
        <asp:TextBox ID="TextBox5" runat="server" Height="88px" TextMode="MultiLine" Width="294px"></asp:TextBox><br /><br />

        <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" Height="65px" Width="146px" />
    </div>
    </form>
</body>
</html>
