<%@ Page Title="" Language="C#" MasterPageFile="~/GoodFood.Master" AutoEventWireup="true" CodeBehind="Dish.aspx.cs" Inherits="_18028900GeetaOjha_Database.Dish" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DISH&quot; WHERE &quot;DISH_CODE&quot; = :DISH_CODE" InsertCommand="INSERT INTO &quot;DISH&quot; (&quot;DISH_CODE&quot;, &quot;DISH_NAME&quot;, &quot;DISH_RATE&quot;, &quot;LOCAL_NAME&quot;) VALUES (:DISH_CODE, :DISH_NAME, :DISH_RATE, :LOCAL_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DISH_CODE&quot;, &quot;DISH_NAME&quot;, &quot;DISH_RATE&quot;, &quot;LOCAL_NAME&quot; FROM &quot;DISH&quot;" UpdateCommand="UPDATE &quot;DISH&quot; SET &quot;DISH_NAME&quot; = :DISH_NAME, &quot;DISH_RATE&quot; = :DISH_RATE, &quot;LOCAL_NAME&quot; = :LOCAL_NAME WHERE &quot;DISH_CODE&quot; = :DISH_CODE">
    <DeleteParameters>
        <asp:Parameter Name="DISH_CODE" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DISH_CODE" Type="String" />
        <asp:Parameter Name="DISH_NAME" Type="String" />
        <asp:Parameter Name="DISH_RATE" Type="Decimal" />
        <asp:Parameter Name="LOCAL_NAME" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="DISH_NAME" Type="String" />
        <asp:Parameter Name="DISH_RATE" Type="Decimal" />
        <asp:Parameter Name="LOCAL_NAME" Type="String" />
        <asp:Parameter Name="DISH_CODE" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DISH_CODE" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="DISH_CODE" HeaderText="DISH_CODE" ReadOnly="True" SortExpression="DISH_CODE" />
        <asp:BoundField DataField="DISH_NAME" HeaderText="DISH_NAME" SortExpression="DISH_NAME" />
        <asp:BoundField DataField="DISH_RATE" HeaderText="DISH_RATE" SortExpression="DISH_RATE" />
        <asp:BoundField DataField="LOCAL_NAME" HeaderText="LOCAL_NAME" SortExpression="LOCAL_NAME" />
    </Columns>
</asp:GridView>
</asp:Content>
