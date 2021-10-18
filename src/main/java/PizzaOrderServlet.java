import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza-order.jsp").forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String crust = req.getParameter("size");
        String sauce = req.getParameter("crust");
        String[] toppings = req.getParameterValues("toppings");
        String size = req.getParameter("sauce");
        String address = req.getParameter("address");

        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        for(String topping : toppings) {
            System.out.println(topping);
        }
        System.out.println(address);
    }


}
