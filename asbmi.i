<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Beauty Restaurant</title>
  <style>
    body {
      background-color: powderblue;
      font-family: Arial, sans-serif;
    }
    h1 {
      text-align: center;
      color: orange;
    }
    h5 {
      text-align: center;
      color: navy;
    }
    .menu {
      margin: 20px;
      padding: 15px;
      background: #fff;
      border-radius: 10px;
    }
    li {
      margin: 8px 0;
    }
    button {
      margin-left: 10px;
      padding: 5px 10px;
      border-radius: 5px;
      border: none;
      background-color: orange;
      color: white;
      cursor: pointer;
    }
    button:hover {
      background-color: darkorange;
    }
    #bookingForm {
      display: none;
      margin: 20px;
      padding: 15px;
      background: #fff;
      border-radius: 10px;
    }
    input, select {
      margin: 6px 0;
      width: 95%;
      padding: 8px;
    }
    .sendBtn {
      background-color: green;
    }
    .sendBtn:hover {
      background-color: darkgreen;
    }
  </style>
</head>
<body>
  <h1>Beauty Restaurant</h1>
  <h5>Tea, Coffee, Milk, Snacks & More...</h5>

  <div class="menu">
    <h3>Tea</h3>
    <ol>
      <li>Black Tea: Rs. 50 <button onclick="openForm('Black Tea')">Order</button></li>
      <li>White Tea: Rs. 70 <button onclick="openForm('White Tea')">Order</button></li>
      <li>Normal Tea: Rs. 10 <button onclick="openForm('Normal Tea')">Order</button></li>
      <li>Super Tea: Rs. 100 <button onclick="openForm('Super Tea')">Order</button></li>
    </ol>
  </div>

  <div class="menu">
    <h3>Coffee</h3>
    <ol>
      <li>Black Coffee: Rs. 50 <button onclick="openForm('Black Coffee')">Order</button></li>
      <li>White Coffee: Rs. 70 <button onclick="openForm('White Coffee')">Order</button></li>
      <li>Normal Coffee: Rs. 10 <button onclick="openForm('Normal Coffee')">Order</button></li>
      <li>Super Coffee: Rs. 100 <button onclick="openForm('Super Coffee')">Order</button></li>
    </ol>
  </div>

  <div class="menu">
    <h3>Milk</h3>
    <ol>
      <li>Black Milk: Rs. 50 <button onclick="openForm('Black Milk')">Order</button></li>
      <li>White Milk: Rs. 70 <button onclick="openForm('White Milk')">Order</button></li>
      <li>Normal Milk: Rs. 10 <button onclick="openForm('Normal Milk')">Order</button></li>
      <li>Super Milk: Rs. 100 <button onclick="openForm('Super Milk')">Order</button></li>
    </ol>
  </div>

  <!-- Booking Form -->
  <div id="bookingForm">
    <h3>Booking Form</h3>
    <p id="selectedItem"></p>
    <input type="text" id="custName" placeholder="Enter your name" required><br>
    <input type="tel" id="custPhone" placeholder="Enter your phone number" required><br>
    <label for="seatNo">Select Seat:</label><br>
    <select id="seatNo" required>
      <option value="">--Choose Seat--</option>
      <option value="1">Seat 1</option>
      <option value="2">Seat 2</option>
      <option value="3">Seat 3</option>
      <option value="4">Seat 4</option>
      <option value="5">Seat 5</option>
      <option value="6">Seat 6</option>
      <option value="7">Seat 7</option>
      <option value="8">Seat 8</option>
      <option value="9">Seat 9</option>
      <option value="10">Seat 10</option>
    </select><br>
    <button class="sendBtn" onclick="sendWhatsApp()">Send via WhatsApp</button>
  </div>

  <script>
    let currentItem = "";
    const ownerNumber = "9954350766"; // আপনার WhatsApp নম্বর

    function openForm(item) {
      currentItem = item;
      document.getElementById("bookingForm").style.display = "block";
      document.getElementById("selectedItem").innerText = "Ordering: " + item;
    }

    function sendWhatsApp() {
      let name = document.getElementById("custName").value;
      let phone = document.getElementById("custPhone").value;
      let seat = document.getElementById("seatNo").value;

      if (name && phone && seat) {
        let message = `🍽️ New Order from Beauty Restaurant\n\n` +
                      `Item: ${currentItem}\n` +
                      `Name: ${name}\n` +
                      `Customer Phone: ${phone}\n` +
                      `Seat No: ${seat}\n` +
                      `✅ Please confirm the booking.`;

        // WhatsApp API URL
        let url = `https://api.whatsapp.com/send?phone=91${ownerNumber}&text=${encodeURIComponent(message)}`;

        window.open(url, "_blank");
      } else {
        alert("⚠️ Please fill all fields!");
      }
    }
  </script>
</body>
</html>
