<%@ Page Title="文件下载" Language="C#" MasterPageFile="~/MyZone/Zone.master" AutoEventWireup="true" CodeFile="DownloadFile.aspx.cs" Inherits="MyZone_DownloadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grdFileList" runat="server" BackColor="White" BorderColor="#DEDFDE"
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"
            AutoGenerateColumns="False" Height="115px" Width="846px">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:TemplateField HeaderText="文件名">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# GetFileUrl(Eval("SaveAddress").ToString(),Eval("NewFileName").ToString()) %>'
                            Text='<%# Eval("OldFileName") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UploadTime" HeaderText="上传时间" DataFormatString="{0:yyyy-MM-dd}"
                    HtmlEncode="False" />
            <asp:BoundField DataField="TypeName" HeaderText="文件类型" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
</asp:Content>

