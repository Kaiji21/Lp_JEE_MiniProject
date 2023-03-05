package Controllers;

import Services.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet (name="SinscrireServelet",urlPatterns= {"/Views/Sinscrire"})
public class SinscrireServelet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Username = request.getParameter("Username");
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String Confirmepass = request.getParameter("confirmpass");
        if (Password.equals(Confirmepass)){
            UserService userService = new UserService();
            try {
               boolean isadded= userService.UserInsert(Username,Email,Password);
               if (isadded){
                   HttpSession session = request.getSession();
                   session.setAttribute("Username",Username);
                   session.setAttribute("email", Email);
                   response.sendRedirect("Dashboard.jsp");
               }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
        else {
            RequestDispatcher rd = request.getRequestDispatcher("/Views/S'inscrire.jsp");
            rd.forward(request, response);
        }

    }
}
