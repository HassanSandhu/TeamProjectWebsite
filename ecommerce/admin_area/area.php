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

<i class="fa fa-dashboard" ></i> Dashboard / Area

</li>



</ol><!-- breadcrumb Ends -->

</div><!-- col-lg-12 Ends -->

</div><!-- 1  row Ends -->

<div class="row" ><!-- 2 row Starts -->

<div class="col-lg-12" ><!-- col-lg-12 Starts -->

<div class="panel panel-default" ><!-- panel panel-default Starts -->

<div class="panel-heading" ><!-- panel-heading Starts -->

<h3 class="panel-title" >

<i class="fa fa-money fa-fw" ></i>Area

</h3>


</div><!-- panel-heading Ends -->


<div class="panel-body"><!-- panel-body Starts -->

<div class="container">
	<div class="row">
        <div class="col-lg-8">
        	<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d108789.58292303115!2d74.2798178077802!3d31.560547407642225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x391904d2535aabe1%3A0xd5d5aff5ddca1ec4!2sGarhi+Shahu+Police+Station%2C+Allama+Iqbal+Rd%2C+Lahore+54000!3m2!1d31.5605665!2d74.349858!5e0!3m2!1sen!2s!4v1502740008808" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    	</div>
    	
      	<div class="col-lg-4">
    		<h2>Garhi Shahu</h2>
    		<address>
    			<strong>Police Station</strong><br>
    			Lahore<br>
    			
    			
    			Phone: 01234 567 890
    		</address>
    	</div>
    </div>
</div>
</div><!-- panel-body Ends -->

</div><!-- panel panel-default Ends -->

</div><!-- col-lg-12 Ends -->


</div><!-- 2 row Ends -->





<?php }  ?>