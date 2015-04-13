


<?php

			
	
			
			
			
				
			
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
			
	
	
				function inscription(){
	
		
				require("./Modele/utilisateurBD.php");
				$regemail='"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"';
				
				$ok=true;
				
				
					if (isset($_POST['email']) && strlen($_POST['email']) != 0 && isset($_POST['pass']) && strlen($_POST['pass']) != 0&& isset($_POST['prenom']) && strlen($_POST['prenom']) != 0 && isset($_POST['nom']) && strlen($_POST['nom']) != 0){
						
						
					}
					else{
					
						$ok=false;
					}
					
					if($ok){
						ajoutuser();
						$verdict="Utilisateur crée";
					}
					else{
						$verdict="Erreur lors de l'inscription";
						if(!preg_match($regemail,$_POST['email'])){
							$verdict="Email non valide";
							$ok=false;
							
						}
						
					}
					
					require("./vue/header.tpl");?>
					<h1 style="text-align: center;"><?php
					echo $verdict;?>
					</h1>
					<?php
					
			
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
				header ('location: index.php');

			}
			
			function pageajoutAnnonce(){
				
				
				require("./vue/header.tpl");
				require("./vue/utilisateur/enregistrerannonce.tpl");
			}
			
			function ajoutAnnonce(){
				
				require("./Modele/utilisateurBD.php");
				$test=enregistrerAnnoncebd();
				header ('location: index.php');  
			}
			
			function pagelisteAnnonces(){
				require("./Modele/utilisateurBD.php");
				$T=read_annonces();
				require("./vue/header.tpl");
				require("./vue/utilisateur/listeAnnonces.tpl");
			 
				
			}
			
			function Annonce(){
				$id=$_GET['id'];
				
				require("./Modele/utilisateurBD.php");
				$T=read_annonce($id);
				
				require("./vue/header.tpl");
			   require("./vue/utilisateur/Annonce.tpl");
			  
   
			}
			
			function pageCV(){
				require("./Modele/utilisateurBD.php");
				$T=afficherCV();
				
				require("./vue/header.tpl");
			   require("./vue/utilisateur/CV.tpl");
			}
			
			
			function deconnexion(){
				session_start();
					session_destroy ();  

					header ('location: index.php');  
			}
		?>
