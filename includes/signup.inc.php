<?php
  
if (isset($_POST["submit"])){
    $name = $_POST["name"];
    $email = $_POST["email"];
    $username = $_POST["uid"];
    $pwd = $_POST["password"];
    $pwdRepeate = $_POST["pwdrepeate"];

    require_once 'config.inc.php';
    require_once 'functions.inc.php';

    if (emptyInputSignup($name, $email, $username, $pwd, $pwdRepeate) !== false){
        header("location:../signup.php?error=emptyInput");
        exit();
    }

    if (invalidUid($username) !== false){
        header("location:../signup.php?error=invalidUid.php");
        exit();
    }

    if (invalidemail($email) !== false){
        header("location:../signup.php?error=invalidEmail");
        exit();
    }

    if (pwdMatch($pwd, $pwdRepeate) !== false){
        header("location:../signup.php?error=passwordsdontmatch");
        exit();
    }

    if (uidExists($conn, $username, $email) !== false){
        header("location:../signup.php?error=usernametaken");
        exit();
    }

    createUser($conn, $name, $email, $username, $pwd);
}

else{
    header("location:../signup.php");
    exit();
}
