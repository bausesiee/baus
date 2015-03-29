
<?php
//#1 changer la valeur "1" des qu'on recupere le id utilisateur
include('./fonctions/fonction_bdd.php'); 
$competence= $_POST['competence'];
$dernier_diplome= $_POST['dernier_diplome'];
$annees_dexperience= $_POST['annees_dexperience'];
$langue= $_POST['langue'];
$loisir= $_POST['loisir'];


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
$result=executer("insert into cv(competence,dernier_diplome,annee_d_experience,langue,loisir,id_demandeur)values ('".$competence."','".$dernier_diplome."','".$annees_dexperience."','".$langue."','".$loisir."','1')");// #1
/*$result=execute("select * from cv");*/
//affiche($result);

?>