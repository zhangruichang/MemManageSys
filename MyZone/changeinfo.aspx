<%@ Page Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="changeinfo.aspx.cs" Inherits="MyZone_viewinfo" Title="修改资料" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        height: 366px;
        width: 662px;
    }
        .style8
        {
            width: 39%;
        }
        .style9
        {
            height: 366px;
            width: 39%;
        }
        .style12
        {
            width: 100%;
        }
        .style13
        {
            width: 183px;
        }
        .style14
        {
            width: 267px;
        }
        .style15
        {
            width: 183px;
            height: 66px;
        }
        .style16
        {
            width: 267px;
            height: 66px;
        }
        .style17
        {
            height: 66px;
        }
        .style19
        {
            height: 66px;
            width: 259px;
        }
        .style20
        {
            width: 246px;
        }
        .style22
        {
            width: 316px;
        }
        .style23
        {
            width: 259px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style12">
        <tr>
            <td>
                <table class="style12">
                    <tr>
                        <td class="style16" align="center" valign="middle">
                            个人基本信息</td>
                        <td class="style19" align="center">
                            联系信息</td>
                        <td class="style17">
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
            <table class="style3">
                <tr>
                    <td class="style22">
                        用户 名： 
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        姓&nbsp;&nbsp;&nbsp; 名：&nbsp; 
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        性&nbsp;&nbsp;&nbsp; 别：&nbsp; 
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        年&nbsp;&nbsp;&nbsp; 龄：&nbsp; 
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        学&nbsp;&nbsp;&nbsp; 院：&nbsp; 
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        专&nbsp;&nbsp;&nbsp; 业：&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        部门名：&nbsp; 
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
            </table>
                        </td>
                        <td class="style23">
            <table class="style3">
                <tr>
                    <td class="style20">
                        手机号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 
                        <asp:TextBox ID="TextBox9" runat="server" Height="16px" Width="106px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        QQ号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox10" runat="server" Height="17px" Width="108px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        电子邮箱：&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox11" runat="server" 
                            Height="16px" Width="113px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        网聚论坛账号： <asp:TextBox ID="TextBox12" runat="server" Height="16px" Width="114px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style20">
                        支付宝账号：&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:TextBox ID="TextBox13" runat="server" Height="18px" Width="116px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                        <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                            Text="修改" Width="61px" />
&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="28px" onclick="Button2_Click" 
                            Text="返回" Width="60px" />
                    </td>
        </tr>
    </table>
    
</asp:Content>

