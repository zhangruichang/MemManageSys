<%@ Page Title="发布任务" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="Deliver_Tasks.aspx.cs" Inherits="MyZone_Deliver_Tasks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 90%;
        }
        .style4
        {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <table class="style3" align="center">
                    <tr>
                        <td style="text-decoration: underline">
                            <strong>任务标题：</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TitleBox" runat="server" Width="380px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TitleBox"><img alt=" 必须输入标题" src="../images/wrong.gif"/>请输入标题</asp:RequiredFieldValidator>
                            <br />
                            <div class="inputtxt zi_9" 
                                style="font-family: 宋体, Arial, Helvetica, sans-serif; font-size: medium; color: #C0C0C0">
                                6-80个字符，不允许特殊字符和全角字符、空格不能在首尾、下划线不能在最后、汉字算两位</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>任务时间：</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TimeBox" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="Hour" runat="server">
                            </asp:DropDownList>
                            时<asp:DropDownList ID="Minute" runat="server">
                            </asp:DropDownList>
                            分<br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TimeBox" ErrorMessage="请指定活动时间"><img alt="必须输入活动时间!" 
                                src="../images/wrong.gif" />请输入活动时间</asp:RequiredFieldValidator>
                            &nbsp;&nbsp;
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="TimeBox" ErrorMessage="时间格式错误!" MaximumValue="2012-12-31" 
                                MinimumValue="2011-01-01" Type="Date"><img alt="注意时间格式!" 
                                src="../images/wrong.gif" />时间格式错误</asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>任务地点：</strong></td>
                        <td align="left">
                            <asp:TextBox ID="SpotBox" runat="server" Width="380px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="SpotBox" ErrorMessage="RequiredFieldValidator"><img 
                                alt="必须输入任务活动时间!" src="../images/wrong.gif" />请输入活动地点</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>任务级别：</strong></td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>任务类型：</strong></td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList2" runat="server" >
                                <asp:ListItem>会议</asp:ListItem>
                                <asp:ListItem>团建</asp:ListItem>
                                <asp:ListItem>项目</asp:ListItem>
                                <asp:ListItem>教学</asp:ListItem>
                                <asp:ListItem>招新</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>任务内容：</strong></td>
                        <td align="left">
                            <asp:TextBox ID="ContentBox" runat="server" Height="200px" MaxLength="250" 
                                TextMode="MultiLine" Width="380px" BackColor="White" ToolTip="在此编辑文本"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="ContentBox" ErrorMessage="输入不少于50个字符"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <strong>发布人：<br />
                            <br />
                            <asp:Label ID="label1" runat="server" Text="接收人："></asp:Label>
                            </strong></td>
                        <td align="left" class="style4">
                            <asp:TextBox ID="IssueBox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="IssueBox" ErrorMessage="RequiredFieldValidator"><img 
                                alt="必须输入活动时间!" src="../images/wrong.gif" />请输入发布人</asp:RequiredFieldValidator>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:MemManaSysConnectionString1 %>" 
                                SelectCommand="SELECT [mno] FROM [member]"></asp:SqlDataSource>
                            <br />
                            <asp:DropDownList ID="DropDownList3" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="mno" DataValueField="mno">
                                <asp:ListItem Value=" "> </asp:ListItem>
                            </asp:DropDownList>
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="label2" runat="server" Text="状态："></asp:Label>
                            &nbsp;<asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>未完成</asp:ListItem>
                                <asp:ListItem>已完成</asp:ListItem>
                            </asp:DropDownList>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Button ID="Deliver" runat="server" onclick="Deliver_Click" OnClientClick="return sureExecutecode()" Text="发布" 
                                style="height: 21px" />
                        </td>
                        <td align="left" class="style4">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Back" runat="server" Text="返回" CausesValidation="False" 
                                onclick="Back_Click" style="height: 21px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td align="left" class="style4">
                            &nbsp;<asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Content>

