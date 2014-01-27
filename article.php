<?php
    require_once('includes/connexion.inc.php');
    require_once('includes/verif_connect.inc.php');
    if(!$connecte){
        header('Location:index.php');
        die();
    }   
    require_once('includes/haut.inc.php');
    require_once('includes/fonctions.inc.php');
    
    require("lib/SmartyBC.class.php");
    $smarty = new SmartyBC();
    
    if (isset($_GET['id'])) {
        $id = mysql_real_escape_string(var_get('id'));
        $sqlmodif = "SELECT * FROM articles WHERE id='$id'";
        $resultmodif = mysql_query($sqlmodif);
        $nbr = mysql_num_rows($resultmodif);  //nombre de résultats
        if ($nbr == 1) {
            $data = mysql_fetch_assoc($resultmodif);
            $smarty->assign(array(
                                'data' => $data,
                                ));
        }
    }

    if (!empty($_POST)) {
        $titre = mysql_real_escape_string($_POST['titre']);
        $content = mysql_real_escape_string($_POST['texte']);

        if (isset($_POST['modif'])) {
            $id = (int) $_POST['id'];
            $sql = "UPDATE articles SET titre='$titre', texte='$content' WHERE id=$id";

        } else {
            $sql = "INSERT INTO articles(titre, texte) VALUES('$titre','$content')";

            if(isset($_FILES['image'])) {
                $id = mysql_insert_id();
                move_uploaded_file($_FILES['image']['tmp_name'], dirname(__FILE__).'/data/images/'.$id.'.jpg');  
            }          
        }
        $query = mysql_query($sql);

        if (!$query) {
            $smarty->assign('err',1);
        } else {
            header('location: index.php');
            $_SESSION['article'] = 'ajouté';
            die();
        }
    }
?>
  
<?php    
    $smarty->display("views/article.tpl");
    require_once('includes/bas.inc.php');
?>   