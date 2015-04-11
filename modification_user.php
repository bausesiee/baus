<?php

include('./fonctions/fonction_bdd.php'); 
$nom= $_POST['nom'];
$prenom= $_POST['prenom'];
$date_de_naissance= $_POST['date_de_naissance'];
$email= $_POST['email'];
$adresse= $_POST['adresse'];
$telephone= $_POST['telephone'];
$id_user= $_POST["id_user"] ;
 
  //création et exécuter de la requête SQL:
$requete=executer("UPDATE user
                   SET    nom = '$nom', 
	                        prenom  = '$prenom',
		                      date_de_naissance = '$date_de_naissance',
		                      email = '$email',
                          telephone = '$telephone'
                   WHERE  id_user = '$id_user'";)
 
 
  //affichage des résultats, pour savoir si la modification a marchée:
  if($requete)
  {
    echo("La modification à été correctement effectuée") ;
  }
  else
  {
    echo("La modification à échouée") ;
  }
?>