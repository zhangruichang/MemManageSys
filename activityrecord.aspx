<%@ Page Title="最近活动记录" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="activityrecord.aspx.cs" Inherits="hdjl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 393px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 16px">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" SelectCommand="select *
from task
where start=(select MAX(start)
from task
where start<GETDATE ()
)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" SelectCommand="select pageinfo from pageinfo
where id=(select task_id
from task
where start=(select MAX(start)
from task
where start<GETDATE ()))"></asp:SqlDataSource>
        <br />
        <table class="style1">
            <tr>
                <td class="style11">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlDataSource2" Height="69px" Width="250px" AutoGenerateRows="False" 
                        CellPadding="4" DataKeyNames="task_id" ForeColor="#333333" 
                        GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="task_id" HeaderText="任务号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="task_id" />
                <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" />
                <asp:BoundField DataField="area" HeaderText="地点" SortExpression="area" />
                <asp:BoundField DataField="start" HeaderText="开始时间" SortExpression="start" />
                <asp:BoundField DataField="end" HeaderText="地点" SortExpression="end" />
                <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
                <asp:BoundField DataField="task_level" HeaderText="任务级别" 
                    SortExpression="task_level" />
                <asp:BoundField DataField="content" HeaderText="内容" 
                    SortExpression="content" />
                <asp:BoundField DataField="mno" HeaderText="发布人" SortExpression="mno" />
                <asp:BoundField DataField="state" HeaderText="任务状态" SortExpression="state" />
                <asp:BoundField DataField="who" HeaderText="发布人名字" SortExpression="who" />
                <asp:BoundField DataField="receiver" HeaderText="任务执行人" 
                    SortExpression="receiver" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
                </td>
                <td>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pageinfo") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

