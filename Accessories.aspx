<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="Accessories.aspx.cs" Inherits="Accessories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
    <br />
</p>
    <p>
    
        <asp:Label ID="Label7" runat="server" Text="Sắp xếp theo:"></asp:Label>
<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="1">Tăng dần theo tên</asp:ListItem>
            <asp:ListItem Value="2">Giảm dần theo tên</asp:ListItem>
            <asp:ListItem Value="3">Tăng dần theo giá</asp:ListItem>
            <asp:ListItem Value="4">Giảm dần theo giá</asp:ListItem>
        </asp:DropDownList>
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Sắp xếp" />
    </p>

    <p>
        <h1>ACCESSORIES</h1>
        <asp:DataList ID="DataList1" runat="server" CellPadding="10" CellSpacing="10" DataSourceID="SqlDataSource1" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <a href="ChiTietMatHang.aspx?MaSP='<%# Eval("MASP") %>'" >
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("HINHANH") %>' Height="160px" Width="208px" />
                    </a>
<br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#993300" Text='<%# Eval("DONGIA") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#993300" Text='<%# " VNĐ" %>'></asp:Label>
<br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("TENSP") %>'></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/giohang.PNG" CommandArgument='<%# Eval("MaSP") %>' />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:QLQA %>"
            SelectCommand="SELECT * FROM SANPHAM WHERE MALOAI=4"
            ></asp:SqlDataSource>
    </p>
</asp:Content>

