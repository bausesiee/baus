<div id="menuD">
        <h3>Espace Membre</h3><hr>
        <?php
        if (!$session){?>
	
    </br>
    <u>
     <a href="index.php?ctrl=utilisateur&amp;action=affconnexion" class="menu">Se connecter</a></br>
    <a href="index.php?ctrl=utilisateur&amp;action=inscription" class="menu">S'incrire</a>
    </u>
    <?php
}
else{
	
						
						echo "Bienvenue ";?>
						<u><a href="index.php?ctrl=utilisateur&amp;action=gestion" class="menu"><?php echo $_SESSION['login'];
						?></a><br/><br/>
						<a href="index.php?ctrl=utilisateur&amp;action=deconnexion" class="menu">Se deconnecter</a>
                        <br/><br/>
						<a href="index.php?ctrl=utilisateur&amp;action=listmembre" class="menu">Liste des membres</a>
						
                        </u>
                        <?php
					}
					
				

				
	

?>
			
		</div>  <!--fin menuD -->
        
        <div id="corpsmembre">
        <b><hr/><?php 
        echo $Tmembre[0][0];?></b><hr/>Email: <?php
        echo $Tmembre[0][1];?><br/>Pays: <?php
        echo $Tmembre[0][2]; /* ?>
       <hr/>
        <b>Derniers avis</b>
        <hr/>
        
        
        <?php if ($possedeavis){ foreach($Tactiva as $t){ echo $t[1];  echo ' le '.date('d/m/Y', $t[2]).' &agrave; '.date('H:i:s', $t[2]);?><br/><?php } ?><?php  }else{ echo "Aucun avis posté";} */?>
       <hr/>
        <br/><br/><?php  if($Tmembre[0][0]!=$_SESSION['login'] && $ami==false){ ?>
        <a href="index.php?ctrl=utilisateur&action=ajouter&id=<?php echo $Tmembre[0][3]; ?>">Ajouter en ami</a>
        <?php }elseif($ami){echo "Deja ami";} ?>
        
        
        
        
        
        </div><!-- fin corpsmembre -->
			
