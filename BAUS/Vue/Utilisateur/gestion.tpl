
	<div id="corps">

	   <h3> Gestion de votre compte</h3>

	   
	<a href="index.php?ctrl=utilisateur&action=deconnexion">Se deconnecter</a><p>
	<?php
	
		if($possedeCV){
			?>
			<a href="index.php?ctrl=utilisateur&action=pageCV">Voir votre CV</a><p>
			<?php
		}
		else{
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutCV">Ajouter votre CV</a><p>
			<?php
		}
		if($possedeAnnonce){
			?>
			<a href="index.php?ctrl=utilisateur&action=pagelisteAnnonces">Voir vos Annonces</a><p>
			<?php
			}
		
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutAnnonce">Ajouter une Annonce</a><p>
	</div>
		