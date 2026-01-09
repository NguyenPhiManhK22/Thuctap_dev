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
<div class="project-detail">

    <h3 class="project-titlle">
        [Dự án] Trang trí cây xanh cho quán cà phê Thanh Xuân
    </h3>

    <p class="project-intro">
        Trang trí cây xanh quán cà phê không chỉ đáp ứng nhu cầu thẩm mỹ mà nó còn mang lại nhiều lợi ích vượt trội. Ngày nay, quán cà phê không chỉ còn là không gian để khách hàng uống nước. Nó còn là điểm đến lý tưởng để thư giãn, tận hưởng không gian xanh mát và tạo nên những bức ảnh lung linh, gây ấn tượng mạnh cho mọi người. Một trong những dự án trang trí cây xanh cho quán cà phê mà Webcaycanh vừa hoàn thiện là quán cà phê Thanh Xuân. Hãy cùng chúng tôi điểm lại những hình ảnh của dự án này bạn nhé!
    </p>

    <div class="project-image">
   		 <img src="${pageContext.request.contextPath}/images/thanhxuan2.jpg" alt="">
        <img src="${pageContext.request.contextPath}/images/thanhxuan1.jpg" alt="">
        	<p>Hình ảnh: Cây xanh được bố trí trong quán cà phê Thanh Xuân.</p>
    </div>

    <div class="project-section">
        <h3>Vai trò của việc trang trí cây xanh cho quán cà phê</h3>
        <p>
            Dưới đây là một số vai trò chính của việc trang trí cây trong quán cà phê:
        </p>
			<p class="dot-line">
			    Tạo không gian đẹp thu hút khách hàng.
			</p>
			<p class="dot-line">
			    Cây xanh trong quán cà phê không chỉ mang lại vẻ đẹp tự nhiên mà còn giúp cải thiện không gian và tạo cảm giác thoải mái, thư giãn cho khách hàng.
			</p>
			<p class="dot-line">
			    Các loại cây xanh đem đến màu sắc tươi mới, không gian thoáng đãng. Giúp giảm căng thẳng, tạo cảm giác thoải mái và tinh thần sảng khoái.
			</p>
			<p class="dot-line">
			    Cây xanh còn có khả năng làm giảm ô nhiễm không khí. Cân bằng độ ẩm và hấp thụ các khí độc hại, đem đến không gian trong lành và an lành cho khách hàng.
			</p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/thanhxuan3.jpg" alt="">
        <p>Hình ảnh: Cây xanh được bố trí trong quán cà phê Thanh Xuân.</p>
    	</div>
    </div>

    <div class="project-section">
        <h3>Các phong cách trang trí cây xanh cho quán cà phê</h3>
        <p>
            Các phong cách trang trí cây xanh cho quán cà phê cũng đa dạng và phong phú. Tùy vào không gian, phong cách và sở thích của chủ quán, có thể chọn trang trí cây xanh theo phong cách nội thất hiện đại, cổ điển, vintage, bohemian, hoặc sử dụng các phong cách trang trí hòa quyện với nhau tạo nên không gian độc đáo và thu hút khách hàng. Mỗi phong cách trang trí cây xanh đều mang đến sự mới mẻ và sáng tạo cho không gian cà phê.
        </p>
    </div>
	<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/thanhxuan4.jpg" alt="">
        <p>Hình ảnh: Trang trí tường cây xanh</p>
    	</div>

    <div class="project-section">
        <h3>Điểm mạnh của chúng tôi</h3>
        <p>
            Webcaycanh đã và đang khẳng định vị thế của mình với nhiều điểm mạnh và ưu điểm vượt trội.
        </p>
        <h2>Giá cả luôn cạnh tranh hoặc rẻ nhất</h2>
        <p>Với sự uy tín và chất lượng hàng đầu, chúng tôi đã được chọn là đơn vị cung cấp cây xanh trang trí cho nhiều quán cà phê, công ty, cơ quan, trường học và công trình khác. Bởi không chỉ là đơn vị bán lẻ cây cảnh, chúng tôi còn là nhà vườn trồng cây và phân phối cây cho các đại lý cây cảnh khác, đảm bảo nguồn cung cây phong phú và đa dạng.</p>
    </div>
     <div class="project-section">
        <h2>Chất lượng cây tốt</h2>
        <p>
            Trước khi giao cây đến khách hàng, chúng tôi kiểm tra chất lượng cây kỹ lưỡng, đảm bảo cây khoẻ không bị sâu bệnh hại. Điều này giúp cây xanh khi tới tay khách hàng luôn tươi đẹp, mạnh khỏe, dễ dàng sinh trưởng và phát triển.
        </p>
    </div>
    	<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/thanhxuan5.jpg" alt="">
        <p>Hình ảnh: Cây xanh được bố trí trong quán cà phê Thanh Xuân.</p>
    	</div>
     <div class="project-section">
        <h2>Chế độ bảo hành rõ ràng, hỗ trợ tư vấn chăm sóc trọn đời</h2>
        <p class="dot-line">
    		Tất cả các sản phẩm được phân phối từ Web Cây Cảnh đều được bảo hành 14 ngày kể từ lúc giao hàng.
		</p>
		<p class="dot-line">
		    Đối với các sản phẩm công trình được bảo hành đến khi cây phát triển ổn định, cây ra mầm hoặc theo thoả thuận.
		</p>
		<p class="dot-line">
		    Hỗ trợ khách hàng tư vấn trọn đời trong quá trình chăm cây, cây có hiện tượng lạ, chỉ cần chụp ảnh và gửi cho webcaycanh để tư vấn.
		</p>
    
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/thanhxuan6.jpg" alt="">
        <p>Hình ảnh: Cây xanh được bố trí trong quán cà phê Thanh Xuân.</p>
    	</div>
    	<p>Trên đây là bài viết về dự án trang trí cây xanh cho quán cà phê Thanh Xuân. Nếu bạn đang cần đơn vị cung cấp và tư vấn thi công trang trí cây xanh cho quán cà phê của mình, Webcaycanh tin rằng là địa chỉ đáng tin cậy của bạn. Với đội ngũ giàu kinh nghiệm, uy tín và chất lượng hàng đầu, chúng tôi cam kết mang đến cho bạn những giải pháp trang trí cây xanh tối ưu nhất.</p>
    </div>
</div>

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
                <li><a href="baohanh.jsp">Chính sách bảo hành</a></li>
                <li><a href="doitra.jsp">Chính sách đổi trả hàng</a></li>  
            </ul>
        </div>

    </div>
</footer>

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

</body>
</html>