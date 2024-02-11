<?php
include("sqlcon.php");
session_start();
error_reporting(0);
if(isset($_POST['paynow']))
{
	$date = date("d/m/y");
	if($_POST['amount']<=250)
	{
		echo "<script>alert('Amount should be more than 250!!!');</script>";
	}
	else
	{
		$qry = "insert into tblfund(amount,paiddate,remarks,userid,paytype,bankname, cardno,cvv,exp_month,exp_year) values ('".$_POST['amount']."','".$date."','".$_POST['remarks']."','".$_SESSION["uid"]."','".$_POST['paytype']."','".$_POST['bankname']."','".$_POST['cardno']."','".$_POST['cvv']."','".$_POST['cardexpmonth']."','".$_POST['year']."')";
		if(mysqli_query($con, $qry))
		{ 
			echo "<script>alert('success!!!');</script>";
		}
	}
}
?>

<?php
include("header.php")
?>

 
<div class="container">
	<div class="page">
   <h3>Raise Funds</h3>
 
			<div  style="text-align:right; padding-right:20px;">
    <a href="viewfund.php">
    <button class="btn btn-primary"><i class="fa fa-plus"></i> View Fund Payment</button></a>
	<p>&nbsp;</p>
  <div class="btn-group">
  </div>
</div>
<div class="bs-example" data-example-id="simple-horizontal-form">
    <form class="form-horizontal" action="" method="post">
      <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Amount</label>
        <div class="col-sm-6">
          <input type="text" class="form-control" id="amount" name="amount" placeholder="Amount" required">
        </div>
      </div> 
	    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Remarks</label>
        <div class="col-sm-6">
          <textarea  class="form-control" id="remarks" name="remarks" placeholder="Remarks" required></textarea>
        </div>
      </div> 
	   <div class="form-group">
	     <label for="inputEmail3" class="col-sm-2 control-label">Pay Type</label>
        <div class="col-sm-6">
	    <input type="Radio" name="paytype" value="Debitcard" /> Debit Card
        &nbsp;&nbsp;<input type="Radio" name="paytype" value="Creditcard" /> Credit Card<br/>
        </div> 
       </div> 
	    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Bank Name</label>
        <div class="col-sm-6">
          <input type="text" class="form-control" id="bankname" name="bankname" placeholder="Bank Name" required>
        </div>
      </div> 
	    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Card No</label>
        <div class="col-sm-6">
          <input type="text " class="form-control" id="cardno" name="cardno" placeholder="Card No" required onchange="checkcardno(this.value)">
        </div>
      </div>
	  <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">CVV</label>
        <div class="col-sm-6">
          <input type="text " class="form-control" id="cvv" name="cvv" placeholder="CVV" required>
        </div>
      </div>
	   <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Card Expire Month</label>
        <div class="col-sm-6">
         <select name="cardexpmonth" id="cardexpmonth" class="form-control">
         <option value='0'>--Select -- </option> 
		 <option value='1'>1</option>
		 <option value='2'>2</option>
		 <option value='3'>3</option>
		 <option value='4'>4</option>
		 <option value='5'>5</option>
		 <option value='6'>6</option>
		 <option value='7'>7</option>
		 <option value='8'>8</option>
		 <option value='9'>9</option>
		 <option value='10'>10</option>
		 <option value='11'>11</option>
		 <option value='12'>12</option>
		 </select>
         </div></div>
          <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Year</label>
          <div class="col-sm-6">
         <select name="year" id="year" class="form-control">
         <option value='0'>--Select -- </option>
		 <option value='2017'>2017</option>
		 <option value='2018'>2018</option>
		 <option value='2019'>2019</option>
		 <option value='2020'>2020</option>
		 <option value='2021'>2021</option>
		</select>
		  </div>
        </div>
  
      <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <input type="submit" class="btn btn-default" name="paynow" value="PAY NOW">&nbsp;&nbsp;&nbsp;
		       <input type="reset" class="btn btn-default" name="cancel" value="CANCEL">
        </div>
      </div>
    </form>
  </div>	
 
</div>
</div>

<?php
include("footer.php");
?>

<script type="text/javascript">
function checkcardno(cardno)
{
	if(cardno.length != 16)
	{
		alert("Invalid Card Number");
		document.getElementById("cardno").value="";
		document.getElementById("cardno").focus();
	}
}
function checkamount(amount)
{
	if(amount.value < 500)
	{
		alert("Amount should be more than 500");
		document.getElementById("amount").value="";
		document.getElementById("amount").focus();
	}
}
</script>