<?php
/*
function headerCompte(){
				
						 if  ((!isset($_SESSION['login'])) && (!isset($_SESSION['pass']))){
							$session=false;
						 }
						 else{
							 $session=true;
							
						 }

				

								return $session;
				
				
			}
			*/
function accueil(){
	
		require("./Modele/siteBD.php");
				$session=false;
				//$T=read_meilleur_spectacle_reduit();
				//$moy=moyenne();
				
				
				if (count($_POST)!=0 && isset($_POST['email']) && isset($_POST['pass'])){//si l'utilisateur a remplit un formulaire de connexion
					$post=true;
					$email=$_POST['email'];
					$pass= $_POST['pass'];
					require("./Modele/utilisateurBD.php");
				
					$idu=connexion($email, $pass);// on vérifie que le login et le pass sont bons
					if (isset($idu)){ // s'ils sont bons
					$_SESSION['idu'] = $idu;
					$_SESSION['email'] = $email;
					$_SESSION['pass'] = $pass;
					//$session=true;
					
					}
				}
				else{ // s'il n'envoit pas de formulaire on verif s'il existe une variable session
					$post=false;
				
				//$session=headerCompte();
				
				}
				require("./vue/header.tpl");
				require("./vue/site/accueil.tpl");
				
				//raffraichir la page ou juste le header car probleme avec mon compte qui se raffraichit pas dans le header
				
}

?>