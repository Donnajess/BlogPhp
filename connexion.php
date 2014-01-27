<?php
	include ('includes/connexion.inc.php');
	include ('includes/verif_connect.inc.php');	
	include('includes/haut.inc.php'); 
	include ('includes/fonctions.inc.php');
	if($connecte){
		header('Location:index.php');
		die();
	}
?>
    <div style = "display:none;"class = "" id = "erreur"></div>
	<h2>Connexion</h2>
	<p>Saisissez les identifiants choisis lors de votre inscription</p>
	<form action = "connexion.php" method = "post" id = "form_connexion">
		<fieldset>
			<div class = "clearfix">
				<label for = "email"> Email</label>
				<div class = "input"> <input id = "email" name = "email" size = "30" type = "email" value = "" required/> </div>
			</div>
			<div class = "clearfix">
				<label for = "mdp"> Mot de passe</label>
				<div class = "input"> <input id = "mdp" name = "mdp" size = "30" type = "password" required> </div>
			</div>
			<div class = "form-action">
				<input class = "btn btn-large btn-primary" id = "submit"   type = "submit" value = "Se connecter"/> 
			</div>
	</form>
<?php
	if(isset($_POST['email'])){
		$email = mysql_real_escape_string(var_post('email'));
		$sid = md5($email.time());
		$mdp = mysql_real_escape_string(var_post('mdp'));
		$sql = "SELECT id,email FROM utilisateurs WHERE email = '$email' and mdp = '$mdp'";
		$res = mysql_query($sql);
		$nr = mysql_num_rows($res);
		if($nr>0){
			$sid = md5($email.time());
			setcookie('sid',$sid,time()+3600);
			$sql = "UPDATE utilisateurs SET sid = '$sid'";
			$res = mysql_query($sql);
            $_SESSION['article'] == 'connecté';
			setcookie('erreur','non',time()+1200);
			header('Location:index.php');
		}else{
			setcookie('erreur','oui',time()+1200);
        ?>
            <script type = "text/javascript">
                $("#erreur").removeClass().addClass('alert alert-error').html('Mauvais identifiants !');
                $("#erreur").slideDown(1000).delay(2000).slideUp(1000);
            </script>
        <?php
		}
		
	}
	include('includes/bas.inc.php'); 
?>