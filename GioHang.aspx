<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align:center; vertical-align: middle; margin-left: 200px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Width="100%" ForeColor="#333333" Height="361px" OnRowCommand="GridView1_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:ImageField DataAlternateTextField="Hinh" DataImageUrlField="Hinh" HeaderText="Hình ảnh">
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle Height="20px" />
                <ItemStyle Height="100px" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="MaSP" HeaderText="Mã Sản phẩm" />
            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản phẩm">
            <ControlStyle Width="300px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Text='<%# Eval("SoLuong") %>' Width="64px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Gia" HeaderText="Giá" />
            <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" />
            <asp:ButtonField Text="Cập nhật" CommandName="capnhat" >
            <HeaderStyle Width="30px" />
            </asp:ButtonField>
            <asp:ButtonField Text="Xóa" CommandName="xoa" >
            <HeaderStyle Width="30px" />
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="10px" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</p>
    <p style="text-align:left; vertical-align: middle; margin-left: 200px; padding-left: 200px;">
        <asp:Label ID="Label4" runat="server" ForeColor="#FF6600" Text="Tổng tiền thanh toán: "></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Names="#9Slide03 Comfortaa" ForeColor="#FF6600" Font-Bold="True"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLQA %>"></asp:SqlDataSource>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</p>
    <p style="text-align:left; vertical-align: middle; margin-left: 200px; padding-left: 200px;">
        <asp:ImageButton ID="btThanhtoan" runat="server" ImageUrl="~/Image/Thanhtoan.PNG" OnClick="btThanhtoan_Click" />
</p>
<p style="text-align:left; vertical-align: middle; margin-left: 200px; padding-left: 200px;">
        &nbsp;</p>
</asp:Content>

 