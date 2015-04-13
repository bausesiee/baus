
<?php

function headerCompte(){
				
						 if  ((!isset($_SESSION['login'])) && (!isset($_SESSION['pass']))){
							$session=false;
						 }
						 else{
							 $session=true;
							
						 }

				

								return $session;
				
				
			}
			
			function supprimer(){
				$id=$_GET['id'];
				supprimeravis($id);
				require("./vue/spectacle/supprimer.tpl");
			}
   

function desc(){
	$id=$_GET['id'];
	$session=false;
	$possedeavis=false;
	$reserve="";
	require("./Modele/spectacleBD.php");
	
	
	if (count($_POST)!=0 && isset($_POST['note']) && isset($_POST['commentaire'])){
		ajoutavis($id);
	}
	if (count($_POST)!=0 && isset($_POST['id_r'])){
		$idr=$_POST['id_r'];
		if(!dejareserve($id,$idr)){
			$reserve="place reservée";
		ajouthistorique();
		}
		else{
			$reserve="déjà reservée";
		}
	}
	
	
	
 	$Tsp=read_spectacle_entier($id);
	
	$Tdate=read_date($id);
	
	$Tcom=read_commentaire($id);
	
	
	
	if(contenuMenuD()){
		$session=contenuMenuD();
		$possedeavis=possede_avis($id);
	}
	
	
   require("./vue/spectacle/spectacle.tpl");
   
}

function accueil(){
	
		require("./Modele/spectacleBD.php");
				$session=false;
				$T=read_meilleur_spectacle_reduit();
				//$moy=moyenne();
				
				
				if (count($_POST)!=0 && isset($_POST['login']) && isset($_POST['pass'])){//si l'utilisateur a remplit un formulaire de connexion
					$post=true;
					$login=$_POST['login'];
					$pass= $_POST['pass'];
					require("./Modele/utilisateurBD.php");
				
					$idu=connexion($login, $pass);// on vérifie que le login et le pass sont bons
					if (isset($idu)){ // s'ils sont bons
					$_SESSION['idu'] = $idu;
					$_SESSION['login'] = $login;
					$_SESSION['pass'] = $pass;
					$session=true;
					
					}
				}
				else{ // s'il n'envoit pas de formulaire on verif s'il existe une variable session
					$post=false;
				
				$session=contenuMenuD();
				
				}
				
				require("./vue/spectacle/accueil.tpl");
				
}

function liste(){
	
	require("./Modele/spectacleBD.php");
				$session=false;
				$T=read_tout();
				
				
				$session=contenuMenuD();
				
				
				
				require("./vue/spectacle/listspectacle.tpl");
				
	
}

?>