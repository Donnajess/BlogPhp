</div>         
          <nav class = "span4">
            <h2>Menu</h2>
            
            <ul>
                <li><a href = "index.php">Accueil</a></li>
				<?php 
					if($connecte){
						echo'<li><a href = "article.php">Rédiger un article</a></li>
							<li><a href = "deconnexion.php">Se deconnecter</a></li>';
					}else{
						echo'<li><a href = "connexion.php">Se connecter</a></li>';
					}	
				?>
			</ul>
            <form class = "form-search" method = "GET" action = "index.php">
				<input type = "text" placeholder = "Recherche..." class = "input-medium" name = "rech" id = "rech">
				<button type = "submit" class = "btn">ok</button>
			</form>
          </nav>
        </div>
        
      </div>

      <footer>
        <p>&copy; Nilsine & ULCO 2012</p>
      </footer>

    </div>

  </body>
</html>