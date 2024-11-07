<!DOCTYPE html>
<html>
<head>
  <title>About Us</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background-image: url('assets/images/about.png');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      background-color: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 0 50px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      font-size: 32px;
      margin-bottom: 30px;
      color: #333;
    }

    p {
      line-height: 1.8;
      color: #555;
    }

    .highlight {
      font-weight: bold;
      color: #333;
    }

    .image-wrapper {
      text-align: center;
      margin-bottom: 40px;
    }

    .image-wrapper img {
      max-width: 25%;
      height: auto;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
  </style>
  <?php require 'includes/header.php'; ?>
</head>
<body>
  <br><br><br><br>
  <div class="container">
    <h2><b>Why We're Different</b></h2>
    <div class="image-wrapper">
      <img src="assets/images/timg.png" alt="About Us Image">
    </div>
    <p>
      Welcome to M-Store, your one-stop online shop for mobile devices and accessories. We are dedicated to providing the latest smartphones, tablets, wearables, and more, along with a wide range of high-quality accessories to enhance your mobile experience.
    </p>
    <p>
      At M-Store, we pride ourselves on offering top-notch customer service and competitive prices. Our team is passionate about technology and is committed to helping you find the perfect device that meets your needs and preferences.
    </p>
    <p>
      We partner with leading mobile manufacturers and brands to ensure that our product selection is diverse, reliable, and up-to-date. Whether you're looking for the latest flagship smartphone or a budget-friendly option, we have you covered.
    </p>
    <p>
      Shop with confidence at M-Store, knowing that we prioritize your satisfaction and strive to provide a seamless online shopping experience. If you have any questions or need assistance, our friendly customer support team is ready to help.
    </p>
    <p class="highlight">
      Experience the world of mobile technology with M-Store today!
    </p>
  </div>
  <br><br>
  <?php require 'includes/footer.php'; ?>
</body>
</html>
