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
        [Dự án] Trang trí cây xanh biệt thự 371 La Thành
    </h1>
    <p class="project-intro">
        Trong xã hội ngày càng phát triển hiện nay, nhu cầu trang trí cây xanh trong các hộ gia đình đang dần trở thành xu hướng không thể thiếu. Đặc biệt, những căn biệt thự với diện tích rộng lớn luôn có nhu cầu được trang hoàng nhiều cây cối hơn. Một trong những dự án trang trí cây xanh cho biệt thự mà chúng tôi đã thực hiện là biệt thự ở 371 La Thành. Trong bài viết này, hãy cùng <a href="index.jsp">Webcaycanh</a> xem lại các hình ảnh của dự án này.
    </p>
    <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/Duan371.jpg" alt="">
    </div>
    <div class="project-section">
    	<h3>Các loại cây xanh trang trí tại biệt thự ở 371 La Thành</h3>
        <p>
           Tại căn biệt thự này chúng tôi đã sử dụng một loạt các loại cây xanh phong phú để trang trí và làm đẹp cho không gian sống. Đặc biệt, những loại cây sau đây đã được lựa chọn kỹ càng để tạo nên không gian xanh tươi và sinh động:
        </p>
    	
        <h2>Cây trúc quân tử</h2>
        <p>
           Được sử dụng làm hàng rào bao quanh biệt thự, cây trúc quân tử mang ý nghĩa vững vàng, bền bỉ như quân tử vững chắc, tạo nên không gian riêng tư và thanh lịch cho căn nhà.
        </p>
		<div class="project-image">
        <img src="${pageContext.request.contextPath}/images/trucquantu.jpg" alt="">
        </div>
    </div>

    <div class="project-section">
        <h2>Hoa dạ yến thảo</h2>
        <p>
            Cây hoa dạ yến thảo được trồng treo ở ban công, mang đến vẻ đẹp dịu dàng và lãng mạn, giúp tạo nên không gian sống thư thái và tươi mới.
        </p>
        <h2>Bàng đài loan</h2>
        <p>
            Loại cây lớn này được đặt làm cây cảnh để sàn, với ý nghĩa may mắn và thịnh vượng, tạo điểm nhấn và thu hút sự chú ý trong không gian biệt thự.
        </p>
        <h2>Các loại cây nhỏ treo tường khác</h2>
        <p>
            Trầu bà, hạt dưa, dương xỉ,… là những loại cây xanh nhỏ xinh được treo tường, mang đến không gian sống gần gũi thiên nhiên và cảm giác thanh tịnh.
        </p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/caynhotreotuong.jpg" alt="">
        </div>
    </div>

    <div class="project-section">
        <h3>Vai trò của việc trang trí cây xanh cho biệt thự</h3>
        <p>
            Trang trí cây xanh trong biệt thự không chỉ đơn thuần là để tạo nên vẻ đẹp tự nhiên và xanh mát. Cây xanh còn đóng vai trò quan trọng trong việc tạo nên môi trường sống lý tưởng và cân bằng cho gia đình. Các vai trò của cây xanh trong không gian biệt thự bao gồm:
        </p>
    </div>
		<h2>Tạo không gian xanh mát</h2>
        <p>
            Cây xanh tạo nên một không gian sống xanh mát, thoáng đãng và trong lành, giúp gia đình tận hưởng không khí trong lành và tự nhiên.
        </p>
        <h2>Tăng cường sinh khí</h2>
        <p>
            Cây xanh mang lại năng lượng tích cực và sinh khí cho không gian sống, giúp gia đình tràn đầy năng lượng và sức sống.
        </p>
        <h2>Hỗ trợ cân bằng độ ẩm và tạo không khí trong lành</h2>
        <p>
            Các loại cây xanh có khả năng cân bằng độ ẩm và hấp thụ các khí độc hại, giúp tạo ra không khí trong lành và thoải mái cho không gian sống
        </p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/hotrodoam.jpg" alt="">
        </div>
        <h2>Tạo điểm nhấn và thẩm mỹ cho không gian</h2>
        <p>
            Cây xanh tạo điểm nhấn và mang đến vẻ đẹp tự nhiên và thư thái cho không gian sống của gia đình.
        </p>
         <h2>Giúp giảm căng thẳng và tạo cảm giác thư giãn</h2>
        <p>
            Cảm giác bình yên và thư giãn khi được sống gần gũi với thiên nhiên là một trong những lợi ích tuyệt vời mà cây xanh mang lại.
        </p>
        
    <div class="project-section">
        <h3>Các phong cách trang trí cây xanh cho biệt thự</h3>
        <p>
            Trang trí cây xanh cho biệt thự không giới hạn theo một phong cách cố định, mà tùy thuộc vào sở thích và ý tưởng của gia đình, có thể lựa chọn các phong cách sau:
        </p>
        <p class="dot-line">
    		Phong cách tự nhiên: Trang trí cây xanh theo phong cách tự nhiên với những loại cây có hình thái tự nhiên và không gian sống gần gũi với thiên nhiên.
		</p>
		<p class="dot-line">
    		Phong cách hiện đại: Sử dụng các loại cây có hình thái đơn giản, gọn gàng và phối hợp với kiến trúc hiện đại của căn nhà.
		</p>
		<p class="dot-line">
    		Phong cách cổ điển: Lựa chọn các loại cây cổ điển, có hình dáng tròn trịa và phù hợp với không gian biệt thự kiểu cổ điển.
		</p>
		<p class="dot-line">
    		Phong cách nhiệt đới: Trang trí cây xanh với các loại cây nhiệt đới, mang đến không gian sống tươi mới và năng động.
		</p>
		<p class="dot-line">
    		Phong cách châu Á: Sử dụng cây cỏ, cây cảnh có ý nghĩa trong phong thủy, tạo cảm giác bình yên và hài hòa cho không gian sống.
		</p>
		 <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/phongcach.jpg" alt="">
        </div>
    </div>
		<div class="project-section">
        <h3>Điểm mạnh của Webcaycanh</h3>
        <p>
            Webcaycanh tự hào là đơn vị cung cấp cây xanh trang trí hàng đầu với nhiều điểm mạnh nổi bật:
        </p>
        <h2>Giá cả cạnh tranh hoặc rẻ nhất trên thị trường</h2>
        <p>
            Webcaycanh không chỉ là đơn vị bán lẻ cây cảnh, mà còn là nhà vườn trồng cây và phân phối cây cho các đại lý cây cảnh khác. Điều này giúp giảm thiểu các bước trung gian và giảm giá thành, từ đó chúng tôi có thể đảm bảo giá cả cạnh tranh và rẻ nhất cho khách hàng.
        </p>
        <h2>Chất lượng cây cảnh đảm bảo</h2>
        <p>
            Trước khi giao cây đến khách hàng, chúng tôi thực hiện kiểm tra chất lượng kỹ lưỡng và kiểm tra sâu bệnh để đảm bảo cây đạt tiêu chuẩn và phát triển tốt trong môi trường mới.
        </p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/duan371-1.jpg" alt="">
        </div>
        <h2>Giao hàng nhanh chóng và đóng gói cẩn thận</h2>
        <p>
            Chúng tôi cam kết giao hàng nhanh chóng và đảm bảo đóng gói cây cẩn thận, đảm bảo cây không bị hư hỏng hay gãy cành khi tới tay khách hàng.
        </p>
        <h2>Đa dạng các loại cây</h2>
        <p>
            Webcaycanh cung cấp đa dạng các loại cây, từ cây cảnh văn phòng, cây cảnh để bàn, cây phong thuỷ cho đến các loại cây công trình, đáp ứng mọi nhu cầu trang trí cây xanh của khách hàng.
        </p>
        <h2>Chế độ bảo hành rõ ràng</h2>
        <p>
            Chính sách bảo hành của chúng tôi luôn luôn rõ ràng. Cam kết bảo hành tất cả các sản phẩm trong vòng 14 ngày kể từ lúc giao hàng. Đối với các sản phẩm công trình, chúng tôi bảo hành đến khi cây phát triển ổn định, cây ra mầm. Hỗ trợ khách hàng trọn đời trong quá trình chăm cây, đáp ứng mọi yêu cầu và tư vấn cần thiết của khách hàng.
        </p>
        <div class="project-image">
        <img src="${pageContext.request.contextPath}/images/duan371-2.jpg" alt="">
        </div>
        <p>
        	Tóm lại, trang trí cây xanh trong biệt thự không chỉ là xu hướng đẹp mắt và sang trọng mà còn mang ý nghĩa sâu sắc trong việc tạo nên không gian sống thư thái và gần gũi thiên nhiên. Khu biệt thự ở 371 La Thành là một trong những dự án mà Webcaycanh đã thực hiện với tâm huyết và chất lượng cao. Chúng tôi hy vọng rằng bài viết này đã giúp bạn hiểu rõ hơn về vai trò và ý nghĩa của việc trang trí cây xanh cho không gian sống và đem đến sự lựa chọn tuyệt vời cho gia đình bạn. Hãy đến với Webcaycanh để trang hoàng không gian sống của gia đình bạn thêm xanh mát và thanh bình.
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