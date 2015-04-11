<?php
include('./fonctions/fonction_bdd.php'); 

$PARAM_mot_cle= $_POST['mot_cle'];
$compteur=0;
$mot_cle=explode(' ',$PARAM_mot_cle);
$sql="select user.id_user,user.prenom,user.nom,user.telephone,cv.idCv from user inner join liencv_user on user.id_user=liencv_user.user_id_user inner join cv on liencv_user.cv_idcv=cv.idcv where cv.cle like ''";//instruction de base

foreach ($mot_cle as &$cle) {// ajout des donnees dans l'instruction en fonction des information rentré
	if ($cle != ' ')
	{
		
		$sql=$sql . " union select user.id_user,user.prenom,user.nom,user.telephone,cv.idCv from user inner join liencv_user on user.id_user=liencv_user.user_id_user inner join cv on liencv_user.cv_idcv=cv.idcv where cv.cle like '%".$cle."%'";
		
	}
	
}	

echo $sql;
echo "<h3> Le Resultat :</h3>";
$result=executer($sql);// execution de l'instruction
while ($reponse = $result->fetch())//affichage du resultat
{

	$compteur++;
	echo "<p><b>personne numeros :</b>".$compteur.":<br>";
	echo "<b>nom :</b>".$reponse['nom']."  <b>Prenom :</b>".$reponse['prenom'].".</p>";
	echo "Cv : <a href=\"/baus/telechargement/".$reponse['idCv'].".pdf\"> Telecharger CV </a>";

}		

$result->closeCursor(); // ferme la requete	
?>