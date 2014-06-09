<%@ Page Title="会员管理" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="M_management.aspx.cs" Inherits="admin_M_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style18
    {
        color: #333399;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            
            SelectCommand="SELECT [mno], [mname], [msex], [department] FROM [member] WHERE (([department] = @department) AND ([msex] = @msex))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="department" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="msex" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            SelectCommand="SELECT [mno], [mname], [msex], [department] FROM [member] WHERE ([msex] = @msex)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="msex" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            
            SelectCommand="SELECT [mno], [mname], [msex], [department] FROM [member] WHERE ([department] = @department)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="department" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
            SelectCommand="SELECT [mno], [mname], [msex], [department] FROM [member]">
        </asp:SqlDataSource>
        <br />
    </p>
    <p class="style18">
        欢迎使用会员管理，请点击属性名实现排序。</p>
    <table class="style14">
        <tr>
            <td>
                性别：<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>全部</asp:ListItem>
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;部门：
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>全部</asp:ListItem>
                    <asp:ListItem Value="常务理事会"></asp:ListItem>
                    <asp:ListItem Value="论坛运营部"></asp:ListItem>
                    <asp:ListItem>技术教研部</asp:ListItem>
                    <asp:ListItem>宣传设计部</asp:ListItem>
                    <asp:ListItem>市场外联部</asp:ListItem>
                    <asp:ListItem>网聚社(延长)</asp:ListItem>
                </asp:DropDownList>
&nbsp;<asp:Button ID="Button1" runat="server" Text="搜索" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="mno" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="282px" Width="1059px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="mno" HeaderText="会员号" ReadOnly="True" 
                            SortExpression="mno" />
                        <asp:BoundField DataField="mname" HeaderText="姓名" SortExpression="mname" />
                        <asp:BoundField DataField="msex" HeaderText="性别" SortExpression="msex" />
                        <asp:BoundField DataField="department" HeaderText="所属部门" 
                            SortExpression="department" />
                        <asp:TemplateField HeaderText="基本信息">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink3" runat="server" 
                                    NavigateUrl='<%# "mdetail.aspx?mno="+Eval("mno") %>'>查看</asp:HyperLink>
                                &nbsp;
                                <asp:HyperLink ID="HyperLink4" runat="server" 
                                    NavigateUrl='<%# "Mmgt.aspx?mno="+Eval("mno") %>'>修改</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="联系信息">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink5" runat="server" 
                                    NavigateUrl='<%# "mcontrast.aspx?mno="+Eval("mno") %>'>查看</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink6" runat="server" 
                                    NavigateUrl='<%# "MC_mgt.aspx?mno="+Eval("mno") %>'>管理</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
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
    </table>
</asp:Content>

