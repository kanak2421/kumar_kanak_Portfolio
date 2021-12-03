<?php 
$topic ="";
$firstname ="";
$lastname =""; 
$email ="";
$message ="";
// if(isset($_POST['submit'])) { // Checking null values in message.
// if (empty($_POST["name"])){

// echo '<script>alert("Name is required"); window.location = "../contact.html";';

// }
// else
//  {
// $firstname = test_input($_POST["firstname"]);
// }
// if (!preg_match("/^[a-zA-Z ]*$/",$firstname))
// {

// echo '<script>alert("Only letters and white space allowed"); window.location = "../contact.html";</script>';


// }
// $lastname = test_input($_POST["lastname"]); // check name only contains letters and whitespace
// if (!preg_match("/^[a-zA-Z ]*$/",$lastname))
// {

// echo '<script>alert("Only letters and white space allowed"); window.location = "../contact.html";</script>';
// }
// $lastname = test_input($_POST["lastname"]); // check name only contains letters and whitespace


// if (empty($_POST["email"]))
// {

// echo '<script>alert("Email is required")</script>; window.location = "../contact.html";';
// }
// else
//  {
// $email = test_input($_POST["email"]);
// } // Checking null values inmessage.
// if (empty($_POST["topic"]))
// {
//     echo '<script>alert("Topic is required"); window.location = "../contact.html";</script>';
// }
// else
// {
// $topic = test_input($_POST["topic"]);
// } // Checking null values inmessage.
// if (empty($_POST["message"]))
// {
// echo '<script>alert("Message is required"); window.location = "../contact.html";</script>';
// }
// else
//  {
// $message = test_input($_POST["message"]);
// } // Checking null values inthe message.

    $to      = 'kanak2421@gmail.com';
$header= $name."<". $email .">";
$subject  = "Query from designwithkanak.com"; /* Let's prepare the message for the e-mail */
$msg = "
Name: $name
E-mail: $email
Topic: $topic
Message: $message
This email coming from designwithkanak.com contact page";
if(mail($to ,$subject, $msg ,$headers))
{
echo '<script>alert("Message sent successfully"); window.location = "../contact.html";</script>';
}

else{  
  echo '<script>alert("Submit Form First"); window.location = "../contact.html";</script>';
}

?>