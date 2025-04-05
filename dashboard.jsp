<%@ page import="javax.servlet.http.*,java.util.*" %>
<%
String username = (String) session.getAttribute("username");
String role = (String) session.getAttribute("role");
if (username == null) { response.sendRedirect("login.jsp"); return; }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secure Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #2c3e50;
        }
        a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            margin: 0 10px;
        }
        a:hover {
            color: #1abc9c;
        }
        .nav {
            margin-top: 20px;
        }
        .nav a {
            padding: 10px 15px;
            background: #3498db;
            color: #fff;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .nav a:hover {
            background: #1abc9c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= username %> [<%= role %>]</h2>
        <div class="nav">
            <a href="upload.jsp">Upload File</a>
            <a href="download.jsp">Download File</a>
            <a href="login.jsp">Logout</a>
        </div>
    </div>
</body>
</html>
