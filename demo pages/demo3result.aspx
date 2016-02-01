<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo3result.aspx.cs" Inherits="demo3result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="238px" Width="748px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="precautions" HeaderText="precautions" SortExpression="precautions" />
                <asp:BoundField DataField="cure" HeaderText="cure" SortExpression="cure" />
                <asp:BoundField DataField="s1" HeaderText="s1" SortExpression="s1" />
                <asp:BoundField DataField="s2" HeaderText="s2" SortExpression="s2" />
                <asp:BoundField DataField="img1" HeaderText="img1" SortExpression="img1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediDB %>" ProviderName="<%$ ConnectionStrings:MediDB.ProviderName %>" SelectCommand="SELECT * FROM [Tabledemo]"></asp:SqlDataSource>
    </form>
</body>
</html>
