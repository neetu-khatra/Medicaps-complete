<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 734px;
        }
    </style>
</head>
<body style="background-color:white">
    <form id="form1" runat="server">
    <div>
    
    </div>
         <table style="width:100%">
            <tr>
                <td>  
                    <asp:Panel Width="100%" ID="Panel1" runat="server" BackColor="Yellow" Height="70px">    <br />         
                    <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" RenderingMode="Table" Width="100%" StaticEnableDefaultPopOutImage="False">
                        <DynamicHoverStyle BackColor="Gray" />
                        <DynamicMenuItemStyle ForeColor="#CCFF66" Width="210px" BackColor="#333333" />
                        <DynamicMenuStyle BackColor="#333333" Height="80px" />
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
                        <StaticHoverStyle BackColor="Gray" />
                        <StaticMenuItemStyle Font-Bold="True" Font-Size="Larger" Font-Underline="True" ForeColor="#CCFF66" Width="210px" BackColor="#333333" />
                        <StaticMenuStyle BackColor="#333333" />
                    </asp:Menu><br />
                    </asp:Panel> 
                </td>
            </tr>
        </table><br /><br /><br /><br />

        <table>
            <tr>
                
                <td style="color:yellow" class ="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Hello.." Font-Size="XX-Large" ForeColor="Lime"></asp:Label><br />
                   <br /><br /> <asp:Label ID="Label2" runat="server" Text="for more information.." Font-Size="Larger"></asp:Label><br />
                   <br /><br /> <asp:Label ID="Label3" runat="server" Text="contact us on +1209089121" Font-Size="Larger"></asp:Label>
                </td>
                <td>
                     <asp:Image Height="400px" Width="300px" ID="Image4" runat="server" ImageUrl="~/images/Health-and-Nutrition-Guide-for-PC.png" BorderColor="#FF6600" style="margin-left: 395px; margin-top: 0px" /><br />
                    <asp:Calendar ID="Calendar1" runat="server" ForeColor="Yellow" Height="400px" style="margin-left: 384px; margin-top: 0px" Width="311px">
                        <DayHeaderStyle BackColor="#FFCC00" ForeColor="White" />
                        <DayStyle BackColor="Black" />
                        <SelectedDayStyle BackColor="#FFCC00" />
                        <TitleStyle BackColor="Black" Font-Bold="True" ForeColor="#FF3300" />
                        <TodayDayStyle BackColor="#FF3300" />
                     </asp:Calendar>
                </td>
            </tr>
        </table>
        <br /><br />
        <span style="margin-left:700px; color:green"  >2015 @ All Rights Reserved. </span>
       
    </form>
</body>
</html>
