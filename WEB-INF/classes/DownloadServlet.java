import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.nio.file.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;

public class DownloadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String fileName = req.getParameter("filename");
        String username = (String) req.getSession().getAttribute("username");

        Path filePath = Paths.get("C:/encrypted_files/" + username + "/" + fileName + ".enc");
        if (!Files.exists(filePath)) {
            res.setContentType("text/html");
            res.getWriter().println("<h3 style='color: red;'>File not found. <a href='dashboard.jsp'>Back</a></h3>");
            res.getWriter().println("<img src='https://media.giphy.com/media/3o7abKhOpu0NwenH3O/giphy.gif' alt='Warning' style='width:200px;height:auto;'>");
            return;
        }

        byte[] encryptedBytes = Files.readAllBytes(filePath);
        byte[] key = "1234567812345678".getBytes();

        try {
            Cipher cipher = Cipher.getInstance("AES");
            SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            byte[] decryptedBytes = cipher.doFinal(encryptedBytes);

            res.setContentType("application/octet-stream");
            res.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
            res.getOutputStream().write(decryptedBytes);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
