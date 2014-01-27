<?php
	if(isset($_SESSION['article'])){
		$th="alert-success";
		switch($_SESSION['article']){
			case 'ajouté':
				$msg = 'Ajouté avec succès';
				break;
			case 'connecté':
				$msg = 'Connecté avec succès';
				break;
			case 'modifié':
				$msg = 'Modifié avec succès';
				break;
			case 'supprimé':
				$msg = 'Supprimé avec succès';
				break;
			case 'erreur':
				$th = "alert-error";
				$msg = 'Erreur';
				break;
		}
		unset($_SESSION['article']);
	}
?>
	


