<!--

		<div id="menuD">
        <h3>Espace Membre</h3><hr>
        <?php
        if (!$session){
        if($post){
        echo "Erreur de connexion";
        }?>
	
    </br>
   <u>
     <a href="index.php?ctrl=utilisateur&amp;action=affconnexion" class="menu">Se connecter</a></br>
    <a href="index.php?ctrl=utilisateur&amp;action=modifajout" class="menu">S'incrire</a>
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
        <!--
        <?php 
    
			foreach ($T as $t){
										?><div id="corps">
                                         <?php
									
									echo ("<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>");
                                    $rep =  "vue/images/";
                                    $nom = $rep . $t[0];
                                   echo ("<img src='$nom'/></a>");
										?>
							
 <div id="nomspectacle">
 
   <?php echo "<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>";
   echo $t[1];?></a>
   </div><!--fin nomspectacle -->
   <!--
   <div id="synopsis">
   <?php
   $synopsis = substr($t[2], 0, 80);
   echo $synopsis;
   echo "..."
   ?><b>
    <?php echo "<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>";
    echo "[suite]";
	?></a><br/><br/>
   
   </b>
   <b>note: <?php $moyenne=round($t[4],1);
   echo $moyenne; ?>/5
   <div id="avis">
   <?php
   echo $t[5];
   ?>
   avis
   </b>
   </div><!--fin avis -->
   <!--
   </div><!--fin synopsis -->
   <!--
   </div><!--fin corps -->
   <!--
   <?php
}
 ?>
    
-->
  
				
			
		
