<%@ Page Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="MemCenter.aspx.cs" Inherits="MyZone_MemCenter" Title="会员之个人中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
                            <asp:SqlDataSource ID="SqlDataSource3" 
    runat="server" 
    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
    SelectCommand="SELECT * FROM [task] ORDER BY [start] DESC">
</asp:SqlDataSource>
    <br />
    <table class="style3">
        <tr>
            <td>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="task_id" DataSourceID="SqlDataSource3" AllowPaging="True" 
                    AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
                    Height="373px" Width="1000px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" />
        <asp:BoundField DataField="area" HeaderText="地点" SortExpression="area" />
        <asp:BoundField DataField="start" HeaderText="开始时间" SortExpression="start" />
        <asp:BoundField DataField="end" HeaderText="结束时间" SortExpression="end" />
        <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
        <asp:BoundField DataField="task_level" HeaderText="级别" 
            SortExpression="task_level" />
        <asp:BoundField DataField="state" HeaderText="任务状态" SortExpression="state" />
        <asp:BoundField DataField="who" HeaderText="发布人" SortExpression="who" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

