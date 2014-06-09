<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="admin_admin_home" Title="管理员主页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            width: 378px;
        }
        .style19
        {
            color: #FF0000;
        }
        .style21
        {
            text-align: left;
        }
        .style22
        {
            color: #0000FF;
        }
        .style23
        {
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 52px">
        <br />
    </p>
    <table class="style14">
        <tr>
            <td>
                <table class="style14">
                    <tr>
                        <td class="style18">
                            <table class="style14" style="width: 98%; height: 230px;">
                                <tr>
                                    <td class="style21">
                                        <span class="style23">管理员行为规范</span><span class="style19"><br />
                                        </span><br />
                                        <span class="style22">第一：管理员不许以任何形式向别人泄露会员隐私信息。</span><br class="style22" />
                                        <br class="style22" />
                                        <span class="style22">第二：管理员不准在未经社长允许的情况下，随意删改社团会员信息。</span><br 
                                            class="style22" />
                                        <br class="style22" />
                                        <span class="style22">第三：管理员有维护社团网站数据库信息的职责，管理员应及时规范会员不合理数据信息。</span><br 
                                            class="style22" />
                                        <br class="style22" />
                                        <span class="style22">第四：管理员所做的事情要以会员利益为上，辛苦自己，为本社团服好务。</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                BorderColor="#FFCC66" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#663399" Height="200px" 
                                Width="220px" BorderWidth="1px" DayNameFormat="Shortest" 
                                ShowGridLines="True">
                                <DayHeaderStyle Font-Bold="True" 
                                    Height="1px" BackColor="#FFCC66" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" 
                                    Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

