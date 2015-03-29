<?php
function executer($sql)
{
    try
    {
        // On se connecte à MySQL
        $bdd = new PDO('mysql:host=localhost;dbname=baus;charset=utf8', 'root', '',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    }
    catch(Exception $e)
    {
        // En cas d'erreur, on affiche un message et on arrête tout
            die('Erreur : '.$e->getMessage());
    }

    // Si tout va bien, on peut continuer

    // On récupère tout le contenu de la table jeux_video
    $reponse = $bdd->query($sql);
    return $reponse;

}



function affiche($result)
{
    if($result!='0')// s'il y a un retour on affiche sinon rien
    {
    	if ($result->num_rows > 0) {
        // output data of each row
        	while($row = $result->fetch_assoc()) {
            	echo "idCV: " . $row["idCv"]. "<br>";
        	}
    	} 
    	else {
        	echo "0 results";
    	}
    }
}
?>