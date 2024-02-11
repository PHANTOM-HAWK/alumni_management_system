
<?php
include("sqlcon.php");
session_start();
error_reporting(0);
if(!isset($_SESSION['type']))
{
	echo "<script>window.location='index.php';</script>";
}
 if(isset($_GET["id"]))
 {
	 $qry = mysqli_query($con, "delete from tblofficer where id=".$_GET["id"]);
	 if($qry)
	 {
		 echo "<script>alert('Record Deleted!!!');window.location='alumnioffice.php';</script>";
	 }
 }
?>


<?php
include("header.php")
?>

<div class="container">
	<div class="page">
   <h3 align='center'>Alumni Office bearears</h3>
   <p>&nbsp;</p>
  <div class="bs-example" data-example-id="contextual-table" style="border: 1px solid #eee">

 <table class="table" id="dataTables-example">
  <tr>
    <th >#</th>
    <th >Photos</th>
    <th >Post</th>
	<th >Region</th>
    <th >Name</th>
    <th >Address</th>
    <th>Reference contact</th>
    <th >Email</th>
	<th >Action</th>
  </tr>
<tbody>
  <?php
	  $q = "Select * from tbluser left join tblalumniphoto on tbluser.userid=tblalumniphoto.userid  inner join tblpost on tbluser.userid=tblpost.postid inner join tblregion on tbluser.location=tblregion.locid inner join tblofficer on tbluser.userid=tblofficer.userid where tbluser.status='Active' ";
  
  
  $res = mysqli_query($con, $q);
  $c = 1;
  if(mysqli_num_rows($res) > 0)
  {
	  while($row = mysqli_fetch_array($res))
	   {  echo "<tr>
		<td>".$c++."</td>";
		if($row['profilepic'] != NULL)
		{
		echo "<td><img src='upload/alumni/".$row['profilepic']."' width='150px' height='150px'/></td>";
		}
		else{
			echo "<td><img src='upload/alumni/noimage.png' width='150px' height='150px'/></td>";
		}
		echo "<td>".$row['postname']."</td>
		<td>".$row['location']."</td>
		<td>".$row['name']."</td>
		<td>".$row['address']."</td>
		<td>".$row['phone']."</td>
		<td>".$row['emailid']."</td>
		<td><a href='alumnioffice.php?id=$row[id]'>Delete</a></td>
		</tr>";
	   }
  }
  else	  
	  {
		  echo "<tr><td colspan='7' style='text-align:center;'>Sorry!! No Records</td></tr>";
	  }
   ?>
   </tbody>
</table>

</div></div></div>
<?php
include("footer.php")
?>

