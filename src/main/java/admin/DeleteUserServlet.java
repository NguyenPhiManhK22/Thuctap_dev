package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.NguoiDungDAO;

/**
 * Servlet implementation class DeleteUserServlet
 */
@SuppressWarnings("serial")
@WebServlet("/admin/deleteUser")
public class DeleteUserServlet extends HttpServlet {

    private NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {      
        int maNguoiDung = Integer.parseInt(request.getParameter("id"));
        boolean isDeleted = nguoiDungDAO.deleteNguoiDung(maNguoiDung);
        if (isDeleted) {
            response.sendRedirect(request.getContextPath() + "/admin/users");
        } else {
            request.setAttribute("error", "Không thể xóa người dùng!");
            request.getRequestDispatcher("/admin/users").forward(request, response);
        }
    }
}
