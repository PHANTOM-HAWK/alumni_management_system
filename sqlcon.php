
<?php
$server = "localhost";
$user="root";
$pass="";
$db="alumni_db";
$con = mysqli_connect($server,$user,$pass,$db);
if(!$con)
{
	echo "mysql connection error ".mysqli_error($con);
	
}

?>