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
            <li><a href="#">Tin tức</a></li>

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
<div  class="project-detail">
	<h1 class="project-titlle">
        Giới thiệu 
    </h1>
	<div class="project-section">
    <p>
        Công ty TNHH Webcaycanh được thành lập vào ngày 10 tháng 10 năm 2015, với sứ mệnh mang đến không gian xanh cho mọi người, chia sẻ kinh nghiệm và kiến thức chăm sóc cây cảnh. Đến với Web Cây Cảnh không đơn giản chỉ là mua cây, mà chúng tôi còn hướng dẫn quý khách hàng cách chăm sóc, cách khắc phục khi cây gặp phải vấn đề không tốt, cây cảnh mua tại cửa hàng đều được bảo hành 7 ngày đến 30 ngày tùy vào cây to hay nhỏ, để đảm bảo sản phẩm hoàn toàn là chất lượng không bị ủ bệnh trước khi mua.
    </p>
    <p>
       Ngoài ra nếu quý khách không mua cây tại cửa hàng, mà mua ở bất kỳ đâu khi gặp vấn đề hãy cứ liên hệ với chúng tôi, chúng tôi sẵn sàng tư vấn miễn phí và nhiệt tình, để cây có thể tốt trở lại.
    </p>
</div>

<div class="project-section">
    <h3>Về Web Cây Cảnh</h3>
    <p>
        <br>– Đứng đầu lĩnh vực Online về thị trường cây cảnh.
        <br>– Đơn vị cây cảnh đầu tiên có cơ sở tại 2 thành phố lớn Hà Nội và Hồ Chí Minh.
        <br>– Bảo hành sau khi mua cây.
        <br>– Tư vấn chuyên nghiệp.
        <br>– Hỗ trợ giải đáp thắc mắc, chăm sóc trọn đời.
    </p>
</div>

<div class="project-section">
    <h3>Web Cây Cảnh làm những gì?</h3>
    <p>
        Công ty TNHH Webcaycanh làm 3 hạng mục chính:
    </p>
    <p>
        – Bán cây cảnh để bàn, cây văn phòng, cây nội thất, cây phong thủy ,... 
        <br>– Chăm sóc cây cho văn phòng, tòa nhà và tại nhà  
        <br>– Thiết kế và tư vấn bố trí không gian cây xanh
    </p>
    <p>Trong thời gian hoạt động và làm việc chúng tôi đã bán và hỗ trợ chăm sóc rất nhiều cây cảnh, cũng đã làm nhiều dự án lớn cho các đối tác như: Viettel, Mobifone, Ivy, Vietjet, Euro Window, khách sạn 4* Sky, quán cafe…</p>

	<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu1.jpg" alt="">   
        <p>Dự án 6200 cây làm quà tặng cho Viettel</p>   
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu2.jpg" alt="">   
        <p>Dự án setup cây cảnh cho khách sạn 4*</p>   
    </div>
     <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu3.jpg" alt="">   
        <p>Setup cây cảnh cho quán cafe</p>   
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu4.jpg" alt="">   
        <p>Thiết kế và trồng cây cho nhà biệt thự</p>   
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu5.jpg" alt="">   
        <p>Setup cây cho văn phòng</p>   
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu7.jpg" alt="">   
        <p>Trồng cây cho bên biệt thự vinhome greebay</p>   
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gioithieu6.jpg" alt="">   
        <p>Trồng cây cho nhà hàng</p>   
    </div>
    
  
</div>

</div>

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