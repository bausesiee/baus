
		
		<div id="menuD">
        <h3>Espace Membre</h3><hr>
        <?php
        if (!$session){?>
	
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
        
        <div id="corpsspectacle">
        <div id="hautspec">
    
			   <div id="imgspec">
               <?php
               
               $rep =  "vue/images/";
                                    $nom = $rep . $Tsp[0][0];
			   echo"<img src='$nom'/></a>";?>
               
               </div>  <!--fin imgspec -->
               <div id="contenuspec">
			   <div id="nomspectacle">
			   <?php echo $Tsp[0][1];?>
			   </div>  <!--fin nomspectacle -->
			   <div id="synopsis">
			   <?php echo "<b>categorie:</b> ".$Tsp[0][4].""; ?></br></br><b>Synopsis:</b><br /><?php
			   echo $Tsp[0][2];?></br></br><b>Avec:</b><br /><?php
			   echo $Tsp[0][3];?>
			   </div>  <!--fin synopsis -->
			   
			   </div>  <!--fin contenuspec-->
               </div>  <!--fin hautspec-->
               <div id="basspec">
               <hr />
               <div id="grostitre">
               Representations
               </div>
<hr /><table> 
  
  <TR> 
 <TH> Salle </TH> 
 <TH> Date </TH> 
 <TH> Horaire </TH> 
 
  </TR> 
  

  
 
   <?php
foreach ($Tdate as $t){
   ?><TR> 
   
   <TD><?php echo $t[0]; ?></TD>
   <TD><?php echo $t[1]; ?></TD>
   <TD><?php echo $t[2]; ?></TD></TR> <?php
   
}
?></TR> 
</table><?php
if($session){?>
<FORM method="post" action="index.php?ctrl=spectacle&action=desc&id=<?php echo $Tsp[0][5]; ?>">
<input type="hidden" value="<?php echo time(); ?>" name="date" />
<SELECT name="id_r" size="1">
<?php
foreach ($Tdate as $t){?>
<OPTION VALUE="<?php echo $t[3]; ?>" ><?php echo $t[1]; ?></OPTION><?php
}
?>
</SELECT>
<INPUT type="submit" value="Reserver">
</FORM>


<div id="important">
<?php 
echo $reserve; ?>  </div><!-- fin important --> <?php
}
     ?>
      
     <hr />
<div id="grostitre">
               Commentaires
               </div>
               <?php            
  
 
foreach ($Tcom as $t){  


   ?>
   <b><hr /><?php
   echo $t[0];?></b> note: <?php echo $t[1]; ?>/5 <?php echo 'posté le '.date('d/m/Y', $t[3]).' &agrave; '.date('H:i:s', $t[3]);?></br><?php
   echo $t[2];?></br><?php
   
}

if(!$possedeavis && $session){?>
<hr/>
<FORM method="post" action="index.php?ctrl=spectacle&action=desc&id=<?php echo $Tsp[0][5]; ?>">

<TEXTAREA rows="3" name="commentaire">
	Tapez ici votre commentaire</TEXTAREA>
    <br/>
    Note:
    <SELECT name="note">
    <OPTION VALUE="0" >0</OPTION>
    <OPTION VALUE="1" >1</OPTION>
    <OPTION VALUE="2" >2</OPTION>
    <OPTION VALUE="3" >3</OPTION>
    <OPTION VALUE="4" >4</OPTION>
    <OPTION VALUE="5" >5</OPTION>
   </SELECT>
   <input type="hidden" value="<?php echo time(); ?>" name="date" />
<INPUT type="submit" value="Commenter">
</FORM>
   <?php 
   }
   ?>
		
		
		
		
		</div><!-- fin basspec -->
        </div><!-- fin corpsspectacle -->
			
