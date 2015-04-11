<?php

				function connexion($email, $pass){

					$req="SELECT id_user FROM user WHERE email = '$email' AND motdepasse = '$pass'";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete");
					$r=mysql_fetch_row($res); 
					$idu=$r[0]; 
					
					return $idu;
						/*$success = mysql_num_rows($res);
						// Si utilisateur existe
						return $success==1;*/
				}
					

				
				function ajoutuser(){
				$req="INSERT INTO user(id_user,nom,prenom,date_naissance,email,adresse,telephone,motdepasse) VALUES('',  '".$_POST['nom']."',  '".$_POST['prenom']."', '', '".$_POST['email']."', '', '', '".$_POST['pass']."')";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				}
				/*
				function updateuser(){
					$req="UPDATE utilisateur SET pass = '".$_POST['pass']."', email = '".$_POST['email']."', prenom = '".$_POST['prenom']."', nom = '".$_POST['nom']."', adresse = '".$_POST['adresse']."', codepostal = '".$_POST['codepostal']."', telephone = '".$_POST['telephone']."' , ville = '".$_POST['ville']."', pays = '".$_POST['pays']."'  WHERE login = '".$_SESSION['login']."'";
					require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				}
				
				function readusers(){
					
				$req="SELECT email, prenom, nom, adresse, codepostal, telephone, ville, pays FROM utilisateur WHERE login='".$_SESSION['login']."'";
				require("infosSQL.php");
				$res=mysql_query($req);
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;
					$User[]=array($E['email'],$E['prenom'],$E['nom'],$E['adresse'],$E['codepostal'],$E['telephone'],$E['ville'],$E['pays']);
				}
				return $User;
				}
				
				function readuser($id){
					
			$req="SELECT login, email, pays, id_u FROM utilisateur WHERE id_u='$id'";
				require("infosSQL.php");
				$res=mysql_query($req);
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;
					$User[]=array($E['login'],$E['email'],$E['pays'],$E['id_u']);
				}
				return $User;
				}*/
				
				function possedeCV(){
					//$req="SELECT cv.id_demandeur FROM user as u, cv WHERE cv.id_demandeur=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					$req="SELECT l.User_id_user FROM user as u, liencv_user as l WHERE l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete");
					$success = mysql_num_rows($res);
					return $success>=1;
				}
				
				function possedeAnnonce(){
					//$req="SELECT a.id_annonceur FROM user as u, annonce as a WHERE a.id_annonceur=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					$req="SELECT l.User_id_user FROM user as u, lienannonce_user as l WHERE l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete");
					$success = mysql_num_rows($res);
					return $success>=1;
				}
				/*
				function readmembres(){
					$req="SELECT id_u, login FROM utilisateur";
				require("infosSQL.php");
				$res=mysql_query($req);
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;*
					$User[]=array($E['id_u'],$E['login']);
				}
				return $User;
				}
				*/
				
				
				function enregistrerCVbd(){
					$req="INSERT INTO cv(idCv,competence,dernier_diplome,annee_d_experience,langue,loisir,cle) VALUES('', '".$_POST['competence']."',  '".$_POST['dernier_diplome']."', '".$_POST['annees_d_experience']."' , '".$_POST['langue']."', '".$_POST['loisir']."', '".$_POST['competence']."')";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete");
					
					$UID=mysql_insert_id(); 
					$req="INSERT INTO liencv_user(idLienCV_User,User_id_user,CV_idCv) VALUES('', '".$_SESSION['idu']."', $UID)";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete");
					
					
				}
				
				function enregistrerAnnoncebd(){
					$titre_annonce= $_POST['titre_annonce'];
					$descriptif_annonce= $_POST['descriptif_annonce'];
					$duree_annonce= $_POST['duree'];
					$competence_annonce= $_POST['competence_annonce'];


					$req="insert into annonce(id_annonce, titre_annonce, descriptif_annonce, date_de_creation, duree_annonce, date_debut, date_d_expiration, genre_de_contrat, niveau_d_etude_requis, remuneration, competence_annonce) values ('', '".$titre_annonce."','".$descriptif_annonce."', '', '".$duree_annonce."', '', '', '', '', '','".$competence_annonce."')";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete1");
					
					$UID=mysql_insert_id(); 
					$req="INSERT INTO lienannonce_user(idLienAnnonce_User,User_id_user,Annonce_id_annonce) VALUES('', '".$_SESSION['idu']."', $UID)";
					require("infosSQL.php");
					$res=mysql_query($req) or die ("erreur de requete2");
				}
					
					
					
					
					
					
					
					
				
				
				
					
				?>