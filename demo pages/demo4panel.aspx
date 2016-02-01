<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo4panel.aspx.cs" Inherits="demo4panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

        
        
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button"  /><asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        <asp:Panel ID="Panel1" runat="server" Height="434px" Width="307px" BackColor="#0099FF">
            <asp:Button ID="Button4" runat="server" Text="_" Font-Bold="True" Font-Size="Large" ForeColor="Black"  style="margin-left: 242px" /> <asp:Button ID="Button3" runat="server" Text="X" Font-Bold="True" Font-Size="Large" ForeColor="Red" style="margin-left: 6px" OnClick="Button3_Click" />
        </asp:Panel><asp:Panel ID="Panel2" runat="server" BackColor="#6600FF" Height="143px" Width="487px"></asp:Panel>
        
    </form>
</body>
</html>
