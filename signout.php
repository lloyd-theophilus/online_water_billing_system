<?php
 session_start();
unset($_SESSION['id']);
 header('Location:consumer.php');

unset($_SESSION['consumer']);
 header('Location:login.php');
 
?>