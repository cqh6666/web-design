import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Demo")
public class Demo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private String message;

    public void init() throws ServletException {
        message = "Hello World , Nect To Meet You: " + System.currentTimeMillis();
        System.out.println("servlet初始化……");
        super.init();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //网页相应类型
        response.setContentType("text/html");
        //具体操作
        PrintWriter out = response.getWriter();
        out.println("<h1>"+"this is a new servlet pages"+"</h1>");
        destroy();
    }

    public void destroy(){
        //do nothing
    }
}
