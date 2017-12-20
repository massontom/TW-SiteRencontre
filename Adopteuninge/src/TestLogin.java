import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import bd.AccesBD;

public class TestLogin extends HttpServlet {

  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String loginToTest = request.getParameter("login");
    response.setContentType("text/plain");
    PrintWriter out = response.getWriter();
    if(AccesBD.testLogin(loginToTest)){
      out.print("NOK");
    } else {
      out.print("OK");
    }
  }

}
