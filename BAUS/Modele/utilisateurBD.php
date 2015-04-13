<?php

				function connexion($email, $pass){

					$req="SELECT id_user FROM user WHERE email = '$email' AND motdepasse = '$pass'";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					$r = $res->fetch_row();
					 
					$idu=$r[0]; 
					
					return $idu;
						
				}
					

				
				function ajoutuser(){
				$req="INSERT INTO user(id_user,nom,prenom,date_naissance,email,adresse,telephone,motdepasse) VALUES('',  '".$_POST['nom']."',  '".$_POST['prenom']."', '".$_POST['date_naissance']."', '".$_POST['email']."', '".$_POST['adresse']."', '".$_POST['telephone']."', '".$_POST['pass']."')";
				require("infosSQL.php");
				$res=$mysqli->query($req);
				print_r($res);
				
				}
				
				function read_annonces(){	
				
					$req="SELECT a.id_annonce,a.titre_annonce FROM user as u, annonce as a, lienannonce_user as l WHERE l.Annonce_id_annonce=a.id_annonce AND l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					 
					while($E =$res->fetch_assoc()){
					
						$Annonces[]=array($E['id_annonce'],$E['titre_annonce']);
						
					}
					return $Annonces;
				}
				
				function read_annonce($id){	
				
					$req="SELECT a.id_annonce,a.titre_annonce,a.descriptif_annonce,a.date_de_creation,a.duree_annonce,a.date_debut,a.date_d_expiration,a.genre_de_contrat,a.niveau_d_etude_requis,a.remuneration,a.competence_annonce FROM user as u, annonce as a, lienannonce_user as l WHERE l.Annonce_id_annonce=a.id_annonce AND a.id_annonce='".$id."' AND l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";	
					
					require("infosSQL.php");
					$res=$mysqli->query($req);
				
					 
					
					$E = $res->fetch_assoc();
						
						$Annonce[]=array($E['id_annonce'],$E['titre_annonce'],$E['descriptif_annonce'],$E['date_de_creation'],$E['duree_annonce'],$E['date_debut'],$E['date_d_expiration'],$E['genre_de_contrat'],$E['niveau_d_etude_requis'],$E['remuneration'],$E['competence_annonce']);
					
						
					return $Annonce;
				}
				
				
				function possedeCV(){
					
					$req="SELECT l.User_id_user FROM user as u, liencv_user as l WHERE l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					$success = $res->num_rows;
					
					return $success>=1;
				}
				
				function possedeAnnonce(){
			
					$req="SELECT l.User_id_user FROM user as u, lienannonce_user as l WHERE l.User_id_user=u.id_user AND u.id_user='".$_SESSION['idu']."'";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					$success = $res->num_rows;
					
					return $success>=1;
				}
				
				
				
				function enregistrerCVbd(){
					$req="INSERT INTO cv(idCv,competence,dernier_diplome,annee_d_experience,langue,loisir,cle) VALUES('', '".$_POST['competence']."',  '".$_POST['dernier_diplome']."', '".$_POST['annees_d_experience']."' , '".$_POST['langue']."', '".$_POST['loisir']."', '".$_POST['competence']."')";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					
					$UID=$mysqli->insert_id;
					
					$req="INSERT INTO liencv_user(idLienCV_User,User_id_user,CV_idCv) VALUES('', '".$_SESSION['idu']."', $UID)";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					
					
				}
				
				function enregistrerAnnoncebd(){
					$titre_annonce= $_POST['titre_annonce'];
					$descriptif_annonce= $_POST['descriptif_annonce'];
					$duree_annonce= $_POST['duree_annonce'];
					$competence_annonce= $_POST['competence_annonce'];


					$req="insert into annonce(id_annonce, titre_annonce, descriptif_annonce, date_de_creation, duree_annonce, date_debut, date_d_expiration, genre_de_contrat, niveau_d_etude_requis, remuneration, competence_annonce) values ('', '".$titre_annonce."','".$descriptif_annonce."', '', '".$duree_annonce."', '', '', '', '', '','".$competence_annonce."')";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
					
					 
					$UID=$mysqli->insert_id;
					$req="INSERT INTO lienannonce_user(idLienAnnonce_User,User_id_user,Annonce_id_annonce) VALUES('', '".$_SESSION['idu']."','".$UID."')";
					require("infosSQL.php");
					$res=$mysqli->query($req);
					
				}
					
					
					
					
					
					
					
					
				
				
				
					
				?>