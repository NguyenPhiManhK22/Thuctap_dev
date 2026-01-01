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
        Chăm sóc cây thủy sinh
    </h1>
    <p class="project-intro">
       Cây thủy sinh có 2 loại một là loại sống dưới nước ở mặt đáy thường là một số loại rêu, tảo…Loại 2 là loại chỉ có phần rễ được tiếp xúc với nước thường được áp dụng để trồng thủy canh, các loại cây cảnh văn phòng, trong nhà. Thì trong bài viết này Web Cây Cảnh xin chia sẻ về cách chăm sóc các loại cây cảnh văn phòng, trong nhà thủy sinh.
    </p>
 
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/chamcay2.jpg" alt="">   
        <p>Cây Trầu Bà Thủy Sinh</p>   
    </div>
    <div class="project-section">
    <h2>Cách chăm sóc cây thủy sinh</h2>
    <p>
        Cây thủy sinh có ưu điểm là sạch sẽ và không mất nhiều công chăm sóc.
        Việc chăm sóc chủ yếu cần chú ý ở giai đoạn ban đầu, khi cây đang
        thích nghi với môi trường sống mới.
    </p>
</div>

<div class="project-section">
    <h2>Nơi đặt cây thủy sinh</h2>
    <p>
        Nên đặt cây thủy sinh ở nơi thoáng gió, có ánh điện hoặc ánh nắng nhẹ
        vào buổi sáng sớm và chiều muộn.
        Tránh đặt cây dưới nắng gắt hoặc gần các nguồn nhiệt như cục nóng điều hòa,
        CPU máy tính vì nhiệt độ cao sẽ ảnh hưởng xấu đến cây.
    </p>
    <p>
        Vị trí đặt cây là yếu tố quan trọng trong việc chăm sóc cây thủy sinh
        mà bạn cần đặc biệt lưu ý.
    </p>
</div>

<div class="project-section">
    <h2>Nước</h2>
    <p>
        Bạn cần thường xuyên theo dõi chất lượng nước của cây thủy sinh,
        đặc biệt là trong thời gian đầu.
        Nếu thấy nước có mùi lạ, cần thay nước ngay và loại bỏ những phần rễ bị thối.
    </p>
    <p>
        Trong trường hợp không có nhiều thời gian theo dõi,
        bạn nên thay nước định kỳ khoảng 1 tuần một lần trong giai đoạn đầu.
    </p>
    <p>
        Khi thay nước, nên đổ nước cũ đi và cho nước mới vào nhiều lần
        để tạo không khí trong nước, giúp cây phát triển bộ rễ tốt hơn.
    </p>
</div>

<div class="project-section">
    <h2>Dưỡng chất</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/chamcay3.jpg" alt="">   
        <p>Chăm sóc cây thủy sinh không khó</p>   
    </div>
    <p>
        Việc chăm sóc cây thủy sinh không quá khó,
        tuy nhiên cây vẫn cần được bổ sung đầy đủ dưỡng chất để phát triển khỏe mạnh.
    </p>
    <p>
        Bạn nên bổ sung dung dịch thủy canh hàng tuần,
        đảm bảo nồng độ dung dịch dinh dưỡng (PPM) trong khoảng từ 600 đến 1000 ppm.
        Độ pH của nước nên duy trì trong khoảng từ 5,5 đến 6,5.
    </p>
</div>

<div class="project-section">
    <h2>Lưu ý khi chăm sóc cây thủy sinh</h2>
    <p>
        – Không đặt cây thủy sinh ở cửa sổ có nắng gắt.
        Ánh nắng chiếu qua kính và bình thủy tinh làm nước nóng lên,
        dễ khiến cây bị chết.
    </p>
    <p>
        – Không để nước trong bình bị đục hoặc có mùi lạ.
        Khi phát hiện hiện tượng này, cần thay nước ngay.
    </p>
    <p>
        – Chỉ nên đổ nước ngập phần rễ, không đổ ngập thân cây.
        Rễ là bộ phận hút nước, còn thân cây không có khả năng hút nước.
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