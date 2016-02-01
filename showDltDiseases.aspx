<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showDltDiseases.aspx.cs" Inherits="showDltDiseases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Following is the list of diseases.." Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label><br /><br />
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="950px" Width="100%" AllowPaging="True" BackColor="#333333" CellPadding="3" CellSpacing="1" ForeColor="Yellow" AllowSorting="True" BorderColor="#FFCC00" BorderStyle="Solid" BorderWidth="4px" EnableSortingAndPagingCallbacks="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="precautions" HeaderText="precautions" SortExpression="precautions" />
                <asp:BoundField DataField="cure" HeaderText="cure" SortExpression="cure" />
                <asp:BoundField DataField="test to confirm" HeaderText="test to confirm" SortExpression="test to confirm" />
                <asp:BoundField DataField="s1" HeaderText="s1" SortExpression="s1" />
                <asp:BoundField DataField="s2" HeaderText="s2" SortExpression="s2" />
                <asp:BoundField DataField="s3" HeaderText="s3" SortExpression="s3" />
                <asp:BoundField DataField="s4" HeaderText="s4" SortExpression="s4" />
                <asp:BoundField DataField="s5" HeaderText="s5" SortExpression="s5" />
                <asp:BoundField DataField="s6" HeaderText="s6" SortExpression="s6" />
                <asp:BoundField DataField="img1" HeaderText="img1" SortExpression="img1" />
                <asp:BoundField DataField="img2" HeaderText="img2" SortExpression="img2" />
                <asp:BoundField DataField="img3" HeaderText="img3" SortExpression="img3" />
            </Columns>
            <PagerStyle Font-Bold="True" Font-Size="X-Large" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediDB %>" SelectCommand="SELECT * FROM [FDisTable] ORDER BY [Id], [name]" ProviderName="<%$ ConnectionStrings:MediDB.ProviderName %>"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
