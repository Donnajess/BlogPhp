<?php 
	$connecte = false;
	if(isset($_COOKIE['sid'])){
		$sid = mysql_real_escape_string($_COOKIE['sid']);
		$res = mysql_query("SELECT count(*) AS nr FROM utilisateurs WHERE sid = '$sid'");
		$nr = mysql_fetch_assoc($res);
		if($nr['nr'] == 1){
			$connecte = true;
		}
	}	
?>