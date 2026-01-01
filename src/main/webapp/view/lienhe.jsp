<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.NguoiDung" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cây Cảnh</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/duan.css" />
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
    		<input type="text" placeholder="Bạn đang tìm cây gì...">
  			<span class="search-icon">🔍</span>
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
            <a href="#" class="cart">🛒 Giỏ hàng</a>
        </div>
    </div>
</header>

<!-- MENU -->
<nav class="menu-bar">
    <div class="container menu-flex"> 
        <label for="toggle-category" class="btn-category">
            ☰ Danh mục sản phẩm
        </label>

        <ul class="main-menu">
            <li><a href="index.jsp">Trang chủ</a></li>
            <li><a href="gioithieu.jsp">Giới thiệu</a></li>
            <li><a href="tintuc.jsp">Tin tức</a></li>

            <!-- CÁCH CHĂM SÓC -->
            <li class="has-sub">
                <input type="checkbox" id="care">
                <label for="care">Cách chăm sóc ▾</label>
                <ul class="sub-menu">
                     <li><a href="chamcayvanphong.jsp">Cây văn phòng</a></li>
                    <li><a href="chamcaythuysinh.jsp">Cây thủy sinh</a></li>
                </ul>
            </li>

            <li><a href="#">Liên hệ</a></li>

            <!-- CHÍNH SÁCH -->
            <li class="has-sub">
                <input type="checkbox" id="policy">
                <label for="policy">Chính sách ▾</label>
                <ul class="sub-menu">
                    <li><a href="#">Đổi trả</a></li>
                    <li><a href="#">Bảo hành</a></li>
                </ul>
            </li>      
        </ul>
    </div>
</nav>
<input type="checkbox" id="toggle-category">
<section class="main-content container">

    <aside class="category-panel">
        <ul>
            <li><a href="#">Cây Cảnh Phong Thủy</a></li>
            <li><a href="#">Cây Cảnh Trong Nhà</a></li>
            <li><a href="#">Cây Để Bàn</a></li>
            <li><a href="#">Cây Văn Phòng</a></li>
            <li><a href="#">Cây Thủy Sinh</a></li>
            <li><a href="#">Cây Xương Rồng Cảnh</a></li>
            <li><a href="#">Cây Loại To</a></li>
            <li><a href="#">Cây Cảnh Sen Đá</a></li>
            <li><a href="#">Cây Công Trình</a></li>
        </ul>
    </aside>
</section>

<section class="contact-section">

    <h2 class="contact-title">Liên hệ với chúng tôi</h2>
    <p class="contact-desc">
        Nếu bạn cần tư vấn về cây cảnh, dự án hoặc dịch vụ chăm sóc cây xanh,
        vui lòng liên hệ với Web Cây Cảnh theo thông tin bên dưới.
    </p>

    <div class="contact-wrapper">

        <!-- THÔNG TIN LIÊN HỆ -->
        <div class="contact-info">
            <h3>CÔNG TY TNHH WEBCAYCANH</h3>

            <p><strong>📍 Địa chỉ:</strong> Số 60 – Ngõ 235 Yên Hòa, Quận Cầu Giấy, Hà Nội</p>
            <p><strong>📞 Hotline:</strong> 0988 833 653</p>
            <p><strong>📧 Email:</strong> webcaycanhhot@gmail.com</p>
            <p><strong>🕒 Giờ làm việc:</strong> 8:00 – 18:00 (Thứ 2 – CN)</p>
        </div>

        <!-- FORM LIÊN HỆ -->
        <div class="contact-form">
            <h3>Gửi liên hệ</h3>

            <form action="#" method="post">
                <input type="text" name="name" placeholder="Họ và tên" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="text" name="phone" placeholder="Số điện thoại">
                <textarea name="message" placeholder="Nội dung liên hệ" rows="5"></textarea>

                <button type="submit">Gửi liên hệ</button>
            </form>
        </div>

    </div>

    <!-- GOOGLE MAP -->
    <div class="contact-map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.1371634262805!2d105.79209818343881!3d21.02170676862991!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab506260a04f%3A0xa97effe60af09306!2zV2ViIEPDonkgQ-G6o25o!5e0!3m2!1svi!2s!4v1671702197326!5m2!1svi!2s"
            width="100%"
            height="350"
            style="border:0;"
            allowfullscreen=""
            loading="lazy">
        </iframe>
    </div>

</section>

<footer class="site-footer">
    <div class="footer-container">

        <div class="footer-col">
            <h3>CÔNG TY TNHH WEBCAYCANH</h3>

            <p><i class="">🏠</i> Văn phòng: Số 3, phố Hoàng Lộc, khu 17 TP Hải Dương</p>
            <p><i class="">👤</i> Người đại diện: Nguyễn Phi Mạnh</p>
            <p><i class="">🌐</i> Mã số thuế: 0801244382</p>
            <p><i class="">✉</i> webcaycanhhot@gmail.com</p>
            <p><i class="">📞</i> Phản ánh: 0972 422 110</p>
        </div>

        <div class="footer-col">
            <h3>Địa chỉ bán buôn bán lẻ</h3>

            <p class="bold">Tại Cơ Sở 1</p>
            <p>Số 60 – Ngõ 235</p>
            <p>Yên Hòa – Quận Cầu Giấy – Hà Nội</p>
            <p>ĐT: 0972 422 110</p>
        </div>

        <div class="footer-col">
            <h3>Danh mục</h3>
            <ul class="footer-links">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="#">Chính sách bảo hành</a></li>
                <li><a href="#">Chính sách đổi trả hàng</a></li>
                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                <li><a href="#">Sitemaps</a></li>
            </ul>
        </div>

    </div>
</footer>

</body>
</html>