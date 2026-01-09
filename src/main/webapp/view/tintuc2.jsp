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
    <h1 class="project-titlle">
        8 yếu tố giúp cây trồng trong nhà luôn xanh tốt
    </h1>
    <p class="project-intro">
        Trong thời đại hiện nay, cây trồng trong nhà không chỉ để trang trí mà còn mang lại nhiều lợi ích cho sức khỏe và tinh thần của con người. Tuy nhiên, để cây trồng trong nhà luôn xanh tốt và phát triển khỏe mạnh, chúng ta cần chú ý đến nhiều yếu tố khác nhau. Bài viết này sẽ giúp bạn hiểu rõ hơn về các yếu tố quan trọng và cách chăm sóc cây trồng trong nhà một cách hiệu quả.
    </p>
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/caycanh2.jpg" alt="">
    </div>
    <div class="project-section">
    <h2>8 yếu tố giúp cây trồng trong nhà luôn xanh tốt</h2>
    <p>
        Nếu bạn có thể đảm bảo được 8 yếu tố dưới đây thì cây trồng trong nhà sẽ luôn xanh tốt và phát triển mạnh mẽ.
    </p>
</div>

<div class="project-section">
    <h2>1. Ánh sáng</h2>
    <p>
        Ánh sáng là yếu tố quan trọng hàng đầu đối với sự phát triển của cây trồng. Mỗi loại cây có nhu cầu ánh sáng khác nhau, từ ánh sáng trực tiếp đến ánh sáng gián tiếp hay ánh sáng yếu.
    </p>
    <p>
        Ví dụ, cây lưỡi hổ, cây kim tiền và cây dương xỉ ưa ánh sáng gián tiếp. Trong khi đó, cây xương rồng, cây bàng Singapore và cây lô hội cần ánh sáng trực tiếp để phát triển tốt.
    </p>
    <p>
        Một số mẹo giúp cây nhận đủ ánh sáng:
        <br>• Đặt cây gần cửa sổ có ánh sáng tự nhiên  
        <br>• Dùng rèm cửa để giảm ánh sáng gắt  
        <br>• Sử dụng đèn LED chuyên dụng cho cây
    </p>
</div>

<div class="project-section">
    <h2>2. Nước</h2>
    <p>
      Cung cấp nước đúng cách là yếu tố then chốt giúp cây trồng phát triển khỏe mạnh. Mỗi loại cây có nhu cầu nước khác nhau, và việc tưới nước không đúng cách có thể gây hại cho cây. Để xác định khi nào cần tưới nước, bạn có thể kiểm tra độ ẩm của đất bằng cách chọc ngón tay vào đất khoảng 2-3 cm. Nếu đất còn ẩm, bạn không cần tưới thêm nước. Ngược lại, nếu đất khô, đó là lúc bạn cần tưới nước cho cây.
    </p>
    <p>
        Một số lưu ý khi tưới nước cho cây trồng trong nhà:
        <br>• Sử dụng nước ở nhiệt độ phòng để tránh sốc nhiệt cho cây.
        <br>• Chậu cây cần có lỗ thoát nước  
        <br>• Tưới đều khắp bề mặt đất
    </p>
</div>

<div class="project-section">
    <h2>3. Độ ẩm</h2>
    <p>
        Đa số cây trồng trong nhà ưa môi trường có độ ẩm cao. Bạn có thể phun sương nhẹ lên lá hoặc sử dụng máy tạo độ ẩm, đặc biệt vào mùa đông.
    </p>
</div>

<div class="project-section">
    <h2>4. Nhiệt độ</h2>
    <p>
        Nhiệt độ lý tưởng cho cây trồng trong nhà là từ 18–24°C. Tránh đặt cây gần máy điều hòa, lò sưởi hoặc nơi nhiệt độ thay đổi đột ngột.
    </p>
</div>

<div class="project-section">
    <h2>5. Dinh dưỡng</h2>
    <p>
        Bón phân đều đặn giúp cây có đủ dưỡng chất phát triển. Bạn nên lựa chọn loại phân phù hợp với từng loại cây.
    </p>
    <p>
        Các loại phân bón phổ biến:
        <br>• Phân bón hữu cơ  
        <br>• Phân bón hóa học  
        <br>• Phân bón dạng lỏng
    </p>
</div>

<div class="project-section">
    <h2>6. Đất trồng</h2>
    <p>
        Đất trồng cần thoát nước tốt và giàu dinh dưỡng. Bạn có thể mua đất chuyên dụng hoặc tự trộn đất với phân trùn quế và cát.
    </p>
</div>

<div class="project-section">
    <h2>7. Cắt tỉa và chăm sóc</h2>
    <p>
        Cắt tỉa định kỳ giúp cây luôn tươi tốt và hạn chế sâu bệnh. Hãy loại bỏ lá vàng, lá khô và lau lá để cây hấp thụ ánh sáng tốt hơn.
    </p>
</div>

<div class="project-section">
    <h2>8. Chọn cây phù hợp</h2>
    <p>
        Việc chọn cây phù hợp với điều kiện sống trong nhà giúp cây phát triển tốt hơn. Một số loại cây dễ chăm sóc:
    </p>
    <p>
        • Cây lưỡi hổ – chịu ánh sáng yếu  
        <br>• Cây kim tiền – dễ chăm sóc  
        <br>• Cây dương xỉ – ưa môi trường ẩm  
        <br>• Cây xương rồng – cần ánh sáng trực tiếp  
        <br>• Cây bàng Singapore – ánh sáng mạnh
    </p>
</div>

<div class="project-section">
    <h2>Kết luận</h2>
    <p>
        Chăm sóc cây trồng trong nhà đòi hỏi sự kiên nhẫn và hiểu rõ nhu cầu của từng loại cây. Khi đáp ứng đầy đủ các yếu tố trên, cây sẽ luôn xanh tốt, mang lại không gian sống trong lành và thư giãn.
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