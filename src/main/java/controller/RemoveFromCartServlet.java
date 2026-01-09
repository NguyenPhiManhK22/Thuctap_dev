package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.NguoiDung;

import java.io.IOException;

import dao.GioHangDAO;

/**
 * Servlet implementation class RemoveFromCartServlet
 */
@SuppressWarnings("serial")
@WebServlet("/remove")
public class RemoveFromCartServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin sản phẩm từ yêu cầu (maSanPham)
        int maSanPham = Integer.parseInt(request.getParameter("maSanPham"));
        
        HttpSession session = request.getSession(false); 
        NguoiDung userLogin = null;
        
        if (session != null) {
            userLogin = (NguoiDung) session.getAttribute("userLogin");
        }
        
        if (userLogin != null) {
            int maNguoiDung = userLogin.getMaNguoiDung();  

            GioHangDAO gioHangDAO = new GioHangDAO();
            boolean success = gioHangDAO.removeFromCart(maNguoiDung, maSanPham);
            
            if (success) {
                response.sendRedirect(request.getContextPath() + "/giohang");
            } else {
       
                request.setAttribute("errorMsg", "Không thể xóa sản phẩm khỏi giỏ hàng.");
                request.getRequestDispatcher("/giohang").forward(request, response);
            }
        } else {
            
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}