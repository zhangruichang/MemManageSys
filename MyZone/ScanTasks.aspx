<%@ Page Title="查看任务" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="ScanTasks.aspx.cs" Inherits="MyZone_ScanTasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            height: 25px;
        }
        .style4
        {
            height: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                    <table class="style1">
                        <tr>
                            <td align="center" class="style2">
                                <asp:Label ID="Label1" runat="server" ForeColor="#F09417" 
                                    style="font-size: x-large; font-weight: 700; font-family: 黑体" 
                                    Text="我发布的任务列表"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style2">
                                <asp:RadioButton ID="all" runat="server" Checked="True" GroupName="grope" 
                                    Text="全部" Font-Bold="True" Font-Size="Large" />
&nbsp;
                                &nbsp;
                                <asp:RadioButton ID="finish" runat="server" GroupName="grope" 
                                    Text="已完成" Font-Bold="True" Font-Size="Large" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="unfinish" runat="server" GroupName="grope" Text="未完成" 
                                    Font-Bold="True" Font-Size="Large" />
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="Search" runat="server" Text="查询" Height="30px" 
                                    onclick="Search_Click" Width="80px" Font-Bold="True" Font-Size="Large" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="style4" valign="top">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="task_id" 
                                    DataSourceID="SqlDataSource1" EmptyDataText="没有可显示的数据记录。" 
                                    BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" GridLines="Horizontal" 
                                    onrowdatabound="GridView1_RowDataBound" Height="268px" Width="1000px">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ButtonType="Image" 
                                            DeleteImageUrl="~/images/wrong.gif" HeaderText="删除" />
                                        <asp:BoundField DataField="task_id" HeaderText="任务号" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="task_id" />
                                        <asp:HyperLinkField DataNavigateUrlFields="task_id" 
                                            DataNavigateUrlFormatString="Deliver_Tasks.aspx?id={0}" DataTextField="title" 
                                            DataTextFormatString="{0}" HeaderText="标题" Target="_blank" />
                                        <asp:BoundField DataField="area" HeaderText="地点" SortExpression="area" />
                                        <asp:BoundField DataField="start" HeaderText="时间" SortExpression="start" />
                                        <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
                                        <asp:BoundField DataField="who" HeaderText="发布人" SortExpression="who" />
                                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" />
                                    </Columns>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    DeleteCommand="DELETE FROM [task] WHERE [task_id] = @task_id" 
                                    InsertCommand="INSERT INTO [task] ([title], [area], [start], [end], [type], [task_level], [mno], [state], [who]) VALUES (@title, @area, @start, @end, @type, @task_level, @mno, @state, @who)" 
                                    ProviderName="<%$ ConnectionStrings:MemManaSysConnectionString1.ProviderName %>" 
                                    SelectCommand="SELECT [task_id], [title], [area], [start], [end], [type], [task_level], [mno], [state], [who] FROM [task] WHERE ([mno] = @mno)" 
                                    
                                    UpdateCommand="UPDATE [task] SET [title] = @title, [area] = @area, [start] = @start, [end] = @end, [type] = @type, [task_level] = @task_level, [mno] = @mno, [state] = @state, [who] = @who WHERE [task_id] = @task_id">
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
                                        <asp:Parameter Name="mno" Type="String" />
                                        <asp:Parameter Name="state" Type="String" />
                                        <asp:Parameter Name="who" Type="String" />
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" Type="String" />
                                    </SelectParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="title" Type="String" />
                                        <asp:Parameter Name="area" Type="String" />
                                        <asp:Parameter Name="start" Type="DateTime" />
                                        <asp:Parameter Name="end" Type="DateTime" />
                                        <asp:Parameter Name="type" Type="String" />
                                        <asp:Parameter Name="task_level" Type="String" />
                                        <asp:Parameter Name="mno" Type="String" />
                                        <asp:Parameter Name="state" Type="String" />
                                        <asp:Parameter Name="who" Type="String" />
                                        <asp:Parameter Name="task_id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    ProviderName="<%$ ConnectionStrings:MemManaSysConnectionString1.ProviderName %>" 
                                    
                                    SelectCommand="SELECT [task_id], [title], [start], [type], [end], [task_level], [who], [state], [mno], [area] FROM [task] WHERE (([mno] = @mno) AND ([state] = @state))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" Type="String" />
                                        <asp:Parameter DefaultValue="未完成" Name="state" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    ProviderName="<%$ ConnectionStrings:MemManaSysConnectionString1.ProviderName %>" 
                                    
                                    SelectCommand="SELECT [task_id], [title], [area], [start], [end], [type], [task_level], [who], [mno], [state] FROM [task] WHERE (([mno] = @mno) AND ([state] = @state))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" Type="String" />
                                        <asp:Parameter DefaultValue="已完成" Name="state" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                <br />
    </p>
    <p>
    </p>
</asp:Content>

