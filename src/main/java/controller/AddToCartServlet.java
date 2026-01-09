package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.GioHang;
import model.NguoiDung;

import java.io.IOException;

import dao.GioHangDAO;

/**
 * Servlet implementation class AddToCartServlet
 */
@SuppressWarnings("serial")
@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {
    private GioHangDAO gioHangDAO = new GioHangDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maSanPham = Integer.parseInt(request.getParameter("maSanPham"));
        int soLuong = 1;  

        HttpSession session = request.getSession();
        NguoiDung user = (NguoiDung) session.getAttribute("userLogin");

        if (user != null) {
            GioHang gioHang = new GioHang();
            gioHang.setMaNguoiDung(user.getMaNguoiDung());
            gioHang.setMaSanPham(maSanPham);
            gioHang.setSoLuong(soLuong);

            boolean added = gioHangDAO.addToCart(gioHang);

            if (added) {
                response.sendRedirect(request.getContextPath() + "/giohang"); 
            } else {
                request.setAttribute("errorMsg", "Không thể thêm sản phẩm vào giỏ hàng.");
                request.getRequestDispatcher("/view/danhmuc.jsp").forward(request, response); 
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}