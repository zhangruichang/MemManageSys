<%@ Page Title="任务详情" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="Tasks_Details.aspx.cs" Inherits="MyZone_Tasks_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style12
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td >
                                <span class="style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 任务标题:</span><asp:Label ID="TitleLabel" runat="server" 
                                    Font-Bold="True" Font-Size="XX-Large" style="font-size: x-large"></asp:Label>
                                </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;发布时间:&nbsp;&nbsp;
                                <asp:Label ID="TimeLabel" runat="server"></asp:Label>
&nbsp;&nbsp; 发布人：
                                <asp:Label ID="who" runat="server"></asp:Label>
                &nbsp;&nbsp; 地点：<asp:Label ID="SpotLabel" runat="server"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td>
                                任务详情:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="ContentLabel" runat="server"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp; 修改任务状态&nbsp; 
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem Value="未领取"></asp:ListItem>
                    <asp:ListItem Value="已领取"></asp:ListItem>
                    <asp:ListItem Value="拒绝"></asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

