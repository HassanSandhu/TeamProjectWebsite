<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
$servername = "localhost";
$username = "povenaco_ersadmin";
$password = "dz1(AtqHSGB@";
$dbname = "povenaco_ecom_mad";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

creatRegister();

	
}

function creatRegister()
{
	
global $connect;
$activity=$_POST[""];

$sql = "SELECT wed_url FROM ".$activity.";";

	$res=mysqli_query($connect,$sql);
	$num_of_row=mysqli_num_rows($res);
	$temp_array=array();
	if($num_of_row>0)
	{
	while($row=mysqli_fetch_assoc($res))
	{
		
	$temp_array[]=$row;	
		
	}
	}
	
	
	header('connect-Type:application/json');
	echo json_encode(array("images"=>$temp_array));
}
mysqli_close($conn);
?>