<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 574px;
        }
    </style>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
    <div>
    
    </div>
 <asp:Label ID="Label8" runat="server" style="margin-left:350px" Text="MediWeb" Font-Size="75pt" ForeColor="Red"></asp:Label>      
        <table style="width:100%">
            <tr>
                <td>                
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
                    </asp:Menu>
                </td>
            </tr>
        </table><br /><br /><br /><br />

          <table>
            <tr>
               <td class="auto-style1">
                   <asp:Panel ID="Panel1" Height="270px" Width="400px" runat="server" BackColor="#333333" Font-Bold="True"><br />
                       <asp:Label style="margin-left:75px" ID="Label7" runat="server" Text="Verify your details below" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Purple"></asp:Label>
                       <br /><br />
                       <asp:Label style="margin-left:20px" ID="Label1" runat="server" Text="Name"></asp:Label>
                       <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 74px" Width="197px"></asp:TextBox> <br />
                       <asp:Label style="margin-left:20px" ID="Label2" runat="server" Text="Email"></asp:Label>
                       <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 73px" Width="197px" TextMode="Email"></asp:TextBox> <br />
                       <asp:Label style="margin-left:20px" ID="Label3" runat="server" Text="Age"></asp:Label>
                       <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 87px">
                           <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                       </asp:DropDownList> <br />
                       <asp:Label style="margin-left:20px" ID="Label4" runat="server" Text="Address"></asp:Label>
                       <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 58px">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>New Delhi</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Haryana</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>Gujrat</asp:ListItem>
                            <asp:ListItem>Maharashtra</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Tamil Nadu</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Uttar Pradesh</asp:ListItem>
                       </asp:DropDownList> <br /> <br /> <br />

                       <asp:Button ID="Button1" runat="server" Text="Recover Password" Height="66px" Width="397px" OnClick="Button1_Click" BackColor="Purple" Font-Bold="True" Font-Size="Medium" ForeColor="#CCFF33" />
                   </asp:Panel> <br />

                   <asp:Panel ID="Panel2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Maroon" Height="270px" Width="400px" BackColor="#333333">

                      <br /> <br /><asp:Label style="margin-left:20px" ID="Label6" runat="server" Text="Your Password is : " Font-Size="Large" ForeColor="Black"></asp:Label><br />
                       <br /> <asp:Label style="margin-left:65px" ID="Label5" runat="server" Text="  abc  " Font-Size="XX-Large" ForeColor="#0099FF" BorderColor="#660066" BorderStyle="Dashed" BorderWidth="3px" Width="188px"></asp:Label>
                   </asp:Panel>
               </td>
                <td>
                     <asp:Image ID="Image2" runat="server" Width="463px" Height="539px" ImageUrl="~/images/graphics-hospitals-464623.gif" style="margin-left: 276px; margin-top: 0px;" />
                </td>
            </tr>
        </table>

        
        <br /> <br />
        <span style="margin-left:700px" >2015 @ All Rights Reserved. </span> 
    </form>
</body>
</html>
