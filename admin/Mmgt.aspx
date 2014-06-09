<%@ Page Title="修改会员基本信息" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Mmgt.aspx.cs" Inherits="admin_Mmgt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
            UpdateCommand="UPDATE [member] SET [mage] = @mage, [coll] = @coll, [prof] = @prof, [psd] = @psd, [level_id] = @level_id, [ismoney] = @ismoney, [department] = @department, [ques] = @ques, [ans] = @ans WHERE [mno] = @mno"
            InsertCommand="INSERT INTO [member] ([mno], [mname], [msex], [mage], [coll], [prof], [psd], [level_id], [ismoney], [department], [issysmng], [ques], [ans]) VALUES (@mno, @mname, @msex, @mage, @coll, @prof, @psd, @level_id, @ismoney, @department, @issysmng, @ques, @ans)"
            DeleteCommand="DELETE FROM [member] WHERE [mno] = @mno"
            SelectCommand="SELECT * FROM [member] WHERE ([mno] = @mno)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Eval(&quot;mno&quot;)" Name="mno" 
                    QueryStringField="mno" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="mno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="mno" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="msex" Type="String" />
                <asp:Parameter Name="mage" Type="Int32" />
                <asp:Parameter Name="coll" Type="String" />
                <asp:Parameter Name="prof" Type="String" />
                <asp:Parameter Name="psd" Type="String" />
                <asp:Parameter Name="level_id" Type="Int32" />
                <asp:Parameter Name="ismoney" Type="Boolean" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="issysmng" Type="Int32" />
                <asp:Parameter Name="ques" Type="String" />
                <asp:Parameter Name="ans" Type="String" />
            </InsertParameters>
            
            <UpdateParameters>
                <asp:Parameter Name="mno" Type="String" />
                <asp:Parameter Name="mname" Type="String" />
                <asp:Parameter Name="msex" Type="String" />
                <asp:Parameter Name="mage" Type="Int32" />
                <asp:Parameter Name="coll" Type="String" />
                <asp:Parameter Name="prof" Type="String" />
                <asp:Parameter Name="psd" Type="String" />
                <asp:Parameter Name="level_id" Type="Int32" />
                <asp:Parameter Name="ismoney" Type="Boolean" />
                <asp:Parameter Name="department" Type="String" />
                <asp:Parameter Name="issysmng" Type="Int32" />
                <asp:Parameter Name="ques" Type="String" />
                <asp:Parameter Name="ans" Type="String" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="mno" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="45px" Width="562px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="mno" HeaderText="会员号" ReadOnly="True" 
                    SortExpression="mno" />
                <asp:BoundField DataField="mname" HeaderText="姓名" ReadOnly="True" 
                    SortExpression="mname" />
                <%--<asp:BoundField DataField="msex" HeaderText="性别" SortExpression="msex" />--%>
                <asp:BoundField DataField="mage" HeaderText="年龄" SortExpression="mage" />
                <asp:BoundField DataField="coll" HeaderText="学院" SortExpression="coll" />
                <asp:BoundField DataField="prof" HeaderText="专业" SortExpression="prof" />
                <asp:BoundField DataField="level_id" HeaderText="任务级别" 
                    SortExpression="level_id" />
                <asp:CheckBoxField DataField="ismoney" HeaderText="缴费" 
                    SortExpression="ismoney" />
                <asp:BoundField DataField="department" HeaderText="部门" 
                    SortExpression="department" />
                <asp:BoundField DataField="ques" HeaderText="问题" SortExpression="ques" />
                <asp:BoundField DataField="ans" HeaderText="答案" SortExpression="ans" />
                <asp:CommandField HeaderText="管理" ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                会员管理
            </HeaderTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </asp:Content>

