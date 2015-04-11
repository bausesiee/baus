
	
	<a href="index.php?ctrl=utilisateur&action=deconnexion">Se deconnecter</a>
	<?php
		if($possedeCV){
			?>
			<a href="index.php?ctrl=utilisateur&action=pagemodifCV">Modifier votre CV</a>
			<?php
		}
		else{
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutCV">Ajouter votre CV</a>
			<?php
		}
		if($possedeAnnonce){
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutCV">Modifier vos Annonces</a>
			<?php
			}
		else{
			?>
			<a href="index.php?ctrl=utilisateur&action=pageajoutCV">Ajouter une Annonce</a>
			<?php
		}