<?php

include('./fonctions/fonction_bdd.php'); 
$nom= $_POST['nom'];
$prenom= $_POST['prenom'];
$date_de_naissance= $_POST['date_de_naissance'];
$email= $_POST['email'];
$adresse= $_POST['adresse'];
$telephone= $_POST['telephone'];


$result=executer("insert into user(nom,prenom,date_naissance,email,adresse)values ('".$nom."','".$prenom."','".$date_de_naissance."','".$email."','".$adresse."','".$telephone"')");
if ($result)
	echo "enregistrement reussi";
/*$result=execute("select * from cv");*/
//affiche($result);

?>