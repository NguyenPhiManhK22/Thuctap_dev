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
        Tác dụng của cây kim tiền
    </h1>
    <p class="project-intro">
       Cây kim tiền vốn là một loại cây cảnh phổ biến trên thị trường. Vì xét về mặt phong thủy thì cây kim tiền mang ý nghĩa hút lộc, hút tiền về cho gia chủ. Tuy nhiên vẫn còn một số ý kiến về loại cây phong thủy này có độc, có gây hại sức khỏe khi đặt loại cây này trong nhà. Chính vì vậy hôm nay hãy cùng tìm hiểu về tác dụng của cây kim tiền nhé.
    </p>
 
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/caycanh4.jpg" alt="">      
    </div>
    <div class="project-section">
    <h2>Nguồn gốc của cây kim tiền</h2>
    <p>
        Cây kim tiền hay còn gọi là cây kim phát tài, có tên khoa học là
        Zamioculcas zamiifolia, thuộc họ Ráy. Cây có nguồn gốc
        từ Trung Phi – khu vực có khí hậu khắc nghiệt, lượng mưa thấp.
        Chính vì vậy, cây kim tiền có khả năng chịu hạn rất tốt.
    </p>
    <p><b>Tác dụng của cây kim tiền</b></p>
    <p>
        Cây kim tiền có nhiều tác dụng nổi bật như trang trí, thanh lọc không khí
        và mang ý nghĩa phong thủy thu hút tài lộc.
    </p>
</div>

<div class="project-section">
    <h2>1. Tác dụng để trang trí</h2>
    <p>
        Cây kim tiền là một trong những loại cây cảnh phổ biến nhất hiện nay.
        Với tính thẩm mỹ cao, giá thành hợp lý, dễ chăm sóc và sức sống bền bỉ,
        cây được rất nhiều gia đình lựa chọn để trang trí nhà ở, văn phòng,
        cửa hàng kinh doanh.
    </p>
</div>

<div class="project-section">
    <h2>2. Tác dụng thanh lọc không khí</h2>
    <p>
        Cây kim tiền có khả năng thanh lọc không khí hiệu quả. Theo tạp chí
        <em>Water, Air & Soil Pollution</em>, khả năng lọc không khí của cây
        cao gấp 3 lần so với cây lưỡi hổ.
    </p>
    <p>
        Cây giúp loại bỏ các khí độc hại như carbon dioxide, xylene, đồng thời
        làm giảm ô nhiễm và cải thiện chất lượng không khí. Theo tạp chí
        <em>Ecotoxicology and Environmental Safety</em>, cây kim tiền còn có
        khả năng giảm lượng ozone gây ô nhiễm không khí.
    </p>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/tintuc4.jpg" alt="">      
    </div>
</div>

<div class="project-section">
    <h2>3. Tác dụng phong thủy của cây kim tiền</h2>
    <p>
        Đúng như tên gọi “Kim Tiền”, cây tượng trưng cho tiền tài, may mắn và
        sự thịnh vượng. Vì vậy, nhiều người trồng cây kim tiền trong nhà với
        mong muốn công việc làm ăn thuận lợi, kinh doanh phát đạt.
    </p>
    <p>
        Cây có cành lá xanh mướt, xum xuê, tượng trưng cho sức sống mạnh mẽ
        và sự sinh sôi, phát triển bền vững của gia chủ.
    </p>
</div>

<div class="project-section">
    <h2>4. Tác dụng hấp thụ chất độc hại và bức xạ</h2>
    <p>
        Trong cây kim tiền có chứa tinh thể <strong>canxi oxalat</strong>,
        giúp cây hấp thụ chất độc hại và bức xạ điện tử phát ra từ các thiết bị
        điện tử trong gia đình và văn phòng.
    </p>
    <p>
        Tuy nhiên, canxi oxalat là chất có độc tính nhẹ, vì vậy cần lưu ý nếu
        trong nhà có trẻ nhỏ. Nhờ thành phần này, cây kim tiền hầu như không
        bị sâu bệnh, đây cũng là ưu điểm lớn của cây.
    </p>
</div>

<div class="project-section">
    <h2>Cây kim tiền hợp mệnh gì, tuổi gì?</h2>
    <p>
        Về bản chất, cây kim tiền mang lại tài lộc và may mắn, vì vậy hầu như
        ai cũng có thể trồng và đặt cây trong nhà. Chỉ cần lưu ý vị trí đặt
        cây sao cho phù hợp với phong thủy để phát huy tối đa tác dụng.
    </p>
</div>

<div class="project-section">
    <h2>Nên đặt cây kim tiền ở đâu?</h2>
    <p>
        Vị trí đặt cây kim tiền rất quan trọng, giúp gia chủ gặp nhiều thuận
        lợi trong công việc và cuộc sống. Một số vị trí phù hợp bao gồm:
    </p>
    <p>
        • Trước cửa nhà, bậc thềm, hành lang  
        <br>• Trên bàn làm việc  
        <br>• Ban công, cửa sổ  
        <br>• Góc phòng khách hoặc phòng làm việc
    </p>
    <p>
        Không nên đặt cây kim tiền trong phòng ngủ kín vì ban đêm cây hấp thụ
        oxy, có thể ảnh hưởng không tốt đến sức khỏe.
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