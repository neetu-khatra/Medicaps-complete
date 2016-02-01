<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertDiseases.aspx.cs" Inherits="insertDiseases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
    <div>
    
    </div>

        <asp:Label ID="Label13" runat="server" Text="Insert diseases..." Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>.<br />

        <table aria-orientation="vertical" style="padding: 22px; margin: 10px; border: 5px outset #000000; clip: rect(auto, auto, auto, auto); table-layout: auto; background-color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: large; font-style: normal; color: #FFFF00; border-spacing: 5px; height: 704px; width: 965px;">
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label1" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox style="margin-left:142px" ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label2" runat="server" Text="Precautions"></asp:Label>
                    <asp:TextBox style="margin-left:95px" ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label3" runat="server" Text="Cure"></asp:Label>
                    <asp:TextBox style="margin-left:150px" ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label4" runat="server" Text="Test to confirm"></asp:Label>
                    <asp:TextBox style="margin-left:70px" ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label5" runat="server" Text="symptom 1"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox5" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label6" runat="server" Text="symptom 2"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox6" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
           <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label7" runat="server" Text="symptom 3"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox7" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label8" runat="server" Text="symptom 4"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox8" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label9" runat="server" Text="symptom 5"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox9" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label10" runat="server" Text="symptom 6"></asp:Label>
                    <asp:TextBox style="margin-left:100px" ID="TextBox10" runat="server" AutoPostBack="True"></asp:TextBox>
                </td></tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label11" runat="server" Text="image 1"></asp:Label>
                    <asp:FileUpload style="margin-left:128px" ID="FileUpload1" runat="server" />
                </td></tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label12" runat="server" Text="image 2"></asp:Label>
                    <asp:FileUpload style="margin-left:127px" ID="FileUpload2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label style="margin-left:40px" ID="Label14" runat="server" Text="image 2"></asp:Label>
                    <asp:FileUpload style="margin-left:127px" ID="FileUpload3" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="insert" Height="73px" BackColor="Black" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Width="224px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="reset" BackColor="Black" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Height="73px" Width="224px" />
                <br /></td>
            </tr>


        </table>

    </form>
</body>
</html>
