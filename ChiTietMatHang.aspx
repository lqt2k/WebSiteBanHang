<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.master" AutoEventWireup="true" CodeFile="ChiTietMatHang.aspx.cs" Inherits="ChiTietMatHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <h1>CHI TIẾT MẶT HÀNG</h1>
    <div>
        <table>
            <tr>
                <td>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <table style="margin-top:10px; margin-left:340px" >
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+ Eval("HINHANH") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="XX-Large" Text='<%# Eval("TenSP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Giá Sản Phẩm:
                            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text='<%# Eval("DONGIA") %>' ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="Về Trang Chủ" Height="50px" BackColor="#FF3300" PostBackUrl="~/TrangChu.aspx" ForeColor="White" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>
                <h1>GIỚI THIỆU</h1>
                <p style="font-size:large">
                    GIỚI THIỆU
Dirty Coins Studio Xuất hiện trên thị trường từ đầu năm 2017, Dirtycoins mang sức mạnh của một thương hiệu local brand đầy cá tính với những sản phẩm thời trang hàng đầu xu thế. Dirtycoins thực chất là một cách lồng ghép khéo léo về sự ra đời của thương hiệu. Chữ Y trên đồng tiền tượng trưng cho tiền thân của Dirtycoins, The Yars Shop. Bắt nguồn từ Yars, Dirtycoins trân trọng giá trị của đồng tiền xương máu, thành quả lao động đầy mồ hôi, bụi bẩn và nước mắt. Với sức hút của mình, Dirtycoins trở thành biểu tượng cho phong cách thời trang mạnh mẽ, táo bạo, và được ưa chuộng rộng rãi. Dirtycoins mang đến một cái góc độ độc đáo không những về phong cách sống mà còn về gu ăn mặc hiện đại. Dirtycoins nhận thức được nhu cầu đang phát triển của thị trường Streetwear Việt Nam. Những mặt hàng thời trang tại Dirtycoins được thiết kế với sự kết hợp văn hoá Châu Á và Châu Âu, tạo ra phong cách độc đáo và mới mẻ. Bên cạnh đó ,với sự phá cách từ tông màu trắng đen, tông màu chủ đạo của đa số dòng thời trang Streetwear, các mẫu thời trang tại Dirtycoins mang nhiều màu sắc phong phú. Đây là cách Dirtycoins mang đến giá trị cho cộng đồng trẻ yêu thích Streetwear, khuyến khích họ mạo hiểm trong gu ăn mặc của mình. Với tính cách mạo hiểm, không ngại rủi ro, Dirtycoins dần mở rộng thị trường trong suốt quá trình phát triển các chi nhánh trên toàn quốc, đem tới 1 nền văn hoá rất riêng của Dirty Coins.
                </p>
            </td>
            </tr>
        </table>
    </div>
    
</asp:Content>

