<?php
include('./fonctions/fonction_bdd.php'); 

$PARAM_mot_cle= $_POST['mot_cle'];
$compteur=0;
$mot_cle=explode(' ',$PARAM_mot_cle);
$sql="SELECT user.id_user,user.prenom,user.nom from user inner join cle on cle.id_user=user.id_user where 0 ";//instruction de base

foreach ($mot_cle as &$cle) {// ajout des donnees dans l'instruction en fonction des information rentré
	if ($cle != ' ')
	{
		
		$sql=$sql . "or cle.cle='".$cle."' ";
		
	}
	
}	
$sql=$sql ." group by user.id_user ";
echo $sql;
echo "<h3> Le Resultat :</h3>";
$result=executer($sql);// execution de l'instruction
while ($reponse = $result->fetch())//affichage du resultat
{

	$compteur++;
	echo "<p><b>personne numeros :</b>".$compteur.":<br>";
	echo "<b>nom :</b>".$reponse['nom']."  <b>Prenom :</b>".$reponse['prenom'].".</p>";
	$rep=executer("select cle from cle where id_user='".$reponse['id_user']."'");
	echo "<b> mots-cle: </b>";
	while ($cleBase = $rep->fetch())
	{
		echo $cleBase['cle']."  ";
	}

}		
$rep->closeCursor();//ferme la requete
$result->closeCursor(); // ferme la requete	
?>