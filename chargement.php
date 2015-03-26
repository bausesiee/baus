<?php

include('./fonctions/fonction_bdd.php'); 

$uploaddir = '../baus/telechargement/';
$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);

echo '<pre>';
if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
    echo "Le fichier est valide, et a ete telecharge
           avec succes. Voici plus d'informations :\n";
} else {
    echo "Attaque potentielle par telechargement de fichiers.
          Voici plus d'informations :\n";
}

echo 'Voici quelques informations de debogage :';
print_r($_FILES);

echo '</pre>';
$result=execute("insert into cv(id_demandeur)values ('2')");
?>