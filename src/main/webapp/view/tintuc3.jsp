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

<div class="project-detail">
    <h1 class="project-titlle">
        10 loại cây trừ tà trong tháng cô hồn
    </h1>
    <p class="project-intro">
        Tháng cô hồn, hay tháng 7 âm lịch, là thời điểm mà nhiều người quan niệm là cửa địa ngục mở, các vong linh trở về dương thế. Để bảo vệ gia đình và xua đuổi tà khí, nhiều người tìm đến các  10 loại cây được cho là có khả năng trừ tà.
    </p>
    <h3>Những điều biết về tháng cô hồn</h3>
    <p>Tháng cô hồn năm 2024 rơi vào tháng 7 âm lịch, kéo dài từ ngày 4/8/2024 đến ngày 2/9/2024</p>
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/caycanh3.jpg" alt="">
        <p>10 loại cây trừ tà trong tháng cô hồn</p>
    </div>
    <div class="project-section">
    <h2>Nguồn gốc và ý nghĩa tháng cô hồn</h2>
    <p>
        <b>Nguồn gốc:</b> Tín ngưỡng tháng cô hồn có nguồn gốc từ Đạo giáo Trung Quốc, sau đó được truyền bá rộng rãi sang các nước láng giềng.
    </p>
    <p>
        <b>Ý nghĩa:</b> Tháng cô hồn là dịp để con người thể hiện lòng thành kính đối với tổ tiên, cầu siêu cho những linh hồn không nơi nương tựa. Đồng thời, đây cũng là thời gian nhắc nhở mọi người sống tốt, làm việc thiện để tránh những điều xui xẻo.
    </p>
</div>

<div class="project-section">
    <h2>Những điều kiêng kỵ trong tháng cô hồn</h2>
    <p>Trong tháng cô hồn, người ta thường kiêng kỵ một số việc như:</p>
    <p>
        • Đi chơi đêm – vì ban đêm các vong hồn được cho là hoạt động mạnh hơn  
        <br>• Đi qua nghĩa địa – đặc biệt là vào ban đêm  
        <br>• Giặt giũ vào ban đêm – tiếng nước có thể thu hút vong hồn  
        <br>• Đi bơi lội – nước được xem là nơi trú ngụ của sinh vật siêu nhiên  
        <br>• Mang đồ lót màu đỏ – màu đỏ bị cho là thu hút ma quỷ
    </p>
</div>

<div class="project-section">
    <h2>Những việc nên làm trong tháng cô hồn</h2>
    <p>
        • Cúng bái tổ tiên và các vong hồn  
        <br>• Làm việc thiện như bố thí, làm từ thiện để tích đức  
        <br>• Sống lương thiện, tránh làm điều ác để không bị quấy nhiễu
    </p>
</div>

<div class="project-section">
    <h2>Vì sao người ta tin vào cây trừ tà?</h2>
    <p>
        <b>Tín ngưỡng dân gian:</b> Quan niệm về cây trừ tà xuất phát từ tín ngưỡng dân gian, dựa trên hình dáng và đặc tính của cây.
    </p>
    <p>
        <b>Phong thủy:</b> Cây xanh giúp cân bằng âm dương, thu hút năng lượng tích cực và xua đuổi tà khí.
    </p>
    <p>
        <b>Yếu tố tâm lý:</b> Trồng cây mang lại cảm giác an tâm, yên bình và được bảo vệ.
    </p>
</div>

<div class="project-section">
    <h2>Tổng hợp 10 loại cây trừ tà trong tháng cô hồn</h2>
    <p>
        Tín ngưỡng về cây trừ tà là một phần quan trọng trong văn hóa dân gian Việt Nam. Dưới đây là các loại cây phổ biến được tin là có khả năng xua đuổi tà khí.
    </p>
</div>

<div class="project-section">
    <h2>1. Cây Lưỡi Hổ</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,1.jpg" alt="">
        <p>Cây lưỡi hổ được đánh giá trừ tà rất tốt</p>
    </div>
    <p>
        <b>Đặc điểm:</b> Lá dài, cứng, vươn thẳng, thanh lọc không khí tốt.  
        <br><b>Ý nghĩa phong thủy:</b> Xua đuổi tà khí, bảo vệ ngôi nhà.  
        <br><b>Vị trí đặt:</b> Nơi có nhiều góc cạnh để cân bằng năng lượng.
    </p>
</div>

<div class="project-section">
    <h2>2. Cây Trúc</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,2.jpg" alt="">
        <p>Cây trúc trồng hàng rào, ban công để trừ tà</p>
    </div>
    <p>
        <b>Đặc điểm:</b> Thân thẳng, mọc thành bụi.  
        <br><b>Ý nghĩa phong thủy:</b> Mang lại may mắn, tài lộc, tạo cảm giác bình yên.  
        <br><b>Vị trí đặt:</b> Trồng trước nhà hoặc trong vườn.
    </p>
</div>

<div class="project-section">
    <h2>3. Cây Xương Rồng</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,3.jpg" alt="">
        <p>Xương rồng gai góc được làm vật trừ tà từ xưa</p>
    </div>
    <p>
        <strong>Đặc điểm:</strong> Thân gai nhọn, chịu hạn tốt.  
        <br><b>Ý nghĩa phong thủy:</b> Xua đuổi tà ma, bảo vệ ngôi nhà.  
        <br><b>Vị trí đặt:</b> Cửa sổ, ban công.
    </p>
</div>

<div class="project-section">
    <h2>4. Cây Ngải Cứu</h2>
    <p>
        <b>Đặc điểm:</b> Có mùi thơm đặc trưng, thường dùng làm thuốc.  
        <br><b>Ý nghĩa phong thủy:</b> Trừ tà rất mạnh.  
        <br><b>Cách dùng:</b> Trồng cây hoặc treo bó ngải cứu khô trước cửa.
    </p>
</div>

<div class="project-section">
    <h2>5. Cây Cau</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,4.jpg" alt="">
        <p>Cây cau trồng trước cửa để trừ tà</p>
    </div>
    <p>
        <b>Đặc điểm:</b> Thân thẳng, lá dài.  
        <br><b>Ý nghĩa phong thủy:</b> Mang lại may mắn và tài lộc.  
        <br><b>Vị trí đặt:</b> Trồng trước nhà hoặc sân vườn.
    </p>
</div>

<div class="project-section">
    <h2>6. Cây Hoa Hòe</h2>
    
    <p>
        <b>Đặc điểm:</b> Hoa trắng hoặc vàng nhạt, thơm dịu.  
        <br><b>Ý nghĩa phong thủy:</b> Thuần khiết, mang lại bình yên.  
        <br><b>Vị trí đặt:</b> Trồng trong vườn hoặc ban công.
    </p>
</div>

<div class="project-section">
    <h2>7. Cây Thiết Mộc Lan</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,5.jpg" alt="">
        <p>Cây thiết mộc lan vừa trừ tà vừa mang lại may mắn</p>
    </div>
    <p>
        <b>Đặc điểm:</b> Lá xanh bóng, thân cứng cáp.  
        <br><strong>Ý nghĩa phong thủy:</strong> Hút tài lộc, xua đuổi tà khí.  
        <br><b>Vị trí đặt:</b> Phòng khách hoặc phòng làm việc.
    </p>
</div>

<div class="project-section">
    <h2>8. Cây Kim Tiền</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,6.jpg" alt="">
        <p>Ngoài ý nghĩa mang lại may mắn kim tiền trừ tà cũng rất tốt</p>
    </div>
    <p>
        <b>Đặc điểm:</b> Lá tròn như đồng tiền.  
        <br><b>Ý nghĩa phong thủy:</b> Mang lại tài lộc, may mắn.  
        <br><b>Vị trí đặt:</b> Bàn làm việc, quầy thu ngân.
    </p>
</div>

<div class="project-section">
    <h2>9. Cây Vạn Niên Thanh</h2>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc3,7.jpg" alt="">
        <p>Cây vạn niên thanh giúp mang lại bình an, xua đuổi tà khí</p>
    </div>
    <p>
        <strong>Đặc điểm:</strong> Lá xanh bóng, hình bầu dục.  
        <br><strong>Ý nghĩa phong thủy:</strong> Bình an, thanh lọc không khí.  
        <br><strong>Vị trí đặt:</strong> Phòng khách, phòng ngủ.
    </p>
</div>

<div class="project-section">
    <h2>10. Cây Sung</h2> 
    <p>
        <b>Đặc điểm:</b> Quả sung tròn trịa.  
        <br><b>Ý nghĩa phong thủy:</b> Sung túc, đủ đầy, tài lộc.  
        <br><b>Vị trí đặt:</b> Trồng trước nhà hoặc sân vườn.
    </p>
</div>

<div class="project-section">
    <h2>Lưu ý khi chọn cây trừ tà</h2>
    <p>
        • Chọn vị trí đặt cây phù hợp ánh sáng  
        <br>• Kích thước cây phù hợp không gian  
        <br>• Kết hợp với yếu tố phong thủy khác  
        <br>• Chăm sóc đúng cách để cây phát triển tốt
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