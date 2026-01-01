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

<section class="news-section">
    <h2 class="section-title">Tin tức Mới Hôm Nay </h2>

    <div class="news-item">
        <a href="tintuc1.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/caycanh1.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="tintuc1.jsp" class="news-title">
                Nên tưới cây bằng nước máy hay nước đun sôi để nguội?
            </a>

            <p class="news-desc">
                Vì sao lại lựa chọn hai loại nước này? Vì nếu bạn ở thành phố và văn phòng thì thường chỉ có hai lựa chọn này là tiện nhất….
            </p>
        </div>
    </div>
    <div class="news-item">
        <a href="tintuc2.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/caycanh2.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="tintuc2.jsp" class="news-title">
                8 yếu tố giúp cây trồng trong nhà luôn xanh tốt
            </a>
            <p class="news-desc">
                Trong thời đại hiện nay, cây trồng trong nhà không chỉ để trang trí mà còn mang lại nhiều lợi ích cho sức khỏe và tinh thần của con người…
            </p>          
        </div>
    </div>
	
	<div class="news-item">
        <a href="tintuc3.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/caycanh3.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="tintuc3.jsp" class="news-title">
                10 loại cây trừ tà trong tháng cô hồn
            </a>

            <p class="news-desc">
                Tháng cô hồn, hay tháng 7 âm lịch, là thời điểm mà nhiều người quan niệm là cửa địa ngục mở, các vong linh trở về dương thế. Để…
            </p>          
        </div>
    </div>
	<div class="news-item">
        <a href="tintuc4.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/caycanh4.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="tintuc4.jsp" class="news-title">
                Tác dụng của cây kim tiền
            </a>
            <p class="news-desc">
                Cây kim tiền vốn là một loại cây cảnh phổ biến trên thị trường. Vì xét về mặt phong thủy thì cây kim tiền mang ý nghĩa hút lộc,…
            </p>          
        </div>
    </div>
	<div class="news-item">
        <a href="duan371.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/Duan371.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="duan371.jsp" class="news-title">
                [Dự án] Trang trí cây xanh biệt thự 371 La Thành
            </a>

            <p class="news-desc">
				Trong xã hội ngày càng phát triển hiện nay, nhu cầu trang trí cây xanh trong các hộ gia đình đang dần trở thành xu hướng không…
            </p>          
        </div>
    </div>
	<div class="news-item">
        <a href="duanvinhomes.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/duanvinhomes.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="duanvinhomes.jsp" class="news-title">
                [Dự án] Trang trí cây xanh tại Vinhomes Green Bay
            </a>

            <p class="news-desc">
				Nhu cầu trang trí cây xanh trong các hộ gia đình ngày càng lớn, đặc biệt là tại những căn biệt thự. Một trong những dự án…	
            </p>          
        </div>
    </div>
	<div class="news-item">
        <a href="duanthanhxuan.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/duanthanhxuan.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="duanthanhxuan.jsp" class="news-title">
                [Dự án] Trang trí cây xanh cho quán cà phê tại Thanh Xuân
            </a>

            <p class="news-desc">
                Trang trí cây xanh quán cà phê không chỉ đáp ứng nhu cầu thẩm mỹ mà nó còn mang lại nhiều lợi ích vượt trội. Ngày nay,…
            </p>          
        </div>
    </div>
	<div class="news-item">
        <a href="duangym.jsp" class="news-thumb">
            <img src="${pageContext.request.contextPath}/images/duanphonggym.jpg" alt="Tin tức">
        </a>

        <div class="news-content">
            <a href="duangym.jsp" class="news-title">
                [Dự án] Trang trí cây xanh cho hệ thống phòng tập Kickfit Việt Nam
            </a>
            <p class="news-desc">
			Trang trí cây xanh phòng tập gym đang ngày càng quan trọng bởi nhiều lợi ích tuyệt vời mà nó mang lại. Một trong những dự án…
            </p>          
        </div>
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