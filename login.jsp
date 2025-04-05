<html>
<head>
  <title>SecureDocs Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: url('https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjZ0Tr0FQXKBrWcLfAvG-bE1p5pe09JUuh0mRp6ilpyJjPCgHpeJ3wsd3sWIOHFcTzO_lPr8xoxGAhMDBlHkjSo5yxcVPWLFaJBg1FFFDDaIofuPBKc6rJTqGlLY6CYJu0Bwc1en0L7dPVExy7YJZ7KBxjk6tun548eqb9koc7jf0tDhJNMQVfuPkp-YqA/s728-rw-e365/ssh.jpg') no-repeat center center fixed;
      background-size: cover;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .login-container {
      background: rgba(221, 15, 15, 0.8);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      width: 300px;
      text-align: center;
    }
    h2 {
      margin-bottom: 20px;
      color: #333;
    }
    input[type="text"], input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    input[type="submit"] {
      background-color: #05f32c;
      color: rgb(0, 0, 0);
      border: none;
      padding: 10px 15px;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
    }
    input[type="submit"]:hover {
      background-color: #075023;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>SecureDocs Login</h2>
    <form method="post" action="LoginServlet">
      <input type="text" name="username" placeholder="Username"><br>
      <input type="password" name="password" placeholder="Password"><br>
      <input type="submit" value="Login">
    </form>
  </div>
</body>
</html>
