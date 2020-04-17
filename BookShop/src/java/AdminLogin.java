import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String n=request.getParameter("username");
        String p=request.getParameter("password");
        ServletContext context=getServletContext();  
  
  
        String n1=context.getInitParameter("username");
        String p1=context.getInitParameter("password");
        if(n.equals(n1) && p.equals(p1))
        {
            RequestDispatcher rd=request.getRequestDispatcher("adminprocess.jsp");
            rd.forward(request, response);
            
        }
       else
        {
            out.println("not match");
        }
                
    }

}
