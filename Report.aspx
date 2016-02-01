<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 943px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
         <asp:Image ID="Image1" runat="server" Width="100%" Height="212px" ImageUrl="~/images/welcome.jpg" />
        
        <table style="width:100%">
            <tr>
                <td>                
                    <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" RenderingMode="Table" Width="100%" StaticEnableDefaultPopOutImage="False">
                        <DynamicHoverStyle BackColor="#CC0099" />
                        <DynamicMenuItemStyle ForeColor="#CCFF66" Width="210px" BackColor="Purple" />
                        <DynamicMenuStyle BackColor="Purple" Height="80px" />
                        <Items>
                            <asp:MenuItem Text="About Us"  Value="About Us">
                                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/ContactUs.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Career" Value="Career" NavigateUrl="~/Career.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Health Care" Value="Health Care">
                                <asp:MenuItem Text="Nutrition" Value="Nutrition" NavigateUrl="~/NutritionPage.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Medication" Value="Medication" NavigateUrl="~/Medication.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Fitness" Value="Fitness" NavigateUrl="~/Fitness.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Health Camps" Value="Health Camps" NavigateUrl="~/HealthCamps.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Patient Care" Value="Patient Care">
                                <asp:MenuItem Text="Login" Value="Login" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Register" Value="Register" NavigateUrl="~/RegistrationPage.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Facilities" Value="Facilities" NavigateUrl="~/facilities.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Overview" Value="Overview" NavigateUrl="~/Overview.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#CC0099" />
                        <StaticMenuItemStyle Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="#CCFF66" Width="210px" BackColor="Purple" />
                        <StaticMenuStyle BackColor="Purple" />
                    </asp:Menu>
                </td>
            </tr>
        </table><br /><br /><br /><br />
       
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Panel runat="server" >
                        <table>
            <tr>
               <td>
                   <asp:Panel runat="server" Height="200px" Width="600px" BackColor="#339966" Font-Bold="True" Font-Size="XX-Large" ForeColor="#660066" >
                    <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br /><br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#00BB80" Font-Size="Large" >
                    <asp:Label ID="Label3" runat="server" Text="The Disease Name is " Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#44DD99" Font-Size="Large" >
                    <asp:Label ID="Label5" runat="server" Text="The Precautions are " Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#66FF99" Font-Size="Large" >
                    <asp:Label ID="Label7" runat="server" Text="The Cure is" Font-Bold="True"></asp:Label><br /><br />
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#99FF99" Font-Size="Large" >
                    <asp:Label ID="Label9" runat="server" Text="You should go for the following tests to confirm the same" Font-Bold="True"></asp:Label><br />
                  <br />  <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
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
                     
                </td>
                <td>
                    <asp:Button ID="BtnLogout" runat="server" Text="Logout" Height="92px" style="margin-left: 135px; margin-top: 0px;"  BackColor="#CCFF33" Font-Bold="True" Width="311px" Visible="False" />
                    <asp:Image ID="Image2" runat="server" Height="500px" ImageUrl="~/images/Health-and-Nutrition-Guide-for-PC.png" Width="311px" style=" margin-left: 135px; margin-top: 0px;" />
                    <asp:Calendar ID="Calendar1" runat="server" ForeColor="Yellow" Height="400px" style="margin-left: 135px; margin-top: 0px" Width="311px">
                        <DayHeaderStyle BackColor="#FFCC00" ForeColor="White" />
                        <DayStyle BackColor="Black" />
                        <SelectedDayStyle BackColor="#FFCC00" />
                        <TitleStyle BackColor="Black" Font-Bold="True" ForeColor="#FF3300" />
                        <TodayDayStyle BackColor="#FF3300" />
                     </asp:Calendar></td>
            </tr>
        </table>
        



                    
        
    </form>
</body>
</html>
