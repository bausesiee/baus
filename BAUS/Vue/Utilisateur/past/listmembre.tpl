

		<div id="corpsgestion">
        Liste des membres
        <hr/>
        <?php foreach($Tmembre as $t){ 
        ?> <a href="index.php?ctrl=utilisateur&action=membre&id=<?php echo $t[0]; ?>"> <?php echo $t[1]; ?> </a> <br/>
        <?php } ?>

            </div><!-- fin corpgestion-->