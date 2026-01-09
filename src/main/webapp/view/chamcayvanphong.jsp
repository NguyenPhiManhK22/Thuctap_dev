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
        Cách chăm sóc cây cảnh văn phòng
    </h1>
    <p class="project-intro">
       Một trong những điều được nhiều người quan tâm nhất sau khi đã sở hữu cây cảnh văn phòng, cây phong thủy hay cây để bàn làm việc đó chính là cách chăm sóc. Vậy chăm sóc cây cảnh văn phòng như thế nào? Để cho cây phát triển tốt, lá luôn xanh và tươi, những sai lầm thường hay mắc phải khiến cây chết là gì? Nếu bạn đang quan tâm những điều đó thì hãy theo dõi bài viết dưới đây.
    </p>
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/chamcay1.jpg" alt="">      
    </div>
    <div class="project-section">
    <h2>Cách chăm sóc cây cảnh văn phòng</h2>
    <p>
        Cây cảnh văn phòng là loại cây rất dễ chăm sóc và mang nhiều ý nghĩa phong thủy
        như tài lộc, may mắn, thịnh vượng, sức khỏe và sự bảo vệ.
        Một số loại cây thường được lựa chọn gồm: cây Kim Tiền, Kim Ngân,
        Lưỡi Hổ, Thiết Mộc Lan… Đây đều là những cây có khả năng sống trong
        môi trường thiếu sáng và ưa râm mát.
    </p>
</div>

<div class="project-section">
    <h2>Tưới nước</h2>
    <p>
        Nếu cây được đặt ngoài trời có nắng và gió, bạn có thể tưới nước mỗi ngày.
        Việc tưới giúp rửa sạch bụi trên lá, hỗ trợ cây quang hợp tốt hơn.
        Thời điểm tưới thích hợp là buổi sáng sớm hoặc chiều tối,
        tránh tưới vào buổi trưa nắng nóng để hạn chế cây bị sốc nhiệt.
    </p>
    <p>
        Đối với cây đặt trong văn phòng hoặc trong nhà, có máy lạnh,
        ít nắng và ít gió thì tốc độ bay hơi nước thấp, đất giữ ẩm lâu.
        Vì vậy, chỉ nên tưới nước khoảng 1 tuần 2 lần,
        mỗi lần tưới đủ ẩm khoảng một nửa lượng đất trong chậu.
        Nên tưới nước ở gốc, còn lá nếu bẩn thì dùng khăn ướt lau sạch.
    </p>
</div>

<div class="project-section">
    <h2>Đất trồng</h2>
    <p>
        Loại đất trồng sẵn cho cây văn phòng thường đã là đất tốt,
        giàu mùn và dinh dưỡng, có thể giúp cây phát triển ổn định
        trong khoảng 3 đến 6 tháng.
    </p>
    <p>
        Nếu trồng lâu ngày thấy cây có hiện tượng vàng lá do thiếu chất,
        bạn có thể bổ sung đất mới, mùn hoặc thay đất cho cây.
        Ngoài ra, có thể sử dụng phân bón tan chậm rắc nhẹ quanh gốc cây.
    </p>
</div>

<div class="project-section">
    <h2>Ánh sáng</h2>
    <p>
        Cây văn phòng có thể sống trong môi trường thiếu sáng,
        tuy nhiên màu sắc lá sẽ không đậm và xanh tươi.
        Vì vậy, vào cuối tuần bạn nên đưa cây ra ngoài hiên
        hoặc nơi có ánh nắng nhẹ để cây tiếp xúc với nắng gió tự nhiên.
    </p>
    <p>
        Trong trường hợp không thể đưa cây ra ngoài,
        nên đặt cây gần cửa sổ nơi có ánh sáng chiếu vào gián tiếp.
    </p>
</div>

<div class="project-section">
    <h2>Vị trí đặt cây</h2>
    <p>
        Vị trí đặt cây ảnh hưởng rất lớn đến sự phát triển và sức sống
        của cây văn phòng. Nơi đặt cây lý tưởng là khu vực thoáng mát,
        có ánh nắng nhẹ hoặc ánh sáng đèn ổn định.
    </p>
    <p>
        Nếu buộc phải đặt cây ở nơi khuất, ít ánh sáng và kém thông thoáng,
        bạn nên áp dụng cách luân chuyển cây định kỳ.
    </p>
</div>

<div class="project-section">
    <h2>Luân chuyển cây khi mới mang về</h2>
    <p>
        Khi mới mua cây từ vườn hoặc cửa hàng về,
        môi trường sống của cây sẽ thay đổi đột ngột.
        Để cây thích nghi tốt hơn, bạn nên mang cây ra vị trí
        thoáng mát như ban công hoặc hiên nhà, sau đó lại đưa vào trong nhà.
    </p>
    <p>
        Ban đầu, thời gian để cây ngoài trời nên nhiều hơn trong nhà,
        sau đó giảm dần. Khi cây có dấu hiệu phát triển ổn định,
        bạn có thể đặt cây cố định ở vị trí mong muốn.
    </p>
</div>

<div class="project-section">
    <h2>Những sai lầm thường gặp khi chăm cây cảnh văn phòng</h2>
    <p>
        – Tưới nước mỗi ngày là sai lầm phổ biến nhất.
        Để tránh úng nước, nên kê chậu cao và không bịt lỗ thoát nước dưới đáy chậu.
    </p>
    <p>
        – Quên tưới nước khiến lá mềm, rủ xuống.
        Khi gặp tình trạng này, chỉ cần tưới nước hoặc ngâm chậu vào nước
        khoảng một phút để cây hồi phục.
        Lỗi này thường gặp ở các loại cây để bàn do lượng đất ít.
    </p>
    <p>
        – Thay đổi nhiệt độ đột ngột.
        Ví dụ, đang để cây trong phòng máy lạnh khoảng 20 độ
        rồi mang ra ngoài trời nắng gắt trên 30 – 40 độ,
        cây rất dễ bị sốc nhiệt và chết.
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