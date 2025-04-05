import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/securedocs", "root", "");
            String query = "SELECT role FROM users WHERE username=? AND password=AES_ENCRYPT(?, 'secretkey')";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, user);
            stmt.setString(2, pass);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("username", user);
                session.setAttribute("role", rs.getString("role"));
                res.sendRedirect("dashboard.jsp");
            } else {
                res.setContentType("text/html");
                PrintWriter out = res.getWriter();
                out.println("<h3>Login failed. <a href='login.jsp'>Try again</a></h3>");
            }
            conn.close();
        } catch (Exception e) {
            res.setContentType("text/html");
            PrintWriter out = res.getWriter();
            out.println("<h3>Something went wrong. Details:</h3>");
            e.printStackTrace(out); // <-- print full error to browser
        }
        
    }
}
