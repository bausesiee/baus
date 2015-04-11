  <?php

 include('./fonctions/fonction_bdd.php');
  //récupération de la variable d'URL,
  //qui va nous permettre de savoir quel enregistrement modifier
  $id_CV  = $_GET["id_CV"] ;
 
  //requête SQL:
$requete=execute("DELETE *
            FROM CV
	    WHERE id_CV = '$id_CV'";)

  ?>