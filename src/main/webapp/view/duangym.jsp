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
<div class="project-detail">
    <h1 class="project-titlle">
        [Dự án] Trang trí cây xanh cho hệ thống phòng tập Kickfit Việt Nam
    </h1>

    <p class="project-intro">
		Trang trí cây xanh phòng tập gym đang ngày càng quan trọng bởi nhiều lợi ích tuyệt vời mà nó mang lại. Một trong những dự án chúng tôi vừa hoàn thiệt là cung cấp và trang trí tường cây xanh cho hệ thống phòng tập Kickfit Việt Nam. Dưới đây là những nội dung chúng tôi muốn chia sẻ về dự án này cũng như lợi ích của việc trang trí cây xanh trong các phòng tập gym và điểm khác biệt của cửa hàng <a href="#">Webcaycanh</a>
    </p>

    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/duanphonggym.jpg" alt="">
        <p>Hình ảnh: Trang trí cây khu vực tập gym.</p>
    </div>

    <div class="project-section">
        <h2>Dự án trang trí tường cây xanh cho Kickfit Việt Nam</h2>
        <p>
            Hệ thống phòng tập Kickfit Việt Nam nổi tiếng với chất lượng dịch vụ cao cấp và trang thiết bị hiện đại. Chúng tôi tự hào khi được đồng hành và góp phần làm đẹp không gian của hệ thống này bằng việc cung cấp và trang trí tường cây xanh. Trong dự án này, chúng tôi đã mang đến cho Kickfit Việt Nam một loạt cây cảnh phong phú và đa dạng, từ cây cảnh để bàn cho đến các loại cây lớn được bố trí đặt ở sảnh và khu vực chung.
        </p>

        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/gym.jpg" alt="">
        <p>Hình ảnh: Trang trí cây khu vực chung và tập luyện của Kickfit Việt Nam.</p>
    </div>
    </div>

    <div class="project-section">
        <h2>Lợi ích của việc trang trí cây xanh trong phòng tập</h2>
        <p>
            Trang trí cây xanh trong các phòng tập không chỉ làm cho không gian trở nên xanh mát và dễ chịu mà còn mang lại nhiều lợi ích đáng giá cho người tập luyện:
        </p>
        	<p class="dot-line">
		    Tạo không gian thư giãn: Cây xanh tạo ra môi trường tự nhiên và thư thái, giúp người tập luyện cảm thấy thoải mái và giảm căng thẳng sau những giờ tập luyện căng thẳng.
			</p>
			<p class="dot-line">
		    Giúp không khí trong lành: Cây xanh giúp lọc không khí và cung cấp oxy tươi mát cho phòng tập, giúp cải thiện chất lượng không khí và hỗ trợ sức khỏe hô hấp cho người tập luyện.
			</p>
			<p class="dot-line">
		    Tạo điểm nhấn trang trí: Cây xanh là điểm nhấn trong thiết kế nội thất phòng tập, làm cho không gian trở nên sống động, thu hút và thuận tiện cho việc chụp hình và quảng bá thương hiệu.
			</p>
			<p class="dot-line">
		    Giảm tiếng ồn: Cây xanh còn giúp hấp thụ âm thanh và giảm tiếng ồn trong phòng tập, giúp tạo nên môi trường tập luyện êm dịu và dễ chịu.
			</p>
			<div class="project-image">
        		<img src="${pageContext.request.contextPath}/images/gym1.jpg" alt="">
        		<p>Hình ảnh: Bố trí cây khu vực tập gym.</p>
    		</div>
    </div>

    <div class="project-section">
        <h2>Điểm khác biệt của Webcaycanh</h2>
        <p>
            Chúng tôi tự hào là một cửa hàng cây cảnh uy tín và đáng tin cậy, với những điểm khác biệt nổi bật:
        </p>
        <p class="dot-line">
		    Đa dạng sản phẩm: Chúng tôi cung cấp đa dạng các loại cây cảnh với nhiều kiểu dáng và kích thước khác nhau, phù hợp với mọi không gian và nhu cầu của khách hàng.
			</p>
			<p class="dot-line">
				Chất lượng cây: Các loại cây cảnh của chúng tôi đều được chọn lựa kỹ càng và bảo quản cẩn thận, đảm bảo mang đến cho khách hàng những cây cảnh đẹp, khỏe mạnh và bền vững.
			</p>
			<p class="dot-line">
				Dịch vụ tận tâm: Chúng tôi luôn hướng đến sự hài lòng và đáp ứng nhu cầu của khách hàng. Dịch vụ tư vấn, chăm sóc và bảo hành sau bán hàng của chúng tôi luôn sẵn sàng hỗ trợ khách hàng một cách tận tâm và nhiệt tình.
			</p>
			
			<div class="project-image">
        		<img src="${pageContext.request.contextPath}/images/gym2.jpg" alt="">
        		<p>Hình ảnh: Trang trí cây khu vực chung và tập luyện của Kickfit Việt Nam.</p>
        		<img src="${pageContext.request.contextPath}/images/gym3.jpg" alt="">
        		<p>Hình ảnh: Trang trí cây tường cây của Kickfit Việt Nam.</p>
    		</div>
    		
    	<p>
            Trên đây là bài viết về dự án Trang trí cây xanh cho hệ thống phòng tập Kickfit Việt Nam. Cây xanh trong phòng tập không chỉ tạo nên không gian xanh mát, thư giãn mà còn góp phần nâng cao chất lượng không gian và trải nghiệm của khách hàng. Với sự đa dạng về sản phẩm, chất lượng và dịch vụ tận tâm, Webcaycanh là địa chỉ tin cậy để bạn lựa chọn và trang trí cây xanh cho phòng tập của mình. Nếu bạn quan tâm đến việc trang trí cây xanh trong phòng tập hoặc bất kỳ nhu cầu mua cây cảnh nào khác. Hãy liên hệ ngay với chúng tôi để được tư vấn và hỗ trợ theo thông tin sau: 
        </p>
        <p class="dot-line">
			Cơ sở 1 – Hà Nội: Số 60, ngõ 235 Yên Hoà, Cầu Giấy, Hà Nội. Hotline: 0988 833 653
		</p>
		<p class="dot-line">
			Cơ sở 2 – Hà Nội: Số 14, ngõ 12/13 Lương Khánh Thiện, Tương Mai, Hoàng Mai, Hà Nội. Hotline: 0353 326 266
		</p>
        <p>
            Chúng tôi cam kết mang đến cho bạn những giải pháp trang trí cây cảnh tối ưu và đẳng cấp nhất.
        </p>
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
                <li><a href="#">Chính sách bảo hành</a></li>
                <li><a href="#">Chính sách đổi trả hàng</a></li>
                <li><a href="#">Chính sách bảo mật thông tin</a></li>
                <li><a href="#">Sitemaps</a></li>
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