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

<div  class="project-detail">
	<h1 class="project-titlle">
        Chính sách bảo hành
    </h1>
    <div class="project-section">
	    <p>
	        Tất cả các sản phẩm được phân phối từ Web Cây Cảnh đều được bảo hành theo chính sách rõ ràng nhằm đảm bảo quyền lợi tốt nhất cho khách hàng.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>1. Thời hạn bảo hành cây cảnh</h2>
	    <p>
	        Các sản phẩm cây cảnh được bảo hành trong vòng 14 ngày kể từ thời điểm giao hàng.<br><br>
	
	        Đối với các sản phẩm công trình, thời gian bảo hành kéo dài cho đến khi cây phát triển ổn định và ra mầm mới.<br><br>
	
	        Web Cây Cảnh hỗ trợ khách hàng trọn đời trong quá trình chăm sóc cây. Khi cây có dấu hiệu bất thường, khách hàng chỉ cần chụp ảnh và gửi về cho chúng tôi để được tư vấn kịp thời.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>2. Điều kiện bảo hành cây cảnh</h2>
	    <p>
	        Sản phẩm sẽ được bảo hành nếu đáp ứng đầy đủ các điều kiện sau:<br><br>
	
	        a. Sản phẩm còn trong thời hạn bảo hành.<br>
	        b. Sản phẩm bị hư hỏng do chất lượng từ phía nhà cung cấp.<br>
	        c. Sản phẩm không thuộc các trường hợp bị từ chối bảo hành.
	    </p>
	</div>
	
	<div class="project-section">
	    <h2>3. Điều kiện từ chối bảo hành</h2>
	    <p>
	        Sản phẩm sẽ bị từ chối bảo hành nếu thuộc một trong các trường hợp sau:<br><br>
	
	        a. Sản phẩm đã quá thời gian bảo hành.<br>
	        b. Sản phẩm bị hư hỏng do thiên tai, hỏa hoạn.<br>
	        c. Sản phẩm bị hư hỏng do chăm sóc không đúng theo hướng dẫn.<br>
	        d. Sản phẩm bị biến dạng, rơi vỡ, trầy xước do tác động từ phía khách hàng.<br>
	        e. Sản phẩm được đặt trong môi trường không đúng khuyến cáo.<br>
	        f. Sản phẩm bị thay đổi hoặc trồng lại không phải do nhân viên của Web Cây Cảnh thực hiện.<br>
	        g. Sản phẩm không được mua từ Web Cây Cảnh.<br>
	        i. Không bảo hành các vật dụng kèm theo (nếu có).
	    </p>
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