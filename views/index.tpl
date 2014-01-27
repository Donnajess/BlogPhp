<div style="display:none;"class="" id="{if isset($aj)}notif{/if}"></div>
<script type="text/javascript">
	$("#notif").removeClass().addClass('alert alert-success').html('Article ajouté');
	$("#notif").slideDown(1000).delay(2000).slideUp(1000);
</script>

{if isset($smarty.get.rech)}
	<h3>Résultat de la recherche pour - - {$smarty.get.rech} - - </h3>
	{if $total==0}
		<h4>Aucun résultat</h4> <hr><br>
	{else}
		{if $total>1}
			<h4>{$total} résultats trouvés</h4><hr><br>
		{else}
		 	<h4>{$total} résultat trouvé</h4><hr><br>
		{/if}
		{foreach from=$articles  item=i}
			<h4>{$i.titre}</h4>
			<p>{$i.texte}</p>
  		{/foreach}
  		<br>
  		<br>
	{/if}
{else}
	<h3>Articles rédigés</h3><hr><br>
	{if $nr>0}
		{foreach from=$articles  item=i}
				{include file="views/_index_articles.tpl"}

				{if $connecte}
					<br/><a class="btn btn-primary" href="article.php?id={$i.id}">Modifier</a>&nbsp;&nbsp;
					<a class="btn btn-danger" href="supprimer_article.php?id={$i.id}">Supprimer</a>
				{/if}	
	  	{/foreach}
	  	<div class="pagination">
			<ul>
				{if $app!=$nb}
					{$j=1}
					{$i=0}
					{if $p>0}
						{$pr=$p-$app}
						<li><a href='index.php?p={$pr}'>«</a></li>
					{/if}
					{while $i<$nb}
						{if $p==$i}
							<li class='disabled'> <a href='#'>{$j}</a></li>
						{else}
							<li> <a  href='index.php?p={$i}'>{$j}</a></li>
						{/if}
						{$i=$i+$app}
						{$j=$j+1}
					{/while}
					{if ($p+$app)< $nb}
						{$s=$p+$app}
						<li><a href='index.php?p={$s}'>»</a></li>
					{/if}
				{/if}
			</ul>
		</div>
	{else}
		<div class="alert alert-error">
			<strong>Erreur ! </strong> Cette page n'existe pas.
		</div>
	{/if}
{/if}