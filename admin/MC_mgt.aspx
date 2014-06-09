<%@ Page Title="修改会员联系信息" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="MC_mgt.aspx.cs" Inherits="admin_MC_mgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
        DeleteCommand="DELETE FROM [contact] WHERE [mno] = @mno" 
        InsertCommand="INSERT INTO [contact] ([mno], [phone], [qq], [email], [bbs_user], [zhifubao]) VALUES (@mno, @phone, @qq, @email, @bbs_user, @zhifubao)" 
        SelectCommand="SELECT * FROM [contact] WHERE ([mno] = @mno)" 
        UpdateCommand="UPDATE [contact] SET [phone] = @phone, [qq] = @qq, [email] = @email, [bbs_user] = @bbs_user, [zhifubao] = @zhifubao WHERE [mno] = @mno">
        <DeleteParameters>
            <asp:Parameter Name="mno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mno" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="qq" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="bbs_user" Type="String" />
            <asp:Parameter Name="zhifubao" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Eval(&quot;mno&quot;)" Name="mno" 
                QueryStringField="mno" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="qq" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="bbs_user" Type="String" />
            <asp:Parameter Name="zhifubao" Type="String" />
            <asp:Parameter Name="mno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="mno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="83px" Width="443px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="mno" HeaderText="会员号" ReadOnly="True" 
                SortExpression="mno" />
            <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
            <asp:BoundField DataField="qq" HeaderText="QQ" SortExpression="qq" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="bbs_user" HeaderText="论坛用户名" 
                SortExpression="bbs_user" />
            <asp:BoundField DataField="zhifubao" HeaderText="支付宝" 
                SortExpression="zhifubao" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            联系信息修改
        </HeaderTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</p>
</asp:Content>

