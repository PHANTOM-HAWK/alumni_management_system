<?php
include("sqlcon.php");
session_start();
error_reporting(0);
?>

<?php
include("header.php")
?>
<?php

if(isset($_POST['send']))
{
	$date = date("d/m/y");
	$qry = "insert into tblcontact(cname,email, subject, cno,message,date) values ('".$_POST['name']."','".$_POST['email']."','".$_POST['subject']."','".$_POST['cno']."','".$_POST['message']."','".$date."')";
	if(mysqli_query($con, $qry))
	{ 
		echo "<script>alert('Thank you for your Feedback!!!');</script>";
	}
}
?>



<div class="contact">
	<h2> Contact</h2>
	<div class="map">
		
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.265443276022!2d77.57164927507615!3d12.954858987359005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae1592715c4e7f%3A0x7dfaf94e52204678!2sBengaluru%20Institute%20of%20Technology!5e0!3m2!1sen!2sin!4v1707645422027!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
		</div>

	

<div class="map-grids animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
	
		
		<div class="col-md-8 map-middle">
			
			<form method="post">
					<input type="text" value="Name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
					<input type="text" name="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="text" name="cno" value="Contact Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ContactNumber';}" required="">
					<input type="text" name="subject" value="subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'subject';}" required="">
					<textarea name="message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
					<input type="submit" name="send" value="Send" >
			</form>
		</div>
		<div class="col-md-4 map-left">
			<h3>Address</h3>
				<div class="call">
					<div class="col-xs-3 contact-grdl">
						<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
					</div>
					<div class="col-xs-9 contact-grdr">
						<ul>
							<li>909192939495</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="call">
					<div class="col-xs-3 contact-grdl">
						<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
					</div>
					<div class="col-xs-9 contact-grdr">
						<ul>
							<li>Bangalore Institute Of Technology,</li>
							<li>Krishna Rajendra Rd, Parvathipuram, Vishweshwarapura, Basavanagudi, Bengaluru, Karnataka 560004</li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="call">
					<div class="col-xs-3 contact-grdl">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					</div>
					<div class="col-xs-9 contact-grdr">
						<ul>
						    <li><a href="mailto:support@bit.com">support@bit.in</a></li>
							<li><a href="Web : https://bit-bangalore.edu.in/">Web: https://bit-bangalore.edu.in/</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
					
				<section>
                             <header>
                                    <h1><center>Follow Us</center></h1>
                            </header>
                           <p align="center">
                            <img src="images/fb.jpg" height="50" width="50"> 
                          
                            <img src="images/instagram.jpg" height="50" width="80">
                            
                            <img src="images/twitter.png" height="60" width="60">
                           
                            <img src="images/youtube.png" height="70" width="100">
                          </p>
                          </section>

					
					
				</div>

		</div>
		<div class="clearfix"></div>
	</div>

</div>
<!-- //map -->

 		<!--//content-slide-->
</div>
<?php
include("footer.php");?>