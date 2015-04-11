  <?php

 include('./fonctions/fonction_bdd.php');
  //récupération de la variable d'URL,
  //qui va nous permettre de savoir quel enregistrement modifier
  $id  = $_GET["id_annonce"] ;
 
  //requête SQL:
$requete=execute("SELECT *
            FROM annonce
	    WHERE id_annonce = '$id'";)

  ?>