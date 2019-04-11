import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/doLoginServlet")
public class dologin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String username="";
        String pwd ="";
        username=request.getParameter("username");
        pwd=request.getParameter("pwd");

        if("admin".equals(username) && "123456".equals(pwd)){
            HttpSession session = request.getSession();
            session.setAttribute("username",username);
            response.sendRedirect("juan.jsp");
            return;
        }else{
            response.sendRedirect("error.jsp");
        }
        }

}
