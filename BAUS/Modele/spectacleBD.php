<?php

/*function read_spectacle_reduit(){
	$req="SELECT i.nom, sp.titre, sp.synopsis, sp.id_sp FROM spectacle as sp, image as i WHERE sp.id_sp=i.id_sp LIMIT 3";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				//while($E = mysql_fetch_assoc($res)){
					
					//$Contacts[]=$E;
					$Spectacle[]=array($E['nom'],$E['titre'],$E['synopsis'],$E['id_sp']);
				}
				
				return $Spectacle;
  
 
				
				
			}
			*/
		function read_meilleur_spectacle_reduit(){	
			$req="SELECT i.nom, sp.titre, sp.synopsis, sp.id_sp, AVG(a.note) AS moy, COUNT(a.note) AS nbavis FROM image as i, spectacle as sp, avis as a WHERE sp.id_sp=i.id_sp AND sp.id_sp=a.id_sp GROUP BY sp.id_sp ORDER By moy DESC LIMIT 3";
				require("infosSQL.php");
				$res=mysql_query($req);
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;*/
					$Spectacle[]=array($E['nom'],$E['titre'],$E['synopsis'],$E['id_sp'],$E['moy'],$E['nbavis']);
				}
				return $Spectacle;
				}
				
				
				
			/*function nbavis(){
				$req="SELECT sp.id_sp, SUM(a.note) as somme FROM spectacle as sp, avis as a WHERE sp.id_sp=a.id_sp GROUP BY sp.id_sp";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				//while($E = mysql_fetch_assoc($res)){
					//$Contacts[]=$E;
					$moy[]=array($E['somme']);
				}
				
				return $moy;
				
				
				}*/
			
			function ajoutavis($ids){
				$req="SELECT id_u FROM utilisateur WHERE login='".$_SESSION['login']."'";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				$E = mysql_fetch_assoc($res);
					
					$id[]=array($E['id_u']);
				$idu = $id[0][0];
				$req="INSERT INTO avis(id_sp, id_u, commentaire, note, date) VALUES('$ids', '$idu', '".$_POST['commentaire']."', '".$_POST['note']."', '".$_POST['date']."')";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
			}
			
			function ajouthistorique(){
				
				$req="SELECT id_u FROM utilisateur WHERE login='".$_SESSION['login']."'";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				$E = mysql_fetch_assoc($res);
					/*$Contacts[]=$E;*/
					$id[]=array($E['id_u']);
				$idu = $id[0][0];
				$req="INSERT INTO historique(id_r, id_u, date) VALUES('".$_POST['id_r']."', '$idu', '".$_POST['date']."')";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
			}
			
			
			function ahistorique(){
				
				$req="SELECT id_u FROM utilisateur WHERE login='".$_SESSION['login']."'";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				$E = mysql_fetch_assoc($res);
					/*$Contacts[]=$E;*/
					$id[]=array($E['id_u']);
				$idu = $id[0][0];
				$req="INSERT INTO historique(id_r, id_u, date) VALUES('".$_POST['id_r']."', '$idu', '".$_POST['date']."')";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
			}
			
function read_spectacle_entier($id){
				$req="SELECT i.nom, sp.titre, sp.synopsis, sp.distribution, c.libelle, sp.id_sp
				FROM spectacle as sp, image as i, categorie as c 
				WHERE sp.id_sp='$id' AND sp.id_sp=i.id_sp AND c.id_c=sp.id_c";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
				$E = mysql_fetch_assoc($res);
					/*$Contacts[]=$E;*/
					$Spectacle[]=array($E['nom'],$E['titre'],$E['synopsis'],$E['distribution'],$E['libelle'],$E['id_sp']);
				
				
				return $Spectacle;
}


function read_tout(){
	$req="SELECT i.nom, sp.titre, sp.synopsis, sp.id_sp, c.libelle FROM spectacle as sp, image as i, categorie as c WHERE c.id_c=sp.id_c AND sp.id_sp=i.id_sp";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				//$nombre_de_reponse = mysql_num_rows($res);  
				
				while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;*/
					$Spectacle[]=array($E['nom'],$E['titre'],$E['synopsis'],$E['id_sp'],$E['libelle']);
				}
				
				return $Spectacle;
  
 
				
				
			}
				
function read_date($id){
					$req="SELECT r.id_s, r.date, r.horaire, r.id_r FROM spectacle as sp, representation as r, salle as s 
				WHERE sp.id_sp='$id' AND
				sp.id_sp=r.id_sp AND
				r.id_s=s.id_s";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
				while($E = mysql_fetch_assoc($res)){
					
					$Dates[]=array($E['id_s'],$E['date'],$E['horaire'],$E['id_r']);
				}
				
				return $Dates;
}
/*
function read_date($ids){
	$req="SELECT id_u FROM utilisateur WHERE login='".$_SESSION['login']."'";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				$idu = mysql_result($res,0);
					
				
				
				
				
				
					$req="SELECT r.id_s, r.date, r.horaire, r.id_r FROM spectacle as sp, representation as r, utilisateur as u, historique as h, salle as s WHERE sp.id_sp='$ids' AND u.id_u<>'$idu' AND h.id_r=r.id_r AND h.id_u=u.id_u AND sp.id_sp=r.id_sp AND r.id_s=s.id_s";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
				while($E = mysql_fetch_assoc($res)){
					
					$Dates[]=array($E['id_s'],$E['date'],$E['horaire'],$E['id_r']);
				}
				
				return $Dates;
}*/

				
function read_commentaire($id){				
					 $req="SELECT u.login, a.note, a.commentaire, a.date FROM spectacle as sp, avis as a, utilisateur as u 
					WHERE sp.id_sp='$id' AND
					sp.id_sp=a.id_sp AND 
					a.id_u=u.id_u ORDER BY a.date DESC";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
					while($E = mysql_fetch_assoc($res)){
					/*$Contacts[]=$E;*/
					$Comment[]=array($E['login'],$E['note'],$E['commentaire'],$E['date']);
				}
				
				return $Comment;
}

function possede_avis($id){
	
	$login=$_SESSION['login'];
	 $req="SELECT a.id_u FROM spectacle as sp, avis as a, utilisateur as u 
					WHERE sp.id_sp='$id' AND
					u.login='$login' AND
					sp.id_sp=a.id_sp AND 
					a.id_u=u.id_u ";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete");
				
				return mysql_num_rows($res)==1;
				
}
				function dejareserve($id,$idr){
	
	$login=$_SESSION['login'];
	 $req="SELECT h.id_u FROM spectacle as sp, historique as h, utilisateur as u, representation as r 
					WHERE sp.id_sp='$id' AND
					u.login='$login' AND
					r.id_r='$idr' AND
					sp.id_sp=r.id_sp AND 
					h.id_r=r.id_r";
				require("infosSQL.php");
				$res=mysql_query($req) or die ("erreur de requete1");
				
				return mysql_num_rows($res)==1;
				
}
				
				
				
				
				
				?>