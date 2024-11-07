<?php

include 'connect.php';

//session_start();


	session_start();
	
 

if(isset($_POST['send'])){
  

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $msg = $_POST['msg'];
   $msg = filter_var($msg, FILTER_SANITIZE_STRING);
   $radioVal = $_POST['gender'];
   $radioVal = filter_var($radioVal, FILTER_SANITIZE_STRING);

   $error=false;
//if(empty($name)===true || empty($email)===true || empty($msg)===true ){
   if(empty($name)){
        
      //$message[] = 'Name is required.';
      $alert_message = "Name is required.";
      echo "<script type='text/javascript'>alert('$alert_message');</script>";
      $error=true;

     
  }
  if(empty($email)){
      //$message[] = 'Email is required.';
      $alert_message = "Email is required.";
      echo "<script type='text/javascript'>alert('$alert_message');</script>";
      $error=true;
  }
  else{ 
      
      if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
         //$message[] = 'Invalid email format.';
         $alert_message = "Invalid email format.";
         echo "<script type='text/javascript'>alert('$alert_message');</script>";
         $error=true;
      }
  
  }


  if(empty($msg)){
      //$message[] = 'Message is required.';
      $alert_message = "Message is required.";
      echo "<script type='text/javascript'>alert('$alert_message');</script>";
      $error=true;
  }
//}

  if($error==false){

   $select_message = $conn->prepare("SELECT * FROM `feedback` WHERE name = ? AND email = ? AND experience = ? AND message = ?");
   $select_message->execute([$name, $email, $radioVal, $msg]);

   if($select_message->rowCount() > 0){
      //$message[] = 'already sent message!';
      $alert_message = "already sent message!";
      echo "<script type='text/javascript'>alert('$alert_message');</script>";
   }else{

      $insert_message = $conn->prepare("INSERT INTO `feedback`(name, email, message, experience) VALUES(?,?,?,?)");
      $insert_message->execute([$name, $email, $msg, $radioVal]);

      //$message[] = 'sent message successfully!';
      $alert_message = "message sent";
      echo "<script type='text/javascript'>alert('$alert_message');</script>";

   }
}

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="styles.css">


</head>
<body>
<?php
    require 'includes/header.php';
	?>
<br><br><br><br>
<section class="contact">

   <form action="" method="post">
      <h3>Share Your Feedback With Us</h3>
      <input type="text" name="name" placeholder="enter your name"  class="box">
      <input type="text" name="email" placeholder="enter your email"  class="box">
      <!--<input type="number" name="number" min="0" max="9999999999" placeholder="enter your number" required onkeypress="if(this.value.length == 10) return false;" class="box">-->
      <textarea name="msg" class="box" placeholder="enter your message" cols="30" rows="10"></textarea>
      <h3>How do you rate your overall experience</h3>
      
      
      <span style="font-size:1.2vw; margin-right:2px;"><input type="radio" id="check-male" name="gender" value="good" checked /></span>
      <span style="font-size:1.2vw; margin-right:10px;"><label>Good</label></span>
          
      
         
      <span style="font-size:1.2vw; margin-right:2px;"><input type="radio" id="check-female" name="gender" value="bad" /></span>
      <span style="font-size:1.2vw; margin-right:10px;"><label>Bad</label></span>
        
      
           
      <span style="font-size:1.2vw; margin-right:2px;" ><input type="radio" id="check-other" name="gender" value="Normal"/></span>
      <span style="font-size:1.2vw; margin-right:10px;"><label>Normal</label></span>
      

      <input type="submit" value="submit" name="send" class="btn">
   </form>

</section>

<script src="js/script.js"></script>

<?php
    require 'includes/footer.php';
	?>

</body>
</html>