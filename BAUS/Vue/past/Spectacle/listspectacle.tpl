
		
		<div id="menuD">
        <h3>Espace Membre</h3><hr>
        <?php
        if (!$session){
        
        
        
        ?>
	
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
        
        <?php
    
			foreach ($T as $t){
										?><div id="corpslistspectacle">
                                         <?php
									
									echo ("<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>");
                                    $rep =  "vue/images/";
                                    $nom = $rep . $t[0];
                                   echo ("<img src='$nom' id='imgliste'/></a>");
										?>
							
 <div id="nomspectacleliste">
   <?php echo "<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>";
   echo $t[1];?></a>
   
   </div><!--fin nomspectacle -->
   <div id="synopsis">
   </br>
   <b>Categorie: </b><?php echo $t[4]; ?></br>
   </br>
   <b>Synopsis:</b><br />
   <?php
   $synopsis = substr($t[2], 0, 200);
   echo $synopsis;
   echo "..."
   ?><b>
    <?php echo "<a href='index.php?ctrl=spectacle&action=desc&id=".$t[3]."'>";
    echo "[suite]";
	?>
   </b>
   </div><!--fin synopsis -->
   </div><!--fin corps -->
   <?php
}
 ?>
    
   
  
				
	