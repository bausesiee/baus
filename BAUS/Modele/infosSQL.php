<?php 
error_reporting(0);
/*
$nom = "pingi12benali2";
$pass = "norage";
$host = "vs-09-wamp"; //localhost chez moi
$base = $nom;
*/
$nom = "root";
$pass = "";
$host = "localhost"; //localhost chez moi
$base = "baus";

$link = mysql_connect($host, $nom, $pass) or die ("erreur de connexion :" . mysql_error());
mysql_select_db($base) or die ("erreur d\'acces a la base :" . $base);

/*$req= "une requete SQL";
$res = mysql_query($req, $link) or die ("erreur de requête :" . $req);*/

/*$link = new mysqli($host, $nom, $pass, $base);*/

?>