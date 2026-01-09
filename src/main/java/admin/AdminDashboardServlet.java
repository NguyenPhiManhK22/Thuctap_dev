package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.AdminOrderDAO;
import dao.AdminUserDAO;
import dao.ProductDAO;

/**
 * Servlet implementation class AdminDashboardServlet
 */
@SuppressWarnings("serial")
@WebServlet("/admin/dashboard")
public class AdminDashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        int totalProducts = productDAO.getTotalProducts();

        AdminOrderDAO orderDAO = new AdminOrderDAO();
        int totalOrders = orderDAO.getTotalOrders();

        AdminUserDAO userDAO = new AdminUserDAO();
        int totalUsers = userDAO.getTotalUsers();

        request.setAttribute("totalProducts", totalProducts);
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("totalUsers", totalUsers);

        request.getRequestDispatcher("/admin/dashboard.jsp").forward(request, response);
    }
}

