package com.example.lp_jee_miniproject;

import java.io.*;
import java.sql.SQLException;

import Models.User;
import Services.UserService;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        UserService service = new UserService();
        try {
            User user = service.UserLogin("fatima@example.com","password456");
            boolean bienajouter= service.UserInsert("Rida","rida@gmail.com","passwordrida");
            String msg = bienajouter==true?"Bien été ajouter":"Error dans l'insertion";
            // Hello
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>Hello"+msg+"</h1>");
            out.println("</body></html>");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void destroy() {
    }
}