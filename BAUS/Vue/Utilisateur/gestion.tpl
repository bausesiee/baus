
	
	<a href="index.php?ctrl=utilisateur&action=deconnexion">Se deconnecter</a>
	<?php
	
		if($possedeCV){
			?>
			<a href="index.php?ctrl=utilisateur&action=pageCV">Voir votre CV</a>
			<?php
		}
		else{
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutCV">Ajouter votre CV</a>
			<?php
		}
		if($possedeAnnonce){
			?>
			<a href="index.php?ctrl=utilisateur&action=pageAnnonce">Voir vos Annonces</a>
			<?php
			}
		else{
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutAnnonce">Ajouter une Annonce</a>
			<?php
		}
		