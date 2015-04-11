
<?php
//#1 changer la valeur "1" des qu'on recupere le id utilisateur
include('./fonctions/fonction_bdd.php'); 
$competence= $_POST['competence'];
$dernier_diplome= $_POST['dernier_diplome'];
$annees_dexperience= $_POST['annees_dexperience'];
$langue= $_POST['langue'];
$loisir= $_POST['loisir'];
$cle= $_POST['cle'];
list($nomfichier, $extension) = explode(".",basename($_FILES["userfile"]["name"]));// divise le nom et l'extension du fichier
if($extension != "pdf")
{
  echo "<p> Mauvais format , veuillez uploder un PDF<p>";
  echo "<a href=\"enregistrement_cv.html\">Cliquez ici pour retourner au formulaire.</a>";
}
else{
  $result=executer("insert into cv(competence,dernier_diplome,annee_d_experience,langue,loisir,cle)values ('".$competence."','".$dernier_diplome."','".$annees_dexperience."','".$langue."','".$loisir."','".$cle."')");//insert competence..
  $idcv=executer("select idCv from cv where competence='".$competence."' and dernier_diplome='".$dernier_diplome."' and annee_d_experience='".$annees_dexperience."' and langue='".$langue."' and cle='".$cle."'");//recupere idcv
  //echo "select idCv from cv where competence='".$competence."' and dernier_diplome='".$dernier_diplome."' and annee_d_experience='".$annees_dexperience."' and langue='".$langue."' and cle='".$cle."'";
  $idcvArray=$idcv->fetch();
  $idCv=array_values($idcvArray)[0];


  echo "nom fichier ".basename($_FILES["userfile"]["name"]);
  $uploaddir = '../baus/telechargement/';

  $uploadfile = $uploaddir . $idCv.'.'.$extension;//renom le fichier par son idcv

  ////// Info Pour débogage 
  echo '<pre>';
    
  if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile) or die('Impossible de copier le fichier : '.$savefile.mysql_error())) {
    
      echo "<html>
    			<head>
      		<title>CV enregistre</title>
      		<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />
    			</head>
    		<body>
      		<p>Votre CV a bien ete pris en compte. </br></br>
          	<a href=\"enregistrement_cv.html\">Cliquez ici pour retourner au formulaire.</a></p>
    		</body>
  		</html>";
  		} 
  else {
      echo "Attaque potentielle par telechargement de fichiers.
            Voici plus d'informations :\n";
  }
    
  //echo 'Voici quelques informations de debogage :';
  //print_r($_FILES);

  //echo '</pre>';
  


  //$result=executer("insert into cv(competence,dernier_diplome,annee_d_experience,langue,loisir,cle)values ('".$competence."','".$dernier_diplome."','".$annees_dexperience."','".$langue."','".$loisir."','".$cle."')");

  $relation = executer ("insert into LienCV_User(User_id_user,CV_idCV)values ('1','".$idCv."')"); //# A CHANGER!!!!
  /*$result=execute("select * from cv");*/
  //affiche($result);
}

?>