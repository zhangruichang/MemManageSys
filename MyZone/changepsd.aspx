<%@ Page Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="changepsd.aspx.cs" Inherits="MyZone_changepsd" Title="修改密码" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 72px;
    }
        .style8
        {
            width: 25%;
        }
    .style12
    {
        width: 339px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td class="style12">
            原密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            新密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            再次输入： 
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="28px" onclick="Button1_Click" 
                Text="确定" Width="70px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="25px" Text="返回" Width="79px" />
        </td>
    </tr>
</table>
</asp:Content>

