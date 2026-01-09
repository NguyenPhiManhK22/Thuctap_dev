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
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
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
        [Dự án] Trang trí cây xanh cho biệt thự tại Vinhomes Green Bay
    </h1>

    <p class="project-intro">
        Nhu cầu trang trí cây xanh trong các hộ gia đình ngày càng lớn, đặc biệt là tại những căn biệt thự. Một trong những dự án trang trí cây xanh cho biệt thự mà chúng tôi đã hoàn thành là Vinhomes Green Bay. Biệt thự này có địa chỉ tại số 7 đại lộ Thăng Long, phường Mễ Trì, quận Nam Từ Liêm, Hà Nội. Hãy cùng <a href="#">Webcaycanh</a> xem lại những hình ảnh của dự án này bạn nhé.      
    </p>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/duanvinhomes.jpg" alt="">
    </div>

    <div class="project-section">
        <h3>Các loại cây xanh trang trí tại biệt thự Vinhomes Green Bay</h3>
        <p>
         Vinhomes Green Bay là một trong những khu đô thị được ưa chuộng tại Hà Nội. Với mong muốn tạo nên không gian sống xanh mát, gần gũi thiên nhiên, chúng tôi đã sử dụng những loại cây xanh dễ trồng, dễ sống và dễ chăm sóc cho việc trang trí biệt thự tại Vinhomes Green Bay. Các loại cây treo tường như cây thường xuân, cây trầu bà, cây hoa dạ yến thảo, cỏ lan chi,… đã tạo nên điểm nhấn sinh động, mang lại sự hài hòa và bình yên cho không gian sống. Ngoài ra, các loại cây cảnh nhỏ như hoa nhài, chuối cảnh, lan ý,… cũng được sử dụng để tô điểm cho không gian biệt thự thêm phần dễ chịu và gần gũi.
        </p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/vinhomes1.jpg" alt="">
    </div>
    </div>
    <div class="project-section">
        <h2>Vai trò của việc trang trí cây xanh cho biệt thự</h2>
        <p>
            Việc trang trí cây xanh trong biệt thự không chỉ mang lại vẻ đẹp tự nhiên mà còn có vai trò quan trọng trong việc tạo nên không gian sống lý tưởng.
        </p>
        <p class="dot-line">
		   Cây xanh giúp làm dịu bớt cảm giác căng thẳng và áp lực từ cuộc sống hàng ngày. Khi bước vào không gian xanh của biệt thự, mọi lo âu dường như tan biến, thay vào đó là cảm giác thoải mái và thư thái.
		</p>
		<p class="dot-line">
		    Cây xanh còn có khả năng cân bằng độ ẩm và hấp thụ các khí độc hại, tạo ra không khí trong lành và trong trẻo. Nhờ vậy, không gian sống trong biệt thự luôn được cung cấp nguồn năng lượng tích cực và đem lại lợi ích về sức khỏe cho cả gia đình.
		</p>
    </div>
		<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/vinhomes3.jpg" alt="">
    	</div>
    <div class="project-section">
        <h2>Các phong cách trang trí cây xanh cho biệt thự</h2>
        <p>
            Trang trí cây xanh cho biệt thự không chỉ giới hạn trong một phong cách duy nhất, mà có nhiều sự lựa chọn phù hợp với phong cách sống và sở thích của chủ nhà. Có thể lựa chọn phong cách trang trí hiện đại, tận dụng không gian sân vườn và ban công để bày biện các loại cây lớn, cây cỏ hoặc cây leo treo tường, tạo nên không gian xanh mát và tươi mới. Nếu ưa thích phong cách trang nhã, thanh lịch, các loại cây cảnh nhỏ bé như hoa nhài, chuối cảnh, lan ý thuỷ sinh,… sẽ là lựa chọn hoàn hảo, mang lại cảm giác gần gũi và thư thái cho không gian sống.
        </p>
    </div>
		<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/vinhomes4.jpg" alt="">
    	</div>
    	
    	
    <div class="project-section">
        <h3>Điểm mạnh của Webcaycanh</h3>
        <p>
            Với hơn 9 năm làm việc trong lĩnh vực cây cảnh, chúng tôi đã và đang tạo nên uy tín và thương hiệu bởi các điểm mạnh có thể kể đến sau:
        </p>
    </div>
    <div class="project-section">
        <h2>Giá cả luôn cạnh tranh hoặc rẻ nhất</h2>
        <p>
            Webcaycanh không chỉ là một đơn vị bán lẻ cây cảnh mà còn là một nhà vườn trồng cây và phân phối cây cho các đại lý cây cảnh khác. Nhờ vậy, giá cây do chúng tôi cung cấp luôn đảm bảo cạnh tranh hoặc rẻ nhất trên thị trường.
        </p>
    </div>
    <div class="project-section">
        <h2>Sản phẩm đa dạng, phong phú</h2>
        <p>
            Như đã nói ở trên, ngoài tự trồng và sản xuất các loại cây có sẵn thì chúng tôi còn có nguồn hàng lớn từ miền Nam và Trung Quốc. Chính vì vậy, chúng tôi luôn có các loại cây phong phú và đa dạng, đảm bảo mang đến cho khách hàng nhiều lựa chọn phù hợp với nhu cầu và sở thích.
        </p>
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/vinhomes5.jpg" alt="">
    	</div>
    <div class="project-section">
        <h2>Chất lượng cây tốt</h2>
        <p>
            Trước khi giao cây đến khách hàng, chúng tôi kiểm tra chất lượng cây kỹ lưỡng, đảm bảo cây khoẻ không bị sâu bệnh hại. Điều này giúp cây xanh khi tới tay khách hàng luôn tươi đẹp, mạnh khỏe, dễ dàng sinh trưởng và phát triển.
        </p>
    </div>
    <div class="project-section">
        <h2>Giao hàng nhanh, đóng gói cẩn thận</h2>
        <p>
            Giao hàng nhanh và đóng gói cây cẩn thận là cam kết của Webcaycanh để đảm bảo cây không bị hư hỏng hay gãy cành khi đến tay khách hàng.
        </p>
    </div>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/vinhomes6.jpg" alt="">
    	</div>
    <div class="project-section">
    	<h3>Chế độ bảo hành rõ ràng, hộ trợ bảo hành trọn đời</h3>
        <p>Chúng tôi luôn tận tâm hỗ trợ và tư vấn cho khách hàng trong quá trình chăm sóc cây, giúp cây phát triển ổn định và bền vững. Chế độ bảo hành rõ ràng và hỗ trợ trọn đời cho khách hàng giúp tạo nên niềm tin và sự hài lòng trong việc lựa chọn sản phẩm của Webcaycanh. </p>
        <p class="dot-line">
   			Tất cả các sản phẩm được phân phối từ Web Cây Cảnh đều được bảo hành 14 ngày kể từ lúc giao hàng.
		</p>
		<p class="dot-line">
	    	Đối với các sản phẩm công trình được bảo hành đến khi cây phát triển ổn định, cây ra mầm hoặc theo thoả thuận.
		</p>
		<p class="dot-line">
	    	Hỗ trợ khách hàng tư vấn trọn đời trong quá trình chăm cây, cây có hiện tượng lạ, chỉ cần chụp ảnh và gửi cho webcaycanh để tư vấn.
		</p>
        <p>
            Trang trí cây xanh trong biệt thự là một cách tuyệt vời để làm mới không gian sống, tạo nên vẻ đẹp tự nhiên và thanh thoát cho không gian sống của gia đình. Với sự đa dạng về loại cây và phong cách trang trí, Webcaycanh luôn sẵn sàng đáp ứng mọi nhu cầu và yêu cầu của khách hàng. Hãy liên hệ với chúng tôi ngay hôm nay để được tư vấn và lựa chọn những loại cây xanh phù hợp nhất cho không gian sống của bạn.
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