
<div style = "display:none;"class = "" id = "notif_articles"></div>
<script type = "text/javascript">
	$(document).ready(function() {
		$('#form-art').submit(function(){
			$titre = $('#titre').val();
			$texte = $('#texte').val();
			if(!$titre.length || !$texte.length){
				$("#notif_articles").removeClass().addClass('alert alert-error').html('Veuillez remplir tous les champs');
				$("#notif_articles").fadeIn(1000).delay(2000).fadeOut(1000);
				return false;
			}
		})
	});
</script> 
{if isset($err) && $err}
	<div class = "alert alert-error">
		<strong>Erreur ! </strong> lors de l'insertion.
	</div>
{/if}

{if isset($smarty.get.id)&& isset($data)}
					<h3> Modifier un article</h3> <hr><br>
				{else}
					<h3> Ajouter un article</h3> <hr><br>
				{/if}

<div class = "span8">
	<form action = "article.php" id = "form-art" name = "formulaire" method = "POST" enctype = "multipart/form-data">
		<div class = "clearfix">
			<label for = "title">Titre</label>
			<div class = "input"> 
				{if isset($smarty.get.id)&& isset($data)}
					<input type = "text" name = "titre" id = "titre" value = "{$data.titre}" >
				{else}
					<input type = "text" name = "titre" id = "titre" >
				{/if}
			</div>
		</div>    
		<div class = "clearfix">
			<label for = "texte">Texte</label>
			<div class = "input">
				{if isset($smarty.get.id) && isset($data)}
					<textarea name = "texte" id = "texte" >{$data.texte}</textarea>
				{else}
					<textarea name = "texte" id = "texte" ></textarea>
				{/if}
			</div>
		</div>  
		<div class = "clearfix">
			<div class = "input"> 
				{if isset($smarty.get.id)&& isset($data)}
                    <input type="hidden" name="MAX_FILE_SIZE" value="2097152"> 
					Fichier : 	<input type = "file" name = "image" >
				{else}
                    <input type="hidden" name="MAX_FILE_SIZE" value="2097152"> 
					Fichier : 	<input type = "file" name = "image" >
				{/if}
			</div>
			<br>
		</div>        
		<div class = "form-action">
			{if isset($smarty.get.id)}
				<input name = "id" type = "hidden" value = "{$smarty.get.id}" >
				<input name = "modif" type = "submit" value = "Modifier" class = "btn btn-large btn-primary">
			{else}
				<input name = "ajout"  type = "submit" value = "Ajouter" class = "btn btn-large btn-success">
			{/if}
		</div>
	</form>
</div>