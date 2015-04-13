<?php

include('./fonctions/fonction_bdd.php'); 
$titre_annonce= $_POST['titre_annonce'];
$descriptif_annonce= $_POST['descriptif_annonce'];
$duree_annonce= $_POST['duree_annonce'];
$competence_annonce= $_POST['competence_annonce'];


$result=executer("insert into user(nom,prenom,date_naissance,email,adresse)values ('".$titre_annonce."','".$descriptif_annonce."','".$duree_annonce."','".$competence_annonce."')");
if ($result)
	echo "enregistrement reussi";

?>