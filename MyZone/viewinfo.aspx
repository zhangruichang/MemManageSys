<%@ Page Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="viewinfo.aspx.cs" Inherits="MyZone_viewinfo" Title="查看资料" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3 td{ float:left;}
        .style6
        {
            width:601px;
        }
        .style7
        {
            height: 314px;
            width: 601px;
        }
    .style8
    {
        width: 177px;
    }
    .style9
    {
        height: 314px;
        width: 177px;
    }
        .style12
        {
            width: 100%;
        }
        .style13
        {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
        <table class="style12">
            <tr>
                <td class="style13">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                
                SelectCommand="SELECT [mno], [mname], [msex], [mage], [coll], [prof], [psd], [ismoney], [department], [ques], [ans] FROM [member] WHERE ([mno] = @mno)">
                <SelectParameters>
                    <asp:SessionParameter Name="mno" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </td>
                <td>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                
                SelectCommand="SELECT [phone], [qq], [email], [bbs_user], [zhifubao] FROM [contact] WHERE ([mno] = @mno)">
                <SelectParameters>
                    <asp:SessionParameter Name="mno" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style13">
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="mno" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="278px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="mno" HeaderText="学号" ReadOnly="True" 
                SortExpression="mno" />
            <asp:BoundField DataField="mname" HeaderText="姓名" SortExpression="mname" />
            <asp:BoundField DataField="msex" HeaderText="性别" SortExpression="msex" />
            <asp:BoundField DataField="mage" HeaderText="年龄" SortExpression="mage" />
            <asp:BoundField DataField="coll" HeaderText="学院" SortExpression="coll" />
            <asp:BoundField DataField="prof" HeaderText="专业" SortExpression="prof" />
            <asp:CheckBoxField DataField="ismoney" HeaderText="是否缴费" 
                SortExpression="ismoney" />
            <asp:BoundField DataField="department" HeaderText="部门" 
                SortExpression="department" />
            <asp:BoundField DataField="ques" HeaderText="问题" 
                SortExpression="ques" />
            <asp:BoundField DataField="ans" HeaderText="答案" 
                SortExpression="ans" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            个人基本信息
        </HeaderTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
                </td>
                <td>
    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None" Height="258px" Width="264px" 
                AllowPaging="True" style="margin-left: 0px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="phone" HeaderText="手机" 
                SortExpression="phone" />
            <asp:BoundField DataField="qq" HeaderText="qq" SortExpression="qq" />
            <asp:BoundField DataField="email" HeaderText="电子邮件" SortExpression="email" />
            <asp:BoundField DataField="bbs_user" HeaderText="网聚论坛账号" 
                SortExpression="bbs_user" />
            <asp:BoundField DataField="zhifubao" HeaderText="支付宝" 
                SortExpression="zhifubao" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            联系信息
        </HeaderTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" VerticalAlign ="Top" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    
</asp:Content>

