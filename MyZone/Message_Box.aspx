<%@ Page Title="消息盒子" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="Message_Box.aspx.cs" Inherits="MyZone_Message_Box" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="我的消息盒子" Font-Bold="True" 
                                    Font-Size="XX-Large" ForeColor="#FFCC66" 
                    style="font-family: 黑体; text-align: center;"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td>
                                &nbsp;类型：<asp:DropDownList ID="DropDownList1" runat="server" 
                                    Font-Bold="True" Font-Size="Large" >
                                    
                                    <asp:ListItem Value="会议"></asp:ListItem>
                                    <asp:ListItem Value="团建"></asp:ListItem>
                                    <asp:ListItem Value="教学"></asp:ListItem>
                                    <asp:ListItem Value="招新"></asp:ListItem>
                                    <asp:ListItem Value="项目"></asp:ListItem>
                                    <asp:ListItem Value="全部"></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;级别：<asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" 
                                    Font-Size="Large" >
                                    <asp:ListItem Value="个人级"></asp:ListItem>
                                    <asp:ListItem Value="部门级"></asp:ListItem>
                                    <asp:ListItem Value="社团级"></asp:ListItem>
                                    <asp:ListItem Value="全部"></asp:ListItem>
                                    
                                </asp:DropDownList>
                                &nbsp;状态：<asp:DropDownList ID="DropDownList3" runat="server" 
                                    Font-Bold="True" Font-Size="Large" 
                                    >
                                    <asp:ListItem Value="未领取"></asp:ListItem>
                                    <asp:ListItem Value="已领取"></asp:ListItem>
                                    <asp:ListItem Value="拒绝"></asp:ListItem>
                                    <asp:ListItem Value="过期"></asp:ListItem>
                                    <asp:ListItem Value="已完成"></asp:ListItem>
                                    <asp:ListItem Value="全部"></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;
                                <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                                    Text="查询" Width="57px" />
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and taskdo.state=@st and task.task_level=@level">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                        <asp:ControlParameter ControlID="DropDownList3" Name="st" 
                                            PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    onselecting="SqlDataSource3_Selecting" 
                                    SelectCommand="SELECT distinct(task.task_level) FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="task_id" 
                                    DataSourceID="SqlDataSource2" BackColor="White" BorderColor="White" 
                                    BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" 
                                    GridLines="None">
                                    <Columns>
                                        <asp:BoundField DataField="task_id" HeaderText="任务号" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="task_id" />
                                       
                                        <asp:TemplateField HeaderText="标题" SortExpression="title">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                                    NavigateUrl='<%# "Tasks_Details.aspx?id="+Eval("task_id") %>' 
                                                    Text='<%# Eval("title") %>'></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                       
                                        <asp:BoundField DataField="area" HeaderText="地点" SortExpression="area" />
                                        <asp:BoundField DataField="start" HeaderText="开始时间" SortExpression="start" />
                                        <asp:BoundField DataField="type" HeaderText="类型" SortExpression="type" />
                                        <asp:BoundField DataField="task_level" HeaderText="级别" 
                                            SortExpression="task_level" />
                                        <asp:BoundField DataField="who" HeaderText="发布人" 
                                            SortExpression="who" />
                                        <asp:BoundField DataField="state" HeaderText="状态" SortExpression="state" />
                                    </Columns>
                                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and task.type=@type and taskdo.state=@st">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                        <asp:ControlParameter ControlID="DropDownList1" Name="type" 
                                            PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="DropDownList3" Name="st" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <br />
            </td>
        </tr>
        <tr>
            <td>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and task.type=@type and task.task_level=@level and taskdo.state=@st">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                        <asp:ControlParameter ControlID="DropDownList1" Name="type" 
                                            PropertyName="SelectedValue" />
                                        <%--<asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="DropDownList3" Name="st" 
                                            PropertyName="SelectedValue" />--%>

                                        <asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="DropDownList3" Name="st" 
                                            PropertyName="SelectedValue" />

                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno AND task.task_level = @level">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and task.type=@type">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="user" />
                                        <asp:ControlParameter ControlID="DropDownList1" Name="type" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and task.task_level=@level">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="user" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and taskdo.state=@state">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="user" />
                                        <asp:ControlParameter ControlID="DropDownList3" Name="state" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString %>" 
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="user" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                    
                                    SelectCommand="SELECT task.task_id, task.title, task.area, task.start, task.type, task.task_level, task.who, taskdo.state FROM task INNER JOIN taskdo ON task.task_id = taskdo.task_id AND taskdo.mno = @mno and task.type=@type and task.task_level=@level">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="mno" SessionField="User" />
                                        <asp:ControlParameter ControlID="DropDownList1" Name="type" 
                                            PropertyName="SelectedValue" />
                                        <asp:ControlParameter ControlID="DropDownList2" Name="level" 
                                            PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                </td>
        </tr>
    </table>
</asp:Content>

