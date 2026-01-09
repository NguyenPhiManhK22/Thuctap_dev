<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.GioHangDAO" %>
<%@ page import="model.GioHang" %>
<%@ page import="model.NguoiDung" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.SanPhamDAO" %>
<%@ page import="model.SanPham" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cây Cảnh</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/giohang.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/stylles.css" />
    <link rel="icon" type="/image/jpg" href="${pageContext.request.contextPath}/images/Logo.jpg" />
</head>
<body>
<header class="header-top">
    <div class="container header-flex">
    		<div class="logo">
        		<a href="#"><img src="${pageContext.request.contextPath}/images/Logo.jpg" alt="Cây cảnh" /></a>
			</div>
        <div class="search-box">
    		<form action="${pageContext.request.contextPath}/view/timkiem.jsp" method="get">
        		<input type="text" name="keyword" placeholder="Bạn đang tìm kiếm Cây gì..." required />
        		<button type="submit"><i class="search-icon">🔍</i></button>
    		</form>
		</div>
        <div class="header-right">
            <%
                NguoiDung userLogin = (NguoiDung) session.getAttribute("userLogin");
                if (userLogin != null) {
            %>
                <span>Xin chào, <%= userLogin.getHoTen() %>!</span>
                <a href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
            <%
                } else {
            %>
                <a href="${pageContext.request.contextPath}/login"><i class="fas fa-user"></i><span>Đăng nhập</span></a>
            <%
                }
            %>   
            <a href="${pageContext.request.contextPath}/view/giohang.jsp" class="cart">🛒 Giỏ hàng</a>
        </div>
    </div>
</header>
<nav class="menu-bar">
    <div class="container menu-flex"> 
        <label for="toggle-category" class="btn-category">
            ☰ Danh mục sản phẩm
        </label>

        <ul class="main-menu">
            <li><a href="${pageContext.request.contextPath}/view/index.jsp">Trang chủ</a></li>
            <li><a href="${pageContext.request.contextPath}/view/gioithieu.jsp">Giới thiệu</a></li>
            <li><a href="${pageContext.request.contextPath}/view/tintuc.jsp">Tin tức</a></li>

            <li class="has-sub">
                <input type="checkbox" id="care">
                <label for="care">Cách chăm sóc ▾</label>
                <ul class="sub-menu">
                    <li><a href="${pageContext.request.contextPath}/view/chamcayvanphong.jsp">Cây văn phòng</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/chamcaythuysinh.jsp">Cây thủy sinh</a></li>
                </ul>
            </li>

            <li><a href="${pageContext.request.contextPath}/view/lienhe.jsp">Liên hệ</a></li>

            <li class="has-sub">
                <input type="checkbox" id="policy">
                <label for="policy">Chính sách ▾</label>
                <ul class="sub-menu">
                    <li><a href="${pageContext.request.contextPath}/view/doitra.jsp">Đổi trả</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/baohanh.jsp">Bảo hành</a></li>
                </ul>
            </li>
			<li><a href="${pageContext.request.contextPath}/donhang">Đơn Hàng</a></li>
         
        </ul>
    </div>
</nav>
</section>
<input type="checkbox" id="toggle-category">
<section class="main-content container">

     <aside class="category-panel">
        <ul>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=1">Cây Cảnh Phong Thủy</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=2">Cây Cảnh Trong Nhà</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=3">Cây Để Bàn</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=4">Cây Văn Phòng</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=5">Cây Thủy Sinh</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=6">Cây Xương Rồng Cảnh</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=7">Cây Loại To</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=8">Cây Cảnh Sen Đá</a></li>
            <li><a href="${pageContext.request.contextPath}/danhmuc?id=9">Cây Công Trình</a></li>
        </ul>
    </aside>
</section>
<div class="cart-container">
    <h2 class="cart-header">Giỏ Hàng Của Bạn</h2>

    <%
        // Kiểm tra và lấy giỏ hàng của người dùng
        if (userLogin == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return; // Dừng thực thi nếu người dùng chưa đăng nhập
        }

        // Lấy giỏ hàng của người dùng từ cơ sở dữ liệu
        GioHangDAO gioHangDAO = new GioHangDAO();
        List<GioHang> cart = gioHangDAO.getCartByUser(userLogin.getMaNguoiDung());

        if (cart != null && !cart.isEmpty()) {
    %>

    <form action="updateCart" method="post">
    <table class="cart-table">
        <tr>
            <th>Sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Tổng</th>
            <th>Thao tác</th>
        </tr>

        <%
            double total = 0; // Tổng giá trị giỏ hàng
            SanPhamDAO sanPhamDAO = new SanPhamDAO();
            for (GioHang item : cart) {
                SanPham sanPham = sanPhamDAO.getSanPhamById(item.getMaSanPham());
                if (sanPham != null) {
                    // Tính tổng giá trị của từng sản phẩm trong giỏ
                    double totalPrice = sanPham.getGia() * item.getSoLuong();
                    total += totalPrice;
        %>
        <tr>
            <td><%= sanPham.getTenSanPham() %></td>
            <td>
                <input type="number" name="soLuong_<%= item.getMaSanPham() %>" value="<%= item.getSoLuong() %>" min="1" />
            </td>
            <td><%= String.format("%,.0f", sanPham.getGia()) %> VNĐ</td>
            <td><%= String.format("%,.0f", totalPrice) %> VNĐ</td>
            <td>
            <a href="remove?maSanPham=<%= item.getMaSanPham() %>" class="remove-item"><i class="fas fa-trash-alt"></i> Xóa </a>          			 
            <button type="submit" name="update_<%= item.getMaSanPham() %>"  class="update"><i class="fas fa-sync-alt"></i> Cập nhật</button>
            </td>
        </tr>

        <%
                }
            }
        %>
        <tr>
            <td colspan="4" style="text-align: right;">Tổng cộng:</td>
            <td><%= String.format("%,.0f", total) %> VNĐ</td>
        </tr>
    </table>
    
</form>
		<form action="thanhtoan.jsp" method="post">
   			<div class="cart-actions">
     			   <button type="submit" class="btn-payment">Thanh toán</button>
    		</div>
		</form>
    <% } else { %>
        <p>Giỏ hàng của bạn trống.</p>
    <% } %>

</div>

</body>
</html>