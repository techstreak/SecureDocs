import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.nio.file.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.annotation.MultipartConfig;



@MultipartConfig
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        Part filePart = req.getPart("file");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent = filePart.getInputStream();

        byte[] fileBytes = fileContent.readAllBytes();
        byte[] key = "1234567812345678".getBytes(); // 128-bit AES key

        try {
            Cipher cipher = Cipher.getInstance("AES");
            SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            byte[] encryptedBytes = cipher.doFinal(fileBytes);

            String username = (String) req.getSession().getAttribute("username");
            File userDir = new File("C:/encrypted_files/" + username);
            if (!userDir.exists()) userDir.mkdirs();

            Files.write(Paths.get(userDir.getPath(), fileName + ".enc"), encryptedBytes);

            res.setContentType("text/html");
            res.getWriter().println("<div style='font-family: Arial, sans-serif; text-align: center; margin-top: 20px;'>"
                + "<h3 style='color: green;'>File uploaded and encrypted successfully!</h3>"
                + "<a href='dashboard.jsp' style='text-decoration: none; color: blue;'>Back to Dashboard</a>"
                + "</div>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
