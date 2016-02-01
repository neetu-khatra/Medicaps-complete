<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo2.aspx.cs" Inherits="demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <br />
        <br />

         <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="414px" Width="801px" AutoPostBack="True" RepeatColumns="2">
            <asp:ListItem>cough</asp:ListItem>
            <asp:ListItem>irritation</asp:ListItem>
            <asp:ListItem>weakness</asp:ListItem>
            <asp:ListItem>wheezing</asp:ListItem>
            <asp:ListItem>chest pain</asp:ListItem>
            <asp:ListItem>sleeplessness</asp:ListItem>
            <asp:ListItem>measels</asp:ListItem>
             <asp:ListItem>aaa</asp:ListItem>
             <asp:ListItem>bbb</asp:ListItem>
             <asp:ListItem>ccc</asp:ListItem>
             <asp:ListItem>ddd</asp:ListItem>
             <asp:ListItem>eee</asp:ListItem>
             <asp:ListItem>fff</asp:ListItem>
        </asp:CheckBoxList>

    </div>
        <asp:Button ID="Button1" runat="server" Height="121px" OnClick="Button1_Click" Text="Button" Width="170px" />
    </form>
</body>
</html>
