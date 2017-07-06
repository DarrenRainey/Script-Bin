/* Usage example.com/Ping-PHP-API.php?ping=8.8.8.8
  Script by Darren Rainey
  https://github.com/DarrenRainey
*/

<?php
$host = $_GET["ping"];
$port = 80; 
$waitTimeoutInSeconds = 1; 
if($fp = fsockopen($host,$port,$errCode,$errStr,$waitTimeoutInSeconds)){   
	echo "Ping Success";
} else {
	echo "Ping Failure";
} 
fclose($fp);
?>
