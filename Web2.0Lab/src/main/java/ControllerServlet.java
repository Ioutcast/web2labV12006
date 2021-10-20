import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class ControllerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            double x = Double.parseDouble(request.getParameter("xValue"));
            double y =Double.parseDouble(request.getParameter("yValue").replace(",","."));
            double r = Double.parseDouble(request.getParameter("rValue").replace(",","."));

            if( x>3 || x<-3 || y >= 5 || y <= -5 || r >= 5 || r <= 2){
                request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            }
            request.getServletContext().getRequestDispatcher("/checkAndResult").forward(request, response);
        }
        catch (Exception w)
        {
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

}
