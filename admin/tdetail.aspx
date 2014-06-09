<%@ Page Title="查看任务详情" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="tdetail.aspx.cs" Inherits="admin_tdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style14">
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                SelectCommand="SELECT * FROM [task] WHERE ([task_id] = @task_id)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="Eval(&quot;task_id&quot;)" 
                        Name="task_id" QueryStringField="task_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            欢迎察看社团活动详情<br />
            <br />
            <table class="style14">
                <tr>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                            Height="50px" Width="495px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderTemplate>
                                活动详情
                            </HeaderTemplate>
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

