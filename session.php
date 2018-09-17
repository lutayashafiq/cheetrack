<?php
//Start session
session_start();
//Check whether the session variable SESS_USER_ID is present or not
if (!isset($_SESSION['id']) || (trim($_SESSION['id']) == '')) {
    header("location: cheeterdashboard.php");
    exit();
}
$session_id=$_SESSION['id'];
?>