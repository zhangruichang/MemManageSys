<%@ Page Title="查看会员基本信息" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="mdetail.aspx.cs" Inherits="admin_mdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
        SelectCommand="SELECT * FROM [member] WHERE ([mno] = @mno)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Eval(&quot;&quot;mno)" Name="mno" 
                QueryStringField="mno" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    欢迎察会员信息<br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="mno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="278px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="mno" HeaderText="会员编号" ReadOnly="True" 
                SortExpression="mno" />
            <asp:BoundField DataField="mname" HeaderText="姓名" SortExpression="mname" />
            <asp:BoundField DataField="msex" HeaderText="性别" SortExpression="msex" />
            <asp:BoundField DataField="mage" HeaderText="年龄" SortExpression="mage" />
            <asp:BoundField DataField="coll" HeaderText="学院" SortExpression="coll" />
            <asp:BoundField DataField="prof" HeaderText="专业" SortExpression="prof" />
            <asp:BoundField DataField="level_id" HeaderText="级别" 
                SortExpression="level_id" />
            <asp:CheckBoxField DataField="ismoney" HeaderText="缴费" 
                SortExpression="ismoney" />
            <asp:BoundField DataField="department" HeaderText="所属部门" 
                SortExpression="department" />
            <asp:BoundField DataField="issysmng" HeaderText="管理员" 
                SortExpression="issysmng" />
            <asp:BoundField DataField="ques" HeaderText="问题" SortExpression="ques" />
            <asp:BoundField DataField="ans" HeaderText="答案" SortExpression="ans" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            会员详情
        </HeaderTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <table class="style14">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

