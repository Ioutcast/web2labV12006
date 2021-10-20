import Entry.Entry;
import Entry.EntryList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AreaCheckServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession session = request.getSession();

        double x = Double.parseDouble(request.getParameter("xValue"));
        double y = Double.parseDouble(request.getParameter("yValue").replace(",","."));
        double r = Double.parseDouble(request.getParameter("rValue").replace(",","."));

        boolean result = checkArea(x, y, r);

        Date currentTime = new Date();

        EntryList entryList = (EntryList) session.getAttribute("entryList");
        entryList = entryList == null ? new EntryList() : entryList;

        Entry entry = new Entry(x, y, r, result, currentTime);

        entryList.addEntry(entry);

        session.setAttribute("entryList", entryList);

        setResult(x, y, r, result, currentTime, request);

        response.sendRedirect("result.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("control");
    }

    private void setResult(double x, double y, double r, boolean result, Date currentTime,HttpServletRequest request){
        request.getSession().setAttribute("x", x);
        request.getSession().setAttribute("y", y);
        request.getSession().setAttribute("r", r);
        request.getSession().setAttribute("DateTime", new SimpleDateFormat("HH:mm:ss").format(currentTime));
        request.getSession().setAttribute("resultLast", result ? "<div style=\"color: green\">Попал</div>" :
                "<div style=\"color: red\">Промах</div>");
        request.getSession().setAttribute("xGraph", (300 / 2 + (x + 0.02) / r * 100));
        request.getSession().setAttribute("yGraph", (300 / 2 + (y - 0.02) / r * -100));
        request.getSession().setAttribute("fillGraph", result ? "green" : "red");
    }


    public static boolean checkArea(double x, double y, double R){
        if(x>=0 && y<=0 && y>=-R && x<=R)
            return true;

        if(x>=0 && y>=0 && y<=(-2.0*x+R))
            return true;

        if(x<=0 && y<=0 && x*x+y*y<=(R/2)*(R/2))
            return true;

        return false;
    }


}
