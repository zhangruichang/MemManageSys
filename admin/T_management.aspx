<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="T_management.aspx.cs" Inherits="admin_T_management" Title="任务管理" %>

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
            
            SelectCommand="SELECT [task_id], [title], [task_level], [state] FROM [task] WHERE (([task_level] = @task_level) AND ([state] = @state))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="task_level" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            
            SelectCommand="SELECT [task_id], [title], [state], [task_level] FROM [task] WHERE ([task_level] = @task_level)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="task_level" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            
            SelectCommand="SELECT [task_id], [title], [task_level], [state] FROM [task] WHERE ([state] = @state)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
            
            SelectCommand="SELECT [task_id], [title], [task_level], [state] FROM [task]">
        </asp:SqlDataSource>
        <span class="style18">欢迎使用任务管理，请点击属性名实现排序。</span><br />
    </p>
    <table class="style14">
        <tr>
            <td>
                查询:&nbsp; 任务等级：<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>全部</asp:ListItem>
                    <asp:ListItem>个人级</asp:ListItem>
                    <asp:ListItem>部门级</asp:ListItem>
                    <asp:ListItem>社团级</asp:ListItem>
                </asp:DropDownList>
                &nbsp;任务状态：<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>全部</asp:ListItem>
                    <asp:ListItem>未完成</asp:ListItem>
                    <asp:ListItem>已完成</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="task_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="257px" Width="1015px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="task_id" HeaderText="任务编号" InsertVisible="False" 
                            ReadOnly="True" SortExpression="task_id" />
                        <asp:BoundField DataField="title" HeaderText="任务名" SortExpression="title" />
                        <asp:BoundField DataField="task_level" HeaderText="任务等级" 
                            SortExpression="task_level" />
                        <asp:BoundField DataField="state" HeaderText="任务状态" SortExpression="state" />
                        <asp:TemplateField HeaderText="任务管理">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# "tdetail.aspx?task_id="+Eval("task_id") %>'>查看</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    NavigateUrl='<%# "Tmgt.aspx?task_id="+Eval("task_id") %>'>管理</asp:HyperLink>
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

