<%@ Page Title="查看会员联系信息" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="mcontrast.aspx.cs" Inherits="admin_mcontrast" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            SelectCommand="SELECT * FROM [contact] WHERE ([mno] = @mno)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Eval(&quot;mno&quot;)" Name="mno" 
                    QueryStringField="mno" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        欢迎察看会员通信信息<br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="mno" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="259px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="mno" HeaderText="会员号" ReadOnly="True" 
                    SortExpression="mno" />
                <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
                <asp:BoundField DataField="qq" HeaderText="QQ" SortExpression="qq" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="bbs_user" HeaderText="论坛用户名" 
                    SortExpression="bbs_user" />
                <asp:BoundField DataField="zhifubao" HeaderText="支付宝" 
                    SortExpression="zhifubao" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                会员通讯详情
            </HeaderTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </p>
</asp:Content>

