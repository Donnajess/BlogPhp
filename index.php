<?php
	include ('includes/connexion.inc.php');
	include ('includes/verif_connect.inc.php');
	include ('includes/haut.inc.php');
	include ('includes/fonctions.inc.php');
	require("lib/SmartyBC.class.php");
	$smarty = new SmartyBC();
	$rech = var_get('rech');
	$articles = array();
	if($rech){
		$rech = mysql_real_escape_string($_GET['rech']);
		$sql = "SELECT COUNT(*) AS total FROM articles WHERE titre LIKE '%$rech%'";
		$req = mysql_query($sql);
		$data = mysql_fetch_array($req);
		$total = $data['total'];
		if($total){
			$sql = "SELECT * FROM articles WHERE titre LIKE '%$rech%'";
			$req = mysql_query($sql);
			while($data = mysql_fetch_array($req)){
				$articles[] = $data;
			}
			$smarty->assign("articles",$articles);
		}
		$smarty->assign("total",$total);
	}else{
		if (isset($_SESSION['article']) && $_SESSION['article'] == 'ajouté') {
			$smarty->assign('aj',1);
		}
		$app = 2;   //articles par page
		$i = 0;
		$p = (int) var_get('p');
		$sql = "SELECT * FROM articles ORDER BY date DESC LIMIT $p,$app";
		$req = mysql_query($sql) ;
		$nr = mysql_num_rows($req);
		if($nr>0){
			while($data = mysql_fetch_array($req)){
				$articles[] = $data;
			}
			$smarty->assign(array(
								"nr"        => $nr,
								"articles"   => $articles,
								"connecte"  => $connecte,
								"p"         =>$p,
							));	
				/**
					$nb =  nombre total d'element dans la base
				**/
				$app = 2;
				$sql = 'SELECT count(*) AS nb FROM articles';
				$REQ = mysql_query($sql);
				$REQ = mysql_fetch_assoc($REQ);
				extract($REQ);
				$smarty->assign(array('app'  =>2 ,'nb' =>$nb,));
		}else{
			$smarty->assign('nr',0);
		}
	}
	$smarty->display("views/index.tpl");
	include ('includes/bas.inc.php');
?>
