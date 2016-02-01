<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo5symptoms6.aspx.cs" Inherits="demo5symptoms6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br /><br />
    
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="555px" Width="789px" Font-Size="X-Large" RepeatColumns="3" style="margin-right: 85px">
            <asp:ListItem>aaa</asp:ListItem>
            <asp:ListItem>bbb</asp:ListItem>
            <asp:ListItem>ccc</asp:ListItem>
            <asp:ListItem>ddd</asp:ListItem>
            <asp:ListItem>eee</asp:ListItem>
            <asp:ListItem>fff</asp:ListItem>
            <asp:ListItem>a</asp:ListItem>
            <asp:ListItem>b</asp:ListItem>
            <asp:ListItem>c</asp:ListItem>
            <asp:ListItem>d</asp:ListItem>
            <asp:ListItem>e</asp:ListItem>
            <asp:ListItem>f</asp:ListItem>
            <asp:ListItem>g</asp:ListItem>
            <asp:ListItem>h</asp:ListItem>
            <asp:ListItem>i</asp:ListItem>
            <asp:ListItem>j</asp:ListItem>
            <asp:ListItem>k</asp:ListItem>
            <asp:ListItem>l</asp:ListItem>
            <asp:ListItem>m</asp:ListItem>
            <asp:ListItem>n</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" Height="155px" Text="Button" Width="201px" OnClick="Button1_Click" />
        
        
    </div>
        <asp:Panel ID="panel1" runat="server" >
         <table>
            <tr>
               <td>
                   <asp:Panel runat="server" Height="200px" Width="600px" BackColor="#339966" Font-Bold="True" Font-Size="XX-Large" ForeColor="#660066" >
                    <asp:Label ID="Label2" runat="server" Text="Welcome "></asp:Label><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br /><br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#00BB80" Font-Size="Large" >
                    <asp:Label ID="Label4" runat="server" Text="The Disease Name is " Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#44DD99" Font-Size="Large" >
                    <asp:Label ID="Label6" runat="server" Text="The Precautions are " Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#66FF99" Font-Size="Large" >
                    <asp:Label ID="Label8" runat="server" Text="The Cure is" Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#99FF99" Font-Size="Large" >
                    <asp:Label ID="Label10" runat="server" Text="You should go for the following tests to confirm the same" Font-Bold="True"></asp:Label><br />
                  <br />  <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    <br />
                    </asp:Panel>
                </td></tr>
                            <tr>
                                <td>
                                    <asp:Panel runat="server" Height="150px" Width="600px" >
                                        <asp:Image ID="Image3" runat="server" Height="140px" Width="200px" />
                                        <asp:Image ID="Image4" runat="server" Height="140px" Width="200px" />
                                        <asp:Image ID="Image5" runat="server" Height="140px" Width="200px" />
                                    </asp:Panel>
                                </td>
                            </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
