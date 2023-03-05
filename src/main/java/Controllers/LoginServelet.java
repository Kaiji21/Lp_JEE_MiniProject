package Controllers;

import Models.Credit;
import Models.User;
import Services.CreditService;
import Services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet (name="Login",urlPatterns= {"/Views/LoginServelet"})
public class LoginServelet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserService userService = new UserService();
        try {
            User user = userService.UserLogin(email,password);
            if (user!=null){
                HttpSession session = request.getSession();
                session.setAttribute("Username",user.getUsername());
                session.setAttribute("email", email);
                session.setAttribute("iduser",user.getId_user());
                CreditService creditService = new CreditService();
                ArrayList<Credit> List = creditService.getallCreditbyuser(user.getId_user());
                session.setAttribute("modele",List);





                response.sendRedirect("Dashboard.jsp");
            }
            else {
                request.setAttribute("errorMessage", "Invalid email or password");
                RequestDispatcher rd = request.getRequestDispatcher("/Views/Login.jsp");
                rd.forward(request, response);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

      //  request.getRequestDispatcher("/Views/Login.jsp").forward(request,response);

    }
}
