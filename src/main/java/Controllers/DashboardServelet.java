package Controllers;

import Models.Credit;
import Services.CreditService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet (name="DashboardServelet",urlPatterns= {"/Views/DeleteCreditServlet"})

public class DashboardServelet extends HttpServlet {

    @Override
    public void init() throws ServletException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int creditId = Integer.parseInt(request.getParameter("creditId"));
        CreditService service = new CreditService();
        try {
            boolean isdeleted = service.CreditDelete(creditId);
            if (!isdeleted){
                request.setAttribute("errorMessage", "Invalid email or password");
                request.getRequestDispatcher("/Views/Dashboard.jsp").forward(request, response);

            }
            else {
                HttpSession session = request.getSession();
                CreditService creditService = new CreditService();
                ArrayList<Credit> List = creditService.getallCreditbyuser((Integer) session.getAttribute("iduser"));
                session.setAttribute("modele",List);
                response.sendRedirect("/Views/Dashboard.jsp");

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
