<?php



if(!isset($_SESSION['admin_email'])){

echo "<script>window.open('login.php','_self')</script>";

}

else {

?>


<div class="row" ><!-- 1  row Starts -->

<div class="col-lg-12" ><!-- col-lg-12 Starts -->

<ol class="breadcrumb" ><!-- breadcrumb Starts -->

<li class="active" >

<i class="fa fa-dashboard" ></i> Dashboard / Register Police

</li>



</ol><!-- breadcrumb Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 1  row Ends -->

<div class="row" ><!-- 2 row Starts -->

<div class="col-lg-12" ><!-- col-lg-12 Starts -->

<div class="panel panel-default" ><!-- panel panel-default Starts -->

<div class="panel-heading" ><!-- panel-heading Starts -->

<h3 class="panel-title" >

<i class="fa fa-money fa-fw" ></i> Insert Police info

</h3>


</div><!-- panel-heading Ends -->


<div class="panel-body"><!-- panel-body Starts -->

<form class="form-horizontal" method="post" enctype="multipart/form-data"><!-- form-horizontal Starts -->
<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">PID: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="pid" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->
<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">Name: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="p_name" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">Email: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="p_email" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">Password: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="password" name="p_pass" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">City: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="p_city" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">CNIC: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="p_cnic" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">Contact: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="text" name="p_contact" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label">Image: </label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="file" name="p_image" class="form-control" required>

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label class="col-md-3 control-label"></label>

<div class="col-md-6"><!-- col-md-6 Starts -->

<input type="submit" name="submit" value="Insert User" class="btn btn-primary form-control">

</div><!-- col-md-6 Ends -->

</div><!-- form-group Ends -->


</form><!-- form-horizontal Ends -->

</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->


</div><!-- 2 row Ends -->

<?php

if(isset($_POST['submit'])){

$pid = $_POST['pid'];

$p_name = $_POST['p_name'];

$p_email = $_POST['p_email'];

$p_pass = $_POST['p_pass'];

$p_country = $_POST['p_city'];

$p_cnic = $_POST['p_cnic'];

$p_contact = $_POST['p_contact'];


$p_image = $_FILES['p_image']['name'];

$temp_admin_image = $_FILES['p_image']['tmp_name'];

move_uploaded_file($temp_admin_image,"police_images/$p_image");

$insert_admin = "insert into police (pid,p_name,p_email,p_pass,p_city,p_cnic,p_contact,p_image) values ($pid,'$p_name','$p_email','$p_pass','$p_city','$p_cnic','$p_contact','$p_image')";

$run_admin = mysqli_query($con,$insert_admin);


if($run_admin){

echo "<script>alert('One User Has Been Inserted successfully')</script>";

echo "<script>window.open('index.php?reg_police','_self')</script>";

}


}


?>



<?php }  ?>