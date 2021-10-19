package ADsServlets;

import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewAds", urlPatterns = "/ads")
public class ShowAdsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        List<Ad> ads =  DaoFactory.getAdsDao().all();

        req.setAttribute("ads", ads);
        req.getRequestDispatcher("/ads/index.jsp").forward(req, res);

    }


}
