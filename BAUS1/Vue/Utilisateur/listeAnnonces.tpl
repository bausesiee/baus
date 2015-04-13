
	<div id="corps">

	   <h3> Liste de vos Annonces </h3>

	<?php 
		foreach ($T as $t){
			echo ("<a href='index.php?ctrl=utilisateur&action=Annonce&id=".$t[0]."'>");
			echo $t[1];
			?></a>
			<p>
			
			<?php
		}
		?>
	</div>
