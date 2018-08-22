<?php require_once("Include/Session.php"); ?>
<?php require_once("Include/DB.php"); ?>
<?php
function Redirect_to($New_Location)
{
  echo "<script>
  setTimeout(function() {
    window.location = '$New_Location';
  },2000);
</script>";
  exit;
}
function Login_Attempt($Username,$Password){
  global $connection;
  $Query="SELECT * FROM registration WHERE username='$Username' AND password='$Password'";
  $Execute=mysqli_query($connection,$Query);
  if($admin=mysqli_fetch_assoc($Execute)){
    return $admin;
  }
  else {
    return null;
  }
}
function login(){
  if(isset($_SESSION["User_Id"])){
    return true;
  }
}
function confirm_login(){
  if(!login()){
    $_SESSION["ErrorMessage"]="Login Required";
    Redirect_to("Login.php");
  }
}
function Redirect($New_Location)
{
  header("Location:".$New_Location);
  exit;
}
?>
