<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/StyleSheetHome.css" rel="stylesheet" />
            <div class="slideshow-container">
              <div class="mySlides fade" style="width:100%; margin-top: 80px;">
                <img src="Image/slide-img1.jpg" style="max-width:100%"/>
              </div>
              <div class="mySlides fade">
                <img src="Image/slide-img2.jpg" style="max-width:100%; margin-top: 80px;"/>
              </div>
              <div class="mySlides fade">
                <img src="Image/slide-img3.jpg" style="max-width:100%; margin-top: 80px;"/>
              </div>
              <div class="mySlides fade">
                <img src="Image/slide-img4.jpg" style="max-width:100%; margin-top: 80px;"/>
              </div>
            </div>
            <div style="text-align:center; margin-top:-30px">
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span>
            </div>
    <script src="JS/JavaScriptHome.js"></script>
    <p>
    </p>
    <p>
    </p>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Bold  Text="ALL PRODUCT"></asp:Label>
    <br />
    <p>
        <asp:Label ID="Label7" runat="server" Text="Sắp xếp theo:"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="1">Tăng dần theo tên</asp:ListItem>
            <asp:ListItem Value="2">Giảm dần theo tên</asp:ListItem>
            <asp:ListItem Value="3">Tăng dần theo giá</asp:ListItem>
            <asp:ListItem Value="4">Giảm dần theo giá</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Sắp xếp" />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="10" CellSpacing="10" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <a href="ChiTietMatHang.aspx?MaSP='<%# Eval("MASP") %>'" >
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("HINHANH") %>' Height="162px" Width="209px" />
                </a>
                
<br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#993300" Text='<%# Eval("DONGIA") %>'></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#993300" Text='<%# " VNĐ" %>'></asp:Label>
<br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("TENSP") %>'></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/giohang.PNG" CommandArgument='<%# Eval("MaSP") %>' />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:QLQA %>"
            SelectCommand="SELECT * FROM SANPHAM"
            ></asp:SqlDataSource>
    </p>
    <hr />
    <table align="center">
                    <tr align="center">
                        <td colspan="4"><h1>THƯƠNG HIỆU</h1></td>
                    </tr>
                    <tr>
                        <td><asp:Image ID="Image1" runat="server" ImageUrl="~/Image/brand1.png" Height="250px" /></td>
                        <td><asp:Image ID="Image2" runat="server" ImageUrl="~/Image/brand2.webp" Height="250px" /></td>
                        <td><asp:Image ID="Image3" runat="server" ImageUrl="~/Image/brand3.webp" Height="250px" /></td>
                        <td><asp:Image ID="Image4" runat="server" ImageUrl="~/Image/brand4.png" Height="250px" /></td>
                    </tr>
                </table>
    
</asp:Content>

