<?php
error_reporting(E_ALL);  ini_set('display_errors',1);
$con = mysqli_connect('localhost','root','root','kanak','8888');
if (!$con) {
  die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"content");

?>