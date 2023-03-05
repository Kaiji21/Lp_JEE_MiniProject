package Controllers;

import java.io.*;

import Services.SimulationCreditService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet (name="LoginServelet",urlPatterns= {"/Views/Simulation"})

public class IndexServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        SimulationCreditService service = new SimulationCreditService();

           // User user = service.UserLogin("fatima@example.com","password456");
            //boolean bienajouter= service.UserInsert("Rida","rida@gmail.com","passwordrida");
            int msg = service.CalculeSimulation(100000,4,7);
            String msgg = Integer.toString(msg);
            // Hello
            PrintWriter out = response.getWriter();
            out.println("<html><body>");
            out.println("<h1>Hello"+msgg+"</h1>");
            out.println("</body></html>");


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int montant = Integer.parseInt(req.getParameter("montant"));
        int taux = Integer.parseInt(req.getParameter("taux"));
        int duree = Integer.parseInt(req.getParameter("duree"));
        SimulationCreditService service = new SimulationCreditService();
        int mensualites= service.CalculeSimulation(montant,taux,duree);
        req.setAttribute("mensualites",mensualites);
        req.setAttribute("montant",montant);
        req.setAttribute("taux",taux);
        req.setAttribute("duree",duree);
        double cout_total = (mensualites*duree)-montant;
        req.setAttribute("cout_total",cout_total);
        req.getRequestDispatcher("/Views/index.jsp#simulation").forward(req, resp);


    }

    public void destroy() {
    }
}