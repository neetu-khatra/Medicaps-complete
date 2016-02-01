<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo.aspx.cs" Inherits="Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 474px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="450px" RepeatColumns="2" Width="550px" Font-Bold="True" Font-Size="Larger" ForeColor="Aqua">
            <asp:ListItem>cough</asp:ListItem>
            <asp:ListItem>chest-pain</asp:ListItem>
            <asp:ListItem>wheezing</asp:ListItem>
            <asp:ListItem>Faint</asp:ListItem>
            <asp:ListItem>irritation</asp:ListItem>
            <asp:ListItem>weakness</asp:ListItem>
            <asp:ListItem>sleeplessness</asp:ListItem>
        </asp:CheckBoxList>

        <asp:Button ID="Button1" runat="server" Text="Report" BackColor="#FF6600" Font-Bold="True" Font-Size="Larger" Height="87px" OnClick="Button1_Click" style="margin-left: 244px" Width="145px" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
