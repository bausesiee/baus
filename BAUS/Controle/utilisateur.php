


<?php

	/*
			function contenuMenuD(){
				
						 if  ((!isset($_SESSION['login'])) && (!isset($_SESSION['pass']))){
							$session=false;
						 }
						 else{
							 $session=true;
							
						 }

				

								return $session;
				
				
			}
			
			
			function ajoutami(){
					$id=$_GET['id'];
				require("./Modele/utilisateurBD.php");
				ajouterami($id);
				$session=contenuMenuD();
				require("./vue/utilisateur/gestion.tpl");
			}*/
			
	
			
			
			
				
			
			function listmembre(){
				require("./Modele/utilisateurBD.php");
				$Tmembre=readmembres();
				$session=contenuMenuD();
				require("./vue/utilisateur/listmembre.tpl");
			}
			
		
			function gestion(){
				
				require("./vue/header.tpl");
				require("./Modele/utilisateurBD.php");
				
				$possedeCV=possedeCV();
				$possedeAnnonce=possedeAnnonce();
				require("./vue/utilisateur/gestion.tpl");
			}
			/*
			function modifajout(){
	
		
				require("./Modele/utilisateurBD.php");
				$session=false;
				$regemail='"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"';
				$verdict="";
				$ok=true;
				if(contenuMenuD()){
					$session=contenuMenuD();
					$Tuser=readusers();
				}
				
				if(!$session){
					if (isset($_POST['login']) && isset($_POST['pass']) && isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['telephone']) && isset($_POST['adresse']) && isset($_POST['codepostal']) && isset($_POST['ville'])){
						if(!preg_match($regemail,$_POST['email'])){
							$verdict="Email non valide";
							$ok=false;
						}
					}
					else{
						$verdict="Remplissez le formulaire";
						$ok=false;
					}
					if($ok){
						ajoutuser();
						$verdict="Utilisateur crée";
					}
				}
				else{
					$verdict="";
				$ok=true;
					if (isset($_POST['login']) && isset($_POST['pass']) && isset($_POST['email']) && isset($_POST['prenom']) && isset($_POST['nom']) && isset($_POST['telephone']) && isset($_POST['adresse']) && isset($_POST['codepostal']) && isset($_POST['ville'])){
				
					$ok=true;
					
					
				}
				else{
					$verdict="Remplissez le formulaire";
					$ok=false;
				}
				if($ok){
					updateuser();
					$verdict="Utilisateur mis à jour";
				}
					
				}
					
				
				require("./vue/utilisateur/modifajout.tpl");
	}
	*/
	
	
				function inscription(){
	
		
				require("./Modele/utilisateurBD.php");
				$regemail='"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"';
				//$verdict="";
				$ok=true;
				
				
					if (isset($_POST['email']) && strlen($_POST['email']) != 0 && isset($_POST['pass']) && strlen($_POST['pass']) != 0&& isset($_POST['prenom']) && strlen($_POST['prenom']) != 0 && isset($_POST['nom']) && strlen($_POST['nom']) != 0){
						if(!preg_match($regemail,$_POST['email'])){
							$verdict="Email non valide";
							$ok=false;
							
						}
						
						
					}
					else{
					
						
					}
					
					if($ok){
						ajoutuser();
						$verdict="Utilisateur crée";
					}
					require("./vue/header.tpl");
					echo $verdict;
					//require("./vue/utilisateur/modifajout.tpl");
				}
			
			function affconnexion(){
				
				
				require("./vue/header.tpl");
				require("./vue/utilisateur/connexion.tpl");
			}
			
			function pageajoutCV(){
				
				
				require("./vue/header.tpl");
				require("./vue/utilisateur/enregistrercv.tpl");
			}
			
			function ajoutCV(){
				
				require("./Modele/utilisateurBD.php");
				$test=enregistrerCVbd();
				require("./vue/header.tpl");
				require("./vue/utilisateur/gestion.tpl");
			}
			
			function pageajoutAnnonce(){
				
				
				require("./vue/header.tpl");
				require("./vue/utilisateur/enregistrerannonce.tpl");
			}
			
			function ajoutAnnonce(){
				
				require("./Modele/utilisateurBD.php");
				$test=enregistrerAnnoncebd();
				require("./vue/header.tpl");
				require("./vue/utilisateur/gestion.tpl");
			}
			
			
			function deconnexion(){
				session_start();
					session_destroy ();  

					header ('location: index.php');  
			}
		?>
