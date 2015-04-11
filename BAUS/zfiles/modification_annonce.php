<?php
  //connection au serveur
  //$cnx = mysql_connect( "localhost", "root", "" ) ;
 
  //sélection de la base de données:
  //$db  = mysql_select_db( "baus" ) ;

include('./fonctions/fonction_bdd.php'); 
$nom= $_POST['nom'];
$prenom= $_POST['prenom'];
$date_de_naissance= $_POST['date_de_naissance'];
$email= $_POST['email'];
$adresse= $_POST['adresse'];
$telephone= $_POST['telephone'];
 
  //récupération de l'identifiant de la personne:
  $id         = $_POST["id_"] ;
 
  //création de la requête SQL:
  $sql = "UPDATE annonce
          SET    titre_annonce = '$titre_annonce', 
	               descriptif_annonce  = '$descriptif_annonce',
		             date_de_creation  = '$date_de_creation',
		             duree_annonce = '$duree_annonce',
                 date_debut = '$date_debut',
                 date_d_expiration = '$date_d_expiration',
                 genre_de_contrat = '$genre_de_contrat',
                 niveau_d_etude_requis = '$niveau_d_etude_requis',
                 competence_annonce = '$competence_annonce'
           WHERE id = '$id_annonce' " ;
 
  //exécution de la requête SQL:
  $requete = mysql_query($sql) or die( mysql_error() ) ;
 
 
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