<?php

include('./fonctions/fonction_bdd.php'); 
$titre_annonce= $_POST['titre_annonce'];
$descriptif_annonce= $_POST['descriptif_annonce'];
$date_de_creation= $_POST['date_de_creation'];
$duree_annonce= $_POST['duree_annonce'];
$date_debut= $_POST['date_debut'];
$date_d_expiration= $_POST['date_d_expiration'];
$genre_de_contrat= $_POST['genre_de_contrat'];
$niveau_d_etude_requis= $_POST['niveau_d_etude_requis'];
$competence_annonce= $_POST['competence_annonce'];
$cle= $_POST['cle'];


$result=executer("insert into user(titre_annonce,descriptif_annonce,date_de_creation,duree_annonce,date_debut,date_d_expiration,genre_de_contrat,niveau_d_etude_requis,competence_annonce,id_annonce,cle)
values ('".$titre_annonce."','".$descriptif_annonce."','".$date_de_creation."', '".$duree_annonce."','".$date_debut."','".$date_d_expiration."','".$genre_de_contrat."','".$niveau_d_etude_requis."','".$competence_annonce."','"1"','".$cle."')");
 
  //affichage des résultats, pour savoir si l'insertion a marchée:

if ($result)
	echo "enregistrement reussi";
 else
  {
    echo("L'insertion à échouée") ;
  }


?>