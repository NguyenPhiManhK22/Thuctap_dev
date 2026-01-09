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
        Nên tưới cây bằng nước máy hay nước đun sôi để nguội?
    </h1>

    <p class="project-intro">
        Vì sao lại lựa chọn hai loại nước này? Vì nếu bạn ở thành phố và văn phòng thì thường chỉ có hai lựa chọn này là tiện nhất. Cả nước máy và nước đun sôi đều có những ưu và nhược điểm riêng khi dùng để tưới cây. Dưới đây là một số so sánh để bạn có thể đưa ra lựa chọn phù hợp nhất:
    </p>
   <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/caycanh1.jpg" alt="">
    </div>

    <div class="project-section">
        <h2>Nước máy hay nước đun sôi tốt hơn cho cây</h2>
        <p>
            Trong 2 loại nước thì nước đun sôi để nguội được xem là lựa chọn tốt hơn cho cây. Vì đã loại bỏ được phần lớn clo. Tuy nhiên nếu bạn muốn tiết kiệm thời gian, có thể dùng nước máy lắng khoảng 1-2 ngày rồi tưới cho cây.
        </p>
        <p> Nước máy </p>
			<p >
			    <b>Ưu điểm:</b>
			</p>
			<p class="dot-line">
			    Tiện lợi, dễ dàng sử dụng.
			</p>	
			<p class="dot-line">
			    Có sẵn trong mọi nhà.
			</p>	
			<p >
			    <b>Nhược điểm:</b>
			</p>	
			<p class="dot-line">
			     <b>Chứa clo: </b> Clo được thêm vào nước máy để diệt khuẩn, nhưng lại có thể gây hại cho rễ cây, làm chậm quá trình phát triển của cây.
			</p>	
			<p class="dot-line">
			    <b> Các chất hóa học khác:</b> Ngoài clo, nước máy còn có thể chứa các chất hóa học khác như flo, kim loại nặng,… ảnh hưởng đến chất lượng đất và cây trồng.
			</p>	
		<h2>Nước đun sôi để nguội</h2>
		<p >
			    <b>Ưu điểm:</b>
			</p>
        <p class="dot-line">
			    <b>Loại bỏ clo: </b> Quá trình đun sôi giúp loại bỏ phần lớn clo có trong nước, giảm thiểu tác hại đến cây.
			</p>	
			<p class="dot-line">
			     <b>An toàn: </b> Nước đun sôi để nguội thường được xem là an toàn hơn cho cây trồng.
			</p>	
			<p >
			    <b>Nhược điểm:</b>
			</p>	
			<p class="dot-line">
			    <b> Mất thời gian: </b> Quá trình đun sôi và để nguội nước khá tốn thời gian.
			</p>	
			<p class="dot-line">
			     <b>Mất các khoáng chất: </b> Đun sôi có thể làm mất đi một số khoáng chất có lợi cho cây.
			</p>		
    </div>

    <div class="project-section">
        <h3>Những loại nước tưới cây tốt nhất</h3>
        <p>
            Khi chăm sóc cây cảnh, việc chọn đúng loại nước để tưới cây là rất quan trọng để đảm bảo cây phát triển khỏe mạnh. Dưới đây là một số loại nước tưới cây tốt nhất:
        </p>
        <p><b>1. Nước mưa</b></p>
        <p>Đây là nguồn nước tự nhiên và tốt nhất cho cây trồng vì nó không chứa chất hóa học như clo hay fluoride, thường có trong nước máy. Nước mưa còn có độ pH trung tính, rất lý tưởng cho cây cảnh. Tuy nhiên ở một số khu vực ô nhiễm, nước mưa có thể chứa chất độc hại cần lưu ý.</p>
        <p><b>2. Nước gạo</b></p>
        <p>Nước vo gạo chứa nhiều dưỡng chất như vitamin B và khoáng chất, rất tốt cho cây cảnh. Bạn có thể dùng nước vo gạo để tưới cây khoảng 1-2 lần/tuần.</p>
        <p><b>3. Nước giếng</b></p>
        <p>Nước giếng là nguồn nước ngầm tự nhiên, thường không chứa hóa chất và rất phù hợp để tưới cây. Tuy nhiên, bạn cần kiểm tra độ pH và hàm lượng khoáng chất trong nước giếng để đảm bảo nó phù hợp với cây trồng của bạn.</p>
        <p><b>4. Nước trà loãng</b></p>
        <p>Trà loãng chứa nhiều chất chống oxy hóa và một lượng nhỏ caffeine, có thể kích thích sự phát triển của cây. Tuy nhiên, chỉ nên dùng trà không đường và không sữa để tránh làm hỏng đất và rễ cây.</p>
        <p><b>5. Nước từ vỏ trứng</b></p>
        <p>Nước ngâm vỏ trứng là nguồn canxi tự nhiên giúp cây cứng cáp và phát triển rễ khỏe mạnh. Bạn chỉ cần ngâm vỏ trứng trong nước vài ngày rồi dùng nước này để tưới cây.</p>
        <p><b>6. Nước từ bể cá</b></p>
        <p>Nước trong bể cá chứa nhiều chất dinh dưỡng từ phân cá và thức ăn dư thừa, là nguồn nước tự nhiên rất tốt cho cây trồng. Tuy nhiên, bạn cần đảm bảo nước không quá bẩn hoặc chứa nhiều chất hóa học để tránh làm hại cây.</p>
        <p><b>7. Nước lên men từ trái cây</b></p>
        <p>Bạn có thể sử dụng nước lên men từ trái cây như chuối, cam, hoặc táo để tưới cây. Nước lên men này chứa nhiều enzyme và dưỡng chất, giúp cây hấp thụ dinh dưỡng dễ dàng hơn.</p>
        <p><b>8. Nước từ các loại rau củ</b></p>
        <p>Khi luộc rau củ, bạn có thể giữ lại nước luộc để nguội và dùng tưới cây. Nước này chứa nhiều vitamin và khoáng chất có lợi, giúp cây phát triển tốt hơn.</p>
        
        <p><b>Một số lưu ý khi tưới cây</b></p>
        <p class="dot-line">
			   <b>Thời điểm tưới:</b>  Nên tưới cây vào sáng sớm hoặc chiều mát để tránh nước bốc hơi nhanh và giảm thiểu sự tác động của ánh nắng mặt trời lên cây.
			</p>
			<p class="dot-line">
			    <b> Lượng nước:</b>  Tưới đủ ẩm cho đất, không nên tưới quá nhiều hoặc quá ít.
			</p>
			<p class="dot-line">
			     <b>Cách tưới:</b>  Tưới trực tiếp vào gốc cây, để tránh làm ướt lá và tạo điều kiện cho nấm bệnh phát triển.
			</p>
        <p><b>Kết luận:</b></p>
        <p>Việc lựa chọn loại nước tưới cây phụ thuộc vào nhiều yếu tố như loại cây, điều kiện thời tiết, và sự tiện lợi của người trồng. Tuy nhiên, nếu có điều kiện, bạn nên ưu tiên sử dụng nước đun sôi để nguội hoặc nước mưa để đảm bảo sức khỏe cho cây trồng.</p>
        
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