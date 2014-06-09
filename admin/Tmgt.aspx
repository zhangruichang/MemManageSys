<%@ Page Title="修改任务详情" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Tmgt.aspx.cs" Inherits="admin_Tmgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style14" style="height: 78px">
    <tr>
        <td>
            <table class="style14">
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                            DeleteCommand="DELETE FROM [task] WHERE [task_id] = @task_id" 
                            InsertCommand="INSERT INTO [task] ([title], [area], [start], [end], [type], [task_level], [content], [mno], [state], [who], [receiver]) VALUES (@title, @area, @start, @end, @type, @task_level, @content, @mno, @state, @who, @receiver)" 
                            SelectCommand="SELECT * FROM [task] WHERE ([task_id] = @task_id)" 
                            UpdateCommand="UPDATE [task] SET [title] = @title, [area] = @area, [start] = @start, [end] = @end, [type] = @type, [task_level] = @task_level, [content] = @content, [mno] = @mno, [state] = @state, [who] = @who, [receiver] = @receiver WHERE [task_id] = @task_id">
                            <DeleteParameters>
                                <asp:Parameter Name="task_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                                <asp:Parameter Name="start" Type="DateTime" />
                                <asp:Parameter Name="end" Type="DateTime" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="task_level" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                                <asp:Parameter Name="mno" Type="String" />
                                <asp:Parameter Name="state" Type="String" />
                                <asp:Parameter Name="who" Type="String" />
                                <asp:Parameter Name="receiver" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="Eval(&quot;task_id&quot;)" 
                                    Name="task_id" QueryStringField="task_id" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="area" Type="String" />
                                <asp:Parameter Name="start" Type="DateTime" />
                                <asp:Parameter Name="end" Type="DateTime" />
                                <asp:Parameter Name="type" Type="String" />
                                <asp:Parameter Name="task_level" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                                <asp:Parameter Name="mno" Type="String" />
                                <asp:Parameter Name="state" Type="String" />
                                <asp:Parameter Name="who" Type="String" />
                                <asp:Parameter Name="receiver" Type="String" />
                                <asp:Parameter Name="task_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:DetailsView ID="DetailsView2" runat="server" CellPadding="4" 
                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                            Height="65px" Width="426px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <Fields>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderTemplate>
                                活动管理
                            </HeaderTemplate>
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

