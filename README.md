
# SecureDocs Web Edition – Cyber Security Project (Java + Servlets + MySQL)

## Features
- Secure AES-encrypted login system
- Role-based access: admin / user
- File upload (encrypted with AES) via web form
- Files stored locally (Google Drive integration can be added later)
- File decryption + download for valid users
- MySQL as the backend with user authentication

## Tech Stack
- Java Servlets (Backend)
- HTML + JSP (Frontend)
- MySQL (Database)
- AES Encryption (Java Crypto API)

## Setup Instructions

1. **Database**
   - Use `setup.sql` to create DB & insert sample users (admin/user)
   - Access via phpMyAdmin (XAMPP) or MySQL CLI

2. **Servlet Compilation**
   - Use Apache Tomcat (8.5 or above)
   - Add MySQL Connector JAR to `WEB-INF/lib`
   - Place `.class` files in `WEB-INF/classes`

3. **Run Locally**
   - Start Tomcat
   - Access via `http://localhost:8080/SecureDocs_FinalWebApp_Local/login.jsp`

4. **Test Users**
   - Username: admin | Password: admin123
   - Username: user1  | Password: user123

## File Structure (inside ZIP)
- login.jsp
- dashboard.jsp
- upload.jsp
- download.jsp
- WEB-INF/
  - classes/
    - LoginServlet.java
    - UploadServlet.java
    - DownloadServlet.java
    - DBUtil.java
    - AESUtil.java
  - lib/
    - mysql-connector.jar (you must add this)

## Note:
Google Drive upload logic is commented in UploadServlet and can be enabled later with API credentials.
