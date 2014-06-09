<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="findpsd.aspx.cs" Inherits="findpsd" Title="找回密码" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 93px;
        }
        .style5
        {
            width: 233px;
        }
        .style6
        {
            width: 96px;
        }
        .content{width: 97%; margin-top:100px; }
        .content td{ float:left; width:100%; margin:10px; padding:10px 10px 10px 350px; vertical-align:middle; text-align:left;}
        .style9
        {
            width: 120px;
        }
        .style10
        {
            width: 515px;
        }
    .style11
    {
        height: 74px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <p>
        <table class="style1">
        <tr>
        <td class="style11"></td><td class="style11"></td><td class="style11"></td>
        </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    您的密码丢失，请输入相关信息，便于我们找回您的密码</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Panel ID="Panel1" runat="server">
                        用户名 
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                        Text="下一步" Width="69px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Height="22px" Text="返回" Width="67px" 
                            onclick="Button3_Click" />
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Panel ID="Panel2" runat="server">
                        <p>
                            问题&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </p>
                        <p>
                            答案&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button ID="Button4" runat="server" Height="25px" onclick="Button4_Click" 
                                Text="查找" Width="72px" />
                            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Height="23px" Text="返回" 
                                Width="70px" onclick="Button5_Click" />
                        </p>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style10">
                    <asp:Panel ID="Panel3" runat="server">
                        密码&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    
    
</asp:Content>

