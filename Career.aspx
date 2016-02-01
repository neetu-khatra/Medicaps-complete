<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Career.aspx.cs" Inherits="Career" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 437px;
        }
    </style>
</head>
<body>
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
                
                <td style="color:yellow;widows:600px" class ="auto-style1" >
                    <asp:Label Width="250px" ID="Label1" runat="server" Text="Hello.." Font-Size="XX-Large" ForeColor="Lime"></asp:Label><br />
                   <br /><br /> <asp:Label ID="Label2" runat="server" Text="Search the website.." Font-Size="Larger" ForeColor="#333333"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="232px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text=">>" Font-Bold="True" Font-Size="Large" Height="34px" style="margin-top: 10px" />
                   <br /><br /> <asp:Label Width="400px" ID="Label3" runat="server" Text=" Browse for information by Keyword.." Font-Size="Larger" ForeColor="#333333"></asp:Label><br />
                   <br /> <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Lime">Health Camps</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Lime">Health Lectures</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Lime">Fitness</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Lime">Nutrition</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Lime">Healthy Diet</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Lime">Yoga & Exercises</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Lime">Other</asp:HyperLink><br />
                </td>
                <td>
                     <asp:Image Height="400px" Width="300px" ID="Image4" runat="server" ImageUrl="~/images/Health-and-Nutrition-Guide-for-PC.png" BorderColor="#FF6600" style="margin-left: 749px; margin-top: 0px" /><br />
                    <asp:Calendar ID="Calendar1" runat="server" ForeColor="Yellow" Height="400px" style="margin-left: 741px; margin-top: 0px" Width="311px">
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
