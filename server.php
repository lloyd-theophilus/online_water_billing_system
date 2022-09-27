<?php

session_start();

// initializing variables

$username = "";

$email    = "";

$errors = array();

// connect to the database

$db = mysqli_connect('localhost', 'root', '', 'sourcecodester_wbsdb');


// REGISTER USER

if (isset($_POST['reg_user'])) {

    // receive all input values from the form
    
    $username = mysqli_real_escape_string($db, $_POST['username']);
    
    $email = mysqli_real_escape_string($db, $_POST['email']);
    
    $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
    
    $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
    
    // form validation: ensure that the form is correctly filled ...
    
    // by adding (array_push()) corresponding error unto $errors array
    
    if (empty($username)) { array_push($errors, "Username is required"); }
    
    if (empty($email)) { array_push($errors, "Email is required"); }
    
    if (empty($password_1)) { array_push($errors, "Password is required"); }
    
    if ($password_1 != $password_2) {
    
    array_push($errors, "The two passwords do not match");
    
    }
    
    // first check the database to make sure
    
    // a user does not already exist with the same username and/or email
    
    $user_check_query = "SELECT * FROM consumer WHERE username='$username' OR email='$email' LIMIT 1";
    
    $result = mysqli_query($db, $consumer_check_query);
    
    $user = mysqli_fetch_assoc($result);
    
    if ($consumer) { // if user exists
    
    if ($consumer['username'] === $username) {
    
    array_push($errors, "Username already exists");
    
    }
    
    if ($consumer'email'] === $email) {
    
    array_push($errors, "email already exists");
    
    }
    
    }
    ins
    // Finally, register user if there are no errors in the form
    
    if (count($errors) == 0) {
    
    $password = md5($password_1);//encrypt the password before saving in the database
    
    echo $password ;
    
    $query = "INSERT INTO consumer(username, email, password)
    
    VALUES('$username', '$email', '$password')";
    
    mysqli_query($db, $query);
    
    $_SESSION['username'] = $username;
    
    $_SESSION['success'] = "You are now logged in";
    
    header('location: login.php');
    
    }
    
    }

    // LOGIN USER

if (isset($_POST['login_user'])) {

    $username = mysqli_real_escape_string($db, $_POST['username']);
    
    $password = mysqli_real_escape_string($db, $_POST['password']);
    
    if (empty($username)) {
    
    array_push($errors, "Username is required");
    
    }
    
    if (empty($password)) {
    
    array_push($errors, "Password is required");
    
    }
    
    if (count($errors) == 0) {
    
    $password = md5($password);
    
    $query = "SELECT * FROM consumer WHERE username='$username' AND password='$password'";
    
    $results = mysqli_query($db, $query);
    
    if (mysqli_num_rows($results) == 1) {
    
    $_SESSION['username'] = $username;
    
    $_SESSION['success'] = "You are now logged in";
    
    header('location: consumer.php');
    
    }else {
    
    array_push($errors, "Wrong username/password combination");
    
    }
    
    }
    
    }
    
    ?>
    
    // ...