<?php
	include ('includes/connexion.inc.php');
	require_once('includes/verif_connect.inc.php');
	if(!$connecte){
	    header('Location:index.php');
	    die();
	}   
	include ('includes/fonctions.inc.php');
	$id=(int)var_get('id');
	$sql="DELETE FROM articles WHERE id=$id";
	$res=mysql_query($sql);
	$res=mysql_affected_rows();
	if($res>0){
		$_SESSION['article']='supprimé';
	}else{
		$_SESSION['article']='erreur';
	}
	header('Location:index.php');
?>
