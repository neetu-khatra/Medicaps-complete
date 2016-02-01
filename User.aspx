<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
    <div>
     <asp:Panel ID="panel3" runat="server" Width="600px" style="margin-left:400px;margin-top:50px" Font-Bold="True" Font-Size="XX-Large" Height="500px" BackColor="#333333" ForeColor="#FFFFCC" ><br />
       <br /><br />  <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#820082"></asp:Label><br /><br />
         <asp:Label ID="Label13" runat="server" Text="Kindly co-operate and follow the instructions.."></asp:Label><br /><br />
         <asp:Button ID="Button1" runat="server" Text="Okay" OnClick="Button1_Click" Font-Bold="True" Font-Size="Large" Height="60px" Width="85px" BackColor="#666666" />
     </asp:Panel>
        <asp:Panel runat="server" ID="panel4" Width="600px" style="margin-left:400px;margin-top:50px" Font-Bold="True" Font-Size="XX-Large" Height="500px" BackColor="#333333" ForeColor="#FFFFCC"><br />
        <br /><br />    <asp:Label ID="Label14" runat="server" Text="You need to select 6 symptoms.."></asp:Label><br /><br />
            <asp:Button ID="Button2" runat="server" Text="okay" OnClick="Button2_Click" Font-Bold="True" Font-Size="Large" Height="60px" Width="85px" BackColor="#666666" />
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Width="600px" style="margin-left:400px;margin-top:50px" Font-Bold="True" Font-Size="XX-Large" Height="500px" BackColor="#333333" ForeColor="#FFFFCC"><br />
        <br /><br />  <asp:Label ID="Label12" runat="server" Text="Are you ready? " ForeColor="Aqua"></asp:Label>
            <asp:Label ID="Label15" runat="server" Text=" The report does not claim 100% accuracy, you should verify it as well"></asp:Label><br /><br />
            <asp:Label ID="Label16" runat="server" Text="Thank You :) " ForeColor="Aqua"></asp:Label><br /><br />
            <asp:Button ID="Button3" runat="server" Text="Ready" OnClick="Button3_Click" Font-Bold="True" Font-Size="Large" Height="60px" Width="85px" BackColor="#666666" />
        </asp:Panel>


        <asp:Panel ID="panel2" runat="server" > 
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="800px" RepeatColumns="8" Width="100%" BorderColor="#660066" BorderStyle="Solid" Font-Bold="False" ForeColor="#FF33CC" Font-Size="Smaller" style="margin-right: 19px" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                            <asp:ListItem>Abdomen-pain</asp:ListItem>
                            <asp:ListItem>Abnormalities</asp:ListItem>
                            <asp:ListItem>Allergy</asp:ListItem>
                            <asp:ListItem>Anxious</asp:ListItem>
                            <asp:ListItem>Anemia</asp:ListItem>
                            <asp:ListItem>Anger</asp:ListItem>
                            <asp:ListItem>Appetite-loss</asp:ListItem>
                            <asp:ListItem>Back-pain</asp:ListItem>
                            <asp:ListItem>Blemishes</asp:ListItem>
                            <asp:ListItem>Bleeding</asp:ListItem>
                            <asp:ListItem>Breathlessness</asp:ListItem>
                            <asp:ListItem>Brain-damage</asp:ListItem>
                            <asp:ListItem>Brown/red-urine</asp:ListItem>
                            <asp:ListItem>BP-high</asp:ListItem>
                            <asp:ListItem>BP-low</asp:ListItem>
                            <asp:ListItem>Burning</asp:ListItem>
                            <asp:ListItem>Chest-pain</asp:ListItem>
                            <asp:ListItem>Chocking</asp:ListItem>
                            <asp:ListItem>Circulatory-system-failure</asp:ListItem>
                            <asp:ListItem>Clumsiness</asp:ListItem>
                            <asp:ListItem>Cough</asp:ListItem>
                            <asp:ListItem>Constipation</asp:ListItem>
                            <asp:ListItem>Cramps</asp:ListItem>
                            <asp:ListItem>Dehydration</asp:ListItem>
                            <asp:ListItem>Delayed-growth</asp:ListItem>
                            <asp:ListItem>Dementia</asp:ListItem>
                            <asp:ListItem>Discomfort</asp:ListItem>
                            <asp:ListItem>Diarrhea</asp:ListItem>
                            <asp:ListItem>Dizziness</asp:ListItem>
                            <asp:ListItem>Disorientation</asp:ListItem>
                            <asp:ListItem>Dry-mouth</asp:ListItem>
                            <asp:ListItem>Dry-nose</asp:ListItem>
                            <asp:ListItem>Dryness</asp:ListItem>
                            <asp:ListItem>Dyspepsia</asp:ListItem>
                            <asp:ListItem>Ear Pain</asp:ListItem>
                            <asp:ListItem>Eye Pain</asp:ListItem>
                            <asp:ListItem>Energy-level-low</asp:ListItem>
                            <asp:ListItem>Energy-level-high</asp:ListItem>
                            <asp:ListItem>Fatigue</asp:ListItem>
                            <asp:ListItem>Fever-high</asp:ListItem>
                            <asp:ListItem>Fever-low</asp:ListItem>
                            <asp:ListItem>Fear</asp:ListItem>
                            <asp:ListItem>Fainting</asp:ListItem>
                            <asp:ListItem>Gum-bleeding</asp:ListItem>
                            <asp:ListItem>Gall-stone</asp:ListItem>
                            <asp:ListItem>Gratification</asp:ListItem>
                            <asp:ListItem>Hoarseness</asp:ListItem>
                            <asp:ListItem>Headache</asp:ListItem>
                            <asp:ListItem>Hearing-loss</asp:ListItem>
                            <asp:ListItem>Heart-damage</asp:ListItem>
                            <asp:ListItem>Hallucination</asp:ListItem>
                            <asp:ListItem>Hypervigilant</asp:ListItem>
                            <asp:ListItem>Hives</asp:ListItem>
                            <asp:ListItem>Impulsiveness</asp:ListItem>
                            <asp:ListItem>Inability-to-communicate</asp:ListItem>
                            <asp:ListItem>Inability-to-walk</asp:ListItem>
                            <asp:ListItem>Inability-recognize-people</asp:ListItem>
                            <asp:ListItem>Insomnia</asp:ListItem>
                            <asp:ListItem>Infection</asp:ListItem>
                            <asp:ListItem>Infertility</asp:ListItem>
                            <asp:ListItem>Itching</asp:ListItem>
                            <asp:ListItem Value="Itchy-skin">Itchy-skin</asp:ListItem>
                            <asp:ListItem>Jaundice</asp:ListItem>
                            <asp:ListItem>Joint-pain</asp:ListItem>
                            <asp:ListItem>Knee-pain</asp:ListItem>
                            <asp:ListItem>Knee-swelling</asp:ListItem>
                            <asp:ListItem>Knee-unstable</asp:ListItem>
                            <asp:ListItem>Kidney-failure</asp:ListItem>
                            <asp:ListItem>Lethargy</asp:ListItem>
                            <asp:ListItem>Lead-line-on-gums</asp:ListItem>
                            <asp:ListItem>Leg-ulcers</asp:ListItem>
                            <asp:ListItem>Limbs-pain</asp:ListItem>
                            <asp:ListItem>Lost-sense-of-touch</asp:ListItem>
                            <asp:ListItem>Loss-of-energy</asp:ListItem>
                            <asp:ListItem>Loss-of-control</asp:ListItem>
                            <asp:ListItem>Lumps</asp:ListItem>
                            <asp:ListItem>Meningitis</asp:ListItem>
                            <asp:ListItem>Menstrual-cramps</asp:ListItem>
                            <asp:ListItem>Mood-swings</asp:ListItem>
                            <asp:ListItem Value="Muscle-pain">Muscle-pain</asp:ListItem>
                            <asp:ListItem>Muscle-cramps</asp:ListItem>
                            <asp:ListItem>Nausea</asp:ListItem>
                            <asp:ListItem>Nose-bleeding</asp:ListItem>
                            <asp:ListItem Value="Numbness">Numbness</asp:ListItem>
                            <asp:ListItem>Nervous-system-damage</asp:ListItem>
                            <asp:ListItem>Oily-skin</asp:ListItem>
                            <asp:ListItem Value="Outbreak-of-blisters">Outbreak-of-blisters</asp:ListItem>
                            <asp:ListItem>Palpitations</asp:ListItem>
                            <asp:ListItem>Pelvic-pain</asp:ListItem>
                            <asp:ListItem>Pica</asp:ListItem>
                            <asp:ListItem>Pimples</asp:ListItem>
                            <asp:ListItem>Pale-skin</asp:ListItem>
                            <asp:ListItem>Redness</asp:ListItem>
                            <asp:ListItem>Restless</asp:ListItem>
                            <asp:ListItem>Rectal-pain</asp:ListItem>
                            <asp:ListItem>Scaly-skin</asp:ListItem>
                            <asp:ListItem>Scars</asp:ListItem>
                            <asp:ListItem>Second-sight</asp:ListItem>
                            <asp:ListItem>Seizures</asp:ListItem>
                            <asp:ListItem>Sensitivity-to-light</asp:ListItem>
                            <asp:ListItem>Sleeplessness</asp:ListItem>
                            <asp:ListItem>Short-term-memory-loss</asp:ListItem>
                            <asp:ListItem>Skin-rashes</asp:ListItem>
                            <asp:ListItem>Stomach-pain</asp:ListItem>
                            <asp:ListItem>Snoring</asp:ListItem>
                            <asp:ListItem>Stiffness-in-body</asp:ListItem>
                            <asp:ListItem>Swelling</asp:ListItem>
                            <asp:ListItem>Ulceration</asp:ListItem>
                            <asp:ListItem>Unusual-discharge</asp:ListItem>
                            <asp:ListItem>Unusual-nails</asp:ListItem>
                            <asp:ListItem>Unusual-skin</asp:ListItem>
                            <asp:ListItem>Vomiting</asp:ListItem>
                            <asp:ListItem>Violent</asp:ListItem>
                            <asp:ListItem>Vision-blurred</asp:ListItem>
                            <asp:ListItem>Vision-cloudy</asp:ListItem>
                            <asp:ListItem>Vision-double</asp:ListItem>
                            <asp:ListItem>Vision-foggy</asp:ListItem>
                            <asp:ListItem>Vision-low</asp:ListItem>
                            <asp:ListItem>Weakness</asp:ListItem>
                            <asp:ListItem>Weight-loss</asp:ListItem>
                            <asp:ListItem>Wet-burps</asp:ListItem>
                            <asp:ListItem>Wheezing</asp:ListItem>
                        </asp:CheckBoxList>
          <asp:Button ID="btnReport" runat="server" Text="Generate Report" BackColor="#666666" Font-Bold="True" Height="50px" Width="148px" OnClick="btnReport_Click" />
            <asp:Button ID="btnlgout" runat="server" Text="Logout" BackColor="#666666" Font-Bold="True" Height="50px" OnClick="btnlgout_Click" Width="148px" />
              </asp:Panel>
    </div>          
        <br /><br />
         <asp:Panel ID="panel1" runat="server" style="margin-left: 452px" >
         <table>
            <tr>
               <td>
                   <asp:Panel runat="server" Height="120px" Width="600px" BackColor="#B9FFCB" Font-Bold="True" Font-Size="XX-Large" ForeColor="#660066" >
                   <br /> <asp:Label ID="Label2" runat="server" Text="Welcome.."></asp:Label>
                    <br /><br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#B9FFCB" Font-Size="Large" >
                    <asp:Label ID="Label4" runat="server" Text="It might be " Font-Bold="True" Font-Size="X-Large" ForeColor="#666666"></asp:Label><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    <br /></asp:Panel></td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#B9FFCB" Font-Size="Large" >
                    <asp:Label ID="Label6" runat="server" Text="Following precautions can be taken" Font-Bold="True" Font-Size="X-Large" ForeColor="#666666"></asp:Label><br /><br />
                    <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#B9FFCB" Font-Size="Large" >
                    <asp:Label ID="Label8" runat="server" Text="The Cure is" Font-Bold="True" Font-Size="X-Large" ForeColor="#666666"></asp:Label><br /><br />
                    <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    <br /></asp:Panel>
                </td></tr>
            <tr><td>
                <asp:Panel runat="server" Height="150px" Width="600px" BackColor="#B9FFCB" Font-Size="Large" >
                    <asp:Label ID="Label10" runat="server" Text="You should go for the following tests to confirm the same" Font-Bold="True" Font-Size="X-Large" ForeColor="#666666"></asp:Label><br />
                  <br />  <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    <br />
                    </asp:Panel>
                </td></tr>
                            <tr>
                                <td>
                                    <asp:Panel runat="server" Height="150px" Width="800px" >
                                        <asp:Image ID="Image3" runat="server" Height="140px" Width="200px" />
                                        <asp:Image ID="Image4" runat="server" Height="140px" Width="200px" />
                                        <asp:Image ID="Image5" runat="server" Height="140px" Width="200px" />
                                    </asp:Panel><br />
                                </td>
                            </tr>
             <tr>
                 
                 <td>
                      <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Larger" Font-Underline="True" ForeColor="#FFCC00">Click here to order!!</asp:HyperLink>
              
                 </td>
             </tr>
            </table>
        </asp:Panel>
        <span style="margin-left:680px; color:green"  >2015 @ All Rights Reserved./span>
        </form>
    </body>
</html>
