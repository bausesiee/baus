
		<div id="corpsgestion">
        <div id="encadrement">
         <?php if($possededemande){ ?> 
         <div id="cadre">
        <b>Demande amis</b>
        </div><!--fin cadre --> 
        <br/> <?php foreach($Tdmd as $t){ ?> <b><?php echo $t[1]; ?></b> <?php echo " demande à être votre ami";?><a href="index.php?ctrl=utilisateur&action=accepter&id=<?php echo $t[0];?>"> <b>Accepter</b> </a> <a href="index.php?ctrl=utilisateur&action=refuser&id=<?php echo $t[0];?>"> <b>Refuser</b></a><br/><?php } }?>
        <br/>
         
        <div id="cadre">
        <b>Amis</b>
        </div><!--fin cadre -->
        <br/>
        <?php if($possedeamis) { foreach($Tami as $t){ ?> <a href="index.php?ctrl=utilisateur&action=membre&id=<?php echo $t[0];?>"><?php echo $t[1];?></a><br/><?php }}else{ echo "Ajoutez votre premier amis";}?>
        </div> <!-- fin encadrement -->
        <br/>
        <div id="encadrement">
         <div id="cadre">
        <b>Mes informations / <a href="index.php?ctrl=utilisateur&action=modifajout">modifier</b></a> 
        </div><!--fin cadre -->
       <br/>
        <div id="informations">
        <b>Email:</b> <?php echo $Tuser[0][0]; ?><br/>
        <b>Prenom:</b> <?php echo $Tuser[0][1]; ?><br/>
        <b>Nom:</b> <?php echo $Tuser[0][2]; ?><br/>
        <b>Telephone: </b> 0<?php echo $Tuser[0][5]; ?><br/>
        <b>Adresse:</b> <?php echo $Tuser[0][3]; ?><br/>
        <b>Code Postal:</b> <?php echo $Tuser[0][4]; ?><br/>
        <b>Ville:</b> <?php echo $Tuser[0][6]; ?><br/>
        <b>Pays:</b> <?php echo $Tuser[0][7]; ?><br/>
        </div> <!--fin informations -->
        <br/>
        <div id="cadre">
        <b>Derniers avis</b>
        
        </div><!--fin cadre -->
        <br/>
        <?php if ($possedeavis){ foreach($Tactiva as $t){ echo $t[1];  echo ' le '.date('d/m/Y', $t[2]).' &agrave; '.date('H:i:s', $t[2]);?><br/><?php } }else{ echo "Vous n'avez posté aucun avis";} ?>
        <br/>
        <div id="cadre">
       <b>Dernieres places reservées</b>
        </div><!--fin cadre -->
        <br/>
        <?php if ($possedehistorique){ foreach($Tactivh as $t){  ?><b><?php echo $t[1] ?></b> pour le <?php echo $t[2];?><br/><?php } }else{ echo "Vous n'avez reservé aucune place";} ?>
        <br/>
       <div id="cadre">
        <b>Statistique</b>
        </div><!--fin cadre -->
        <br/>
        <?php echo $stata[0][0]; ?> avis laissés <br/>
        <?php echo $stath[0][0]; ?> places réservées
        
        <br/>
        </div> <!-- fin encadrement -->
       
        
       
        
        
        
        
            </div><!-- fin corpgestion-->