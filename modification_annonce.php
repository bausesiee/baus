<?php

include('./fonctions/fonction_bdd.php'); 
$competence= $_POST['competence'];
$dernier_diplome= $_POST['dernier_diplome'];
$annees_dexperience= $_POST['annees_dexperience'];
$langue= $_POST['langue'];
$loisir= $_POST['loisir'];
$competence_requise= $_POST['competence_requise'];
$cle= $_POST['cle'];
$id_annonce= $_POST["id_annonce"] ;
 
  //création et exécuter de la requête SQL:
$requete=executer("UPDATE annonce
                   SET    titre_annonce = '$titre_annonce', 
	                        descriptif_annonce  = '$descriptif_annonce',
		                      date_de_creation  = '$date_de_creation',
		                      duree_annonce = '$duree_annonce',
                          date_debut = '$date_debut',
                          date_d_expiration = '$date_d_expiration',
                          genre_de_contrat = '$genre_de_contrat',
                          niveau_d_etude_requis = '$niveau_d_etude_requis',
                          competence_annonce = '$competence_annonce'
                   WHERE  id_annonce = '$id_annonce'";)

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