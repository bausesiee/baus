<?php

//nouvelle forme des URL
// index.php?ctrl=utilisateur&action=ident
session_start();


if(isset($_GET) && isset($_GET['ctrl']) && isset($_GET['action'])){ // isset teste si la variable contient quelque chose
	$ctrl=$_GET['ctrl'];
	$action=$_GET['action'];
	/*if (isset($_GET['id'])){//si ca marche pas prendre le get dans le controle
		$id=$_GET['id'];
	}*/
}
else{
	/*
	$ctrl="spectacle";
	$action="accueil";
	*/
	$ctrl="site";
	$action="accueil";
	
}

require("./controle/" . $ctrl . ".php");//ident.php ne charge que des fichiers de controle, repertoire courant = repertoire où se trouve index.php
$action();

//require("./vue/footer.tpl");


/*
quand on clique sur poster affiche index.php?ctrl=spectacle&action=afficher&id=

formulaire connexion envoi post à index

<?php 

function ident(){
	si les v sessions existent pas
require normal du tpl (le tpl va par un booleen afficher ou pas)
else
...

?>*/

/*
index envoit au controle accueil les post et donc aucune autre page n'a le if isset post
controle accueil fait le if 
?>*/

        
				
					
				
	

?>