<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Upload Encrypted File</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: url('https://www.globalscape.com/sites/default/files/styles/zig_zag_image/public/2023-05/gs-secure-file-transfer-image-01.png?itok=X9TqlAHt') no-repeat center center fixed;
      background-size: cover;
      color: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      overflow: hidden;
    }
    h2 {
      text-align: center;
      animation: fadeIn 2s ease-in-out;
      color: black;
    }
    form {
      background: rgba(0, 0, 0, 0.7);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
      animation: slideIn 1.5s ease-in-out;
    }
    input[type="file"] {
      margin: 10px 0;
      padding: 5px;
      border-radius: 5px;
      border: none;
    }
    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
      background-color: #45a049;
    }
    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }
    @keyframes slideIn {
      from {
        transform: translateY(-50px);
        opacity: 0;
      }
      to {
        transform: translateY(0);
        opacity: 1;
      }
    }
    .note {
      font-size: 0.9em;
      color: #ccc;
      text-align: center;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div>
    <h2>Upload Encrypted File</h2>
    <form method="post" enctype="multipart/form-data" action="UploadServlet">
      <label for="file">File:</label>
      <input type="file" name="file" id="file" required><br>
      <input type="submit" value="Upload">
    </form>
    <div class="note">Ensure your file is securely encrypted before uploading.</div>
  </div>
</body>
</html></form>
