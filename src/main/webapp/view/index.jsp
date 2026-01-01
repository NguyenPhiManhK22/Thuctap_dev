<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.NguoiDung" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cây Cảnh</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/stylles.css" />
    <link rel="icon" type="/image/jpg" href="${pageContext.request.contextPath}/images/Logo.jpg" />
</head>
<body>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

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

            <li><a href="lienhe.jsp">Liên hệ</a></li>

            <li class="has-sub">
                <input type="checkbox" id="policy">
                <label for="policy">Chính sách ▾</label>
                <ul class="sub-menu">
                    <li><a href="doitra.jsp">Đổi trả</a></li>
                    <li><a href="baohanh.jsp">Bảo hành</a></li>
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

    <div class="slider-wrapper">
        <div class="slider">
            <img src="${pageContext.request.contextPath}/images/banner.jpg">
        </div>
    </div>
</section>

<section class="new-product-section">
	<div class="icon">
				<img src="${pageContext.request.contextPath}/images/icon.jpg">
		    </div>
    <h2 class="title">SẢN PHẨM MỚI</h2>

    <div class="slider-container">
        <button class="nav prev" onclick="slide(-1)">‹</button>

        <div class="slider-window">
            <div class="product-slider" id="productSlider">

        <div class="product-item">
        	<div class="img-box">
        		<img src="${pageContext.request.contextPath}/images/cayhpgocto.jpg">
    		</div>          
            <p class="name">Cây Hạnh Phúc Gốc To</p>
            <p class="price">2.200.000 đ</p>
        </div>

        <div class="product-item">
        	<div class="img-box">
        		<img src="${pageContext.request.contextPath}/images/Caytrucnhatvang.jpg">
    		</div>           
            <p class="name">Cây Trúc Nhật Vàng</p>
            <p class="price">125.000 đ</p>
        </div>

        <div class="product-item">
        	<div class="img-box">
       			 <img src="${pageContext.request.contextPath}/images/Sendacanhbuombac.jpg">
    		</div>        
            <p class="name">Sen đá cánh bướm bạc</p>
            <p class="price">25.000 đ</p>
        </div>

        <div class="product-item">
        	<div class="img-box">
        		<img src="${pageContext.request.contextPath}/images/Sendacasio.jpg">
    		</div>          
            <p class="name">Sen đá Casio</p>
            <p class="price">15.000 đ</p>
        </div>

        
        <div class="product-item">
        	<div class="img-box">
				<img src="${pageContext.request.contextPath}/images/Caykimtien.jpg">
		    </div>    
            <p class="name">Cây Kim Tiền</p>
            <p class="price">350.000 đ</p>
        </div>

        <div class="product-item">
        	<div class="img-box">
				<img src="${pageContext.request.contextPath}/images/Cayluoiho.jpg">
    		</div>
            <p class="name">Cây Lưỡi Hổ</p>
            <p class="price">180.000 đ</p>
        </div>
	</div>	
  </div>
    <button class="nav next" onclick="slide(1)">›</button>
</div>	
	
</section>
<div class="icon">
	<img src="${pageContext.request.contextPath}/images/icon.jpg">
</div>
<h2 class="title">Danh Mục Cây Cảnh</h2>
		
<section class="category-grid">

    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhdeban.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH ĐỂ BÀN</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>

    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhphongthuy.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH PHONG THỦY</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>

    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhtrongnha.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH TRONG NHÀ</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>

    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhsenda.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH SEN ĐÁ</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>
	
	<div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhvanphong.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH VĂN PHÒNG</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>
    
    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhthuysinh.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH THỦY SINH</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>
	
	<div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Caycanhdeban.jpg" alt="Cây cảnh">
        		<div class="img-title">CÂY CẢNH ĐỂ BÀN </div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>
    
    <div class="category-item">
    	<div class="img-frame">
        		<img src="${pageContext.request.contextPath}/images/Phukien.jpg" alt="Cây cảnh">
        		<div class="img-title">PHỤ KIỆN</div>
        	<div class="overlay">
            	<a href="#" class="detail-btn">CHI TIẾT</a>
        	</div>
    	</div>
	</div>
    
</section>

<section class="branch-section">
    <div class="branch-overlay">
        <h2>CHÚNG TÔI CÓ CƠ SỞ TẠI 1 MIỀN ĐẤT NƯỚC</h2>
        <div class="line"></div>
        <h3>CƠ SỞ 1</h3>
		<div class="line small"></div>
        <p>Số 60 - Ngõ 235</p>
        <p>Yên Hòa - Quận Cầu Giấy - Hà Nội</p>

        <div class="phone">0972 422 110</div>
    </div>
</section>
<div class="icon">
	<img src="${pageContext.request.contextPath}/images/icon.jpg">
</div>
<h2 class="title">Dự Án</h2>

<section class="category-grid">
        <div class="project-item">
            <a href="duan371.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/Duan371.jpg" alt="Dự án">
            </a>

            <a href="duan371.jsp" class="project-title">
                [Dự án] Trang trí cây xanh biệt thự 371 La Thành
            </a>

            <p class="project-desc">
                Trong xã hội ngày càng phát triển hiện nay, nhu cầu trang trí cây xanh trong các hộ gia đình đang dần trở thành xu hướng không…
            </p>
        </div>

        <div class="project-item">
            <a href="duanvinhomes.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/duanvinhomes.jpg" alt="Dự án">
            </a>

            <a href="duanvinhomes.jsp" class="project-title">
                [Dự án] Trang trí cây xanh tại Vinhomes Green Bay
            </a>

            <p class="project-desc">
                Nhu cầu trang trí cây xanh trong các hộ gia đình ngày càng lớn, đặc biệt là tại những căn biệt thự. Một trong những dự án…
            </p>
        </div>

        <div class="project-item">
            <a href="duanthanhxuan.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/duanthanhxuan.jpg" alt="Dự án">
            </a>

            <a href="duanthanhxuan.jsp" class="project-title">
                [Dự án] Trang trí cây xanh cho quán cà phê tại Thanh Xuân
            </a>

            <p class="project-desc">
                Trang trí cây xanh quán cà phê không chỉ đáp ứng nhu cầu thẩm mỹ mà nó còn mang lại nhiều lợi ích vượt trội. Ngày nay,…
            </p>
        </div>
        <div class="project-item">
            <a href="duangym.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/duanphonggym.jpg" alt="Dự án">
            </a>
            <a href="duangym.jsp" class="project-title">
                [Dự án] Trang trí cây xanh cho hệ thống phòng tập Kickfit Việt Nam
            </a>
            <p class="project-desc">
                Trang trí cây xanh phòng tập gym đang ngày càng quan trọng bởi nhiều lợi ích tuyệt vời mà nó mang lại. Một trong những dự án…
            </p>
        </div>
    
</section>

<section class="review-section">
	<div class="icon">
	<img src="${pageContext.request.contextPath}/images/icon2.jpg">
	</div>
	<h2 class="title">ĐÁNH GIÁ TỪ KHÁCH HÀNG</h2>
    <div class="review-wrapper">
        <button class="nav-btn prev">‹</button>

        <div class="review-viewport">
            <div class="review-track">

                <div class="review-item">
   				 <img 
        			src="${pageContext.request.contextPath}/images/chikhue.jpg"
       				 data-full="${pageContext.request.contextPath}/images/chikhue.jpg"
        			alt="Đánh giá khách hàng"
        			class="review-img">
    				<p class="review-name">Chị Khuê - Hà Nội</p>
				</div>

                <div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/anhphong.jpg"
				        data-full="${pageContext.request.contextPath}/images/anhphong.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">A Phong - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chitrang.jpg"
				        data-full="${pageContext.request.contextPath}/images/chitrang.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Trang - Hồ Chí Minh</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/anhtung.jpg"
				        data-full="${pageContext.request.contextPath}/images/anhtung.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Anh Tùng - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chidennis.jpg"
				        data-full="${pageContext.request.contextPath}/images/chidennis.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Dennis - Hồ Chí Minh</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chiquynh.jpg"
				        data-full="${pageContext.request.contextPath}/images/chiquynh.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Quỳnh - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chihuong.jpg"
				        data-full="${pageContext.request.contextPath}/images/chihuong.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Hương - Hồ Chí Minh</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chidung.jpg"
				        data-full="${pageContext.request.contextPath}/images/chidung.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Dung - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chithuy.jpg"
				        data-full="${pageContext.request.contextPath}/images/chithuy.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Thúy - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/chibaotrang.jpg"
				        data-full="${pageContext.request.contextPath}/images/chibaotrang.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Chị Bảo Trang - Hà Nội</p>
				</div>

				<div class="review-item">
				    <img 
				        src="${pageContext.request.contextPath}/images/anhhuy.jpg"
				        data-full="${pageContext.request.contextPath}/images/anhhuy.jpg"
				        alt="Đánh giá khách hàng"
				        class="review-img">
				    <p class="review-name">Anh Huy - Hà Nội</p>
				</div>

            </div>
        </div>
        <button class="nav-btn next">›</button>
    </div>
    <div id="imgModal" class="img-modal">
    <span class="close">&times;</span>
    <img id="modalImg">
</div>
</section>
<div class="icon">
	<img src="${pageContext.request.contextPath}/images/icon.jpg">
</div>
<h2 class="title">BÀI VIẾT CÂY CẢNH</h2>
<section class="category-grid">
    

        <div class="project-item">
            <a href="tintuc1.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/caycanh1.jpg" alt="tintuc">
            </a>

            <a href="tintuc1.jsp" class="project-title">
                Nên tưới cây bằng nước máy hay nước đun sôi để nguội?
            </a>

            <p class="project-desc">
                Vì sao lại lựa chọn hai loại nước này? Vì nếu bạn ở thành phố và văn phòng thì thường chỉ có hai lựa chọn này là tiện nhất….
            </p>
        </div>

        <div class="project-item">
            <a href="tintuc2.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/caycanh2.jpg" alt="tintuc">
            </a>

            <a href="tintuc2.jsp" class="project-title">
                8 yếu tố giúp cây trồng trong nhà luôn xanh tốt
            </a>

            <p class="project-desc">
                Trong thời đại hiện nay, cây trồng trong nhà không chỉ để trang trí mà còn mang lại nhiều lợi ích cho sức khỏe và tinh thần của con người…
            </p>
        </div>

        <div class="project-item">
            <a href="tintuc3.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/caycanh3.jpg" alt="tintuc">
            </a>

            <a href="tintuc3.jsp" class="project-title">
                10 loại cây trừ tà trong tháng cô hồn
            </a>

            <p class="project-desc">
                Tháng cô hồn, hay tháng 7 âm lịch, là thời điểm mà nhiều người quan niệm là cửa địa ngục mở, các vong linh trở về dương thế. Để…
            </p>
        </div>
        <div class="project-item">
            <a href="tintuc4.jsp" class="project-img">
                <img src="${pageContext.request.contextPath}/images/caycanh4.jpg" alt="tintuc">
            </a>
            <a href="tintuc4.jsp" class="project-title">
                Tác dụng của cây kim tiền
            </a>
            <p class="project-desc">
              Cây kim tiền vốn là một loại cây cảnh phổ biến trên thị trường. Vì xét về mặt phong thủy thì cây kim tiền mang ý nghĩa hút lộc,…
            </p>
        </div>
    
</section>

<script>
document.addEventListener("DOMContentLoaded", function () {

    const slider = document.getElementById("productSlider");
    const items = document.querySelectorAll(".product-item");

    const visibleItems = 4;        // 4 ảnh / hàng
    const itemWidth = 275;         // 255 ảnh + margin
    let currentIndex = 0;

    window.slide = function (step) {
        const maxIndex = items.length - visibleItems;

        currentIndex += step;

        if (currentIndex < 0) currentIndex = 0;
        if (currentIndex > maxIndex) currentIndex = maxIndex;

        slider.style.transform =
            "translateX(" + (-currentIndex * itemWidth) + "px)";
    };

});
</script>
<script>
document.addEventListener("DOMContentLoaded", function () {

    const slider = document.querySelector(".review-track");
    const items = document.querySelectorAll(".review-item");

    const visibleItems = 4;
    const itemWidth = 255 + 30; // ảnh + gap
    let currentIndex = 0;

    const maxIndex = items.length - visibleItems;

    document.querySelector(".nav-btn.next").onclick = function () {
        currentIndex++;
        if (currentIndex > maxIndex) currentIndex = maxIndex;
        slider.style.transform =
            "translateX(" + (-currentIndex * itemWidth) + "px)";
    };

    document.querySelector(".nav-btn.prev").onclick = function () {
        currentIndex--;
        if (currentIndex < 0) currentIndex = 0;
        slider.style.transform =
            "translateX(" + (-currentIndex * itemWidth) + "px)";
    };

});
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {

    const modal = document.getElementById("imgModal");
    const modalImg = document.getElementById("modalImg");
    const closeBtn = document.querySelector(".img-modal .close");

    document.querySelectorAll(".review-img").forEach(img => {
        img.addEventListener("click", function (e) {
            e.stopPropagation();
            modal.style.display = "flex";
            modalImg.src = this.dataset.full;
        });
    });

    closeBtn.onclick = () => modal.style.display = "none";
    modal.onclick = () => modal.style.display = "none";
});
</script>

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

