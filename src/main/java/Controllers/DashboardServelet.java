package Controllers;

import Models.Credit;
import Services.CreditService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet (name="DashboardServelet",urlPatterns= {"/Views/DashboardServelet"})

public class DashboardServelet extends HttpServlet {
    CreditService creditService;

    @Override
    public void init() throws ServletException {
        creditService = new CreditService();


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //ArrayList<Credit> List = creditService.getallCreditbyuser((int)session.getAttribute("iduser"));
      //  request.setAttribute("Model",List);
      //  request.getRequestDispatcher("Dashboard.jsp").forward(request,response);



    }
}
