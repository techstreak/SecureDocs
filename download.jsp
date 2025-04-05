<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Decrypt and Download File</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: "Courier New", Courier, monospace;
      color: #C41E3A;
    }

    video#background-video {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      object-fit: cover;
      z-index: -1;
    }

    h2 {
      text-align: center;
      margin-top: 50px;
      text-shadow: 0 0 10px #C41E3A;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 20px;
    }

    input[type="text"] {
      background-color: #111;
      color: #C41E3A;
      border: 1px solid #C41E3A;
      padding: 10px;
      margin-bottom: 20px;
      width: 300px;
      text-align: center;
    }

    input[type="submit"] {
      background-color: #111;
      color: #C41E3A;
      border: 1px solid #C41E3A;
      padding: 10px 20px;
      cursor: pointer;
      text-transform: uppercase;
      font-weight: bold;
      transition: all 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #C41E3A;
      color: #000;
    }
  </style>
</head>
<body>
  <video id="background-video" autoplay loop muted>
    <source src="https://cdnl.iconscout.com/lottie/premium/preview-watermark/laptop-server-animated-icon-download-in-lottie-json-gif-static-svg-file-formats--system-data-rack-database-pack-business-icons-7506970.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <h2>Decrypt and Download File</h2>
  <form method="post" action="DownloadServlet">
    <label for="filename">Filename:</label>
    <input type="text" id="filename" name="filename" placeholder="Enter filename">
    <input type="submit" value="Download">
  </form>
</body>
</html>
