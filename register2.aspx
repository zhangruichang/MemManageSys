<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="register2" Title="注册-联系信息" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 288%;
            height: 292px;
        }
        .style3
        {
            width: 531px;
        }
        .style4
        {
            width: 38px;
            background-color: #FFFFFF;
        }
        .style9
        {
            width: 124px;
            color: #FF6600;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9" style="background-color: #FFFFFF">
                &nbsp;</td>
            <td class="style3">
                手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                机 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="手机格式错误" 
                    ValidationExpression="^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$"></asp:RegularExpressionValidator>
                <br />
                <br />
                Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号 
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="QQ号格式错误" 
                    ValidationExpression="[1-9][0-9]{4,}"></asp:RegularExpressionValidator>
                <br />
                <br />
                电&nbsp;&nbsp; 子&nbsp; 邮 箱&nbsp; 
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="电子邮箱格式错误" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<br />
                <br />
                网聚论坛账号<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                支 付 宝 账 号<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click" 
                    Text="确定" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                    Text="赶紧登陆" Visible="False" Width="64px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

