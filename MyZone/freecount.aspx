<%@ Page Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="freecount.aspx.cs" Inherits="MyZone_freecount" Title="空课统计" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 82px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style3">
    <tr>
        <td>
            <table class="style3" style="height: 340px; width: 101%">
                <tr>
                    <td class="style6">
                        星期一</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="40px" 
                            RepeatDirection="Horizontal" Width="309px">
                            <asp:ListItem Value="11节课"></asp:ListItem>
                            <asp:ListItem Value="12节课"></asp:ListItem>
                            <asp:ListItem Value="13节课"></asp:ListItem>
                            <asp:ListItem Value="课后"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        星期二</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" Height="40px" 
                            RepeatDirection="Horizontal" Width="309px">
                            <asp:ListItem Value="11节课"></asp:ListItem>
                            <asp:ListItem Value="12节课"></asp:ListItem>
                            <asp:ListItem Value="13节课"></asp:ListItem>
                            <asp:ListItem Value="课后"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        星期三</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList3" runat="server" Height="40px" 
                            RepeatDirection="Horizontal" Width="309px">
                            <asp:ListItem Value="11节课"></asp:ListItem>
                            <asp:ListItem Value="12节课"></asp:ListItem>
                            <asp:ListItem Value="13节课"></asp:ListItem>
                            <asp:ListItem Value="课后"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        星期四</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList4" runat="server" Height="40px" 
                            RepeatDirection="Horizontal" Width="309px">
                            <asp:ListItem Value="11节课"></asp:ListItem>
                            <asp:ListItem Value="12节课"></asp:ListItem>
                            <asp:ListItem Value="13节课"></asp:ListItem>
                            <asp:ListItem Value="课后"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        星期五</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList5" runat="server" Height="40px" 
                            RepeatDirection="Horizontal" Width="309px">
                            <asp:ListItem Value="11节课"></asp:ListItem>
                            <asp:ListItem Value="12节课"></asp:ListItem>
                            <asp:ListItem Value="13节课"></asp:ListItem>
                            <asp:ListItem Value="课后"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button1" runat="server" Height="37px" onclick="Button1_Click" 
                Text="确定" Width="57px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="36px" Text="返回" Width="55px" />
        &nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>




</asp:Content>


