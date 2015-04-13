<?php
	//if (!$session){
	if (!isset($_SESSION['idu'])){
	?>
	
	
		
		
		<div id="corpsmodifajout">
		<h3>Inscrivez vous sur BAUS Consulting!</h3>
        <form action="index.php?ctrl=utilisateur&action=inscription" method="post">
				<fieldset > 
                <div class="form">
						<label for="email">Email</label>
						<input name="email" maxlength="30" class="normal">
					</div><!--fin form-->
                    <div class="form">
                    <div class="form">
						<label for="pass">Mot de passe</label>
						<input type="password" name="pass" maxlength="20"  class="normal">
					</div><!--fin form-->
					
                     
						<label for="prenom">Prenom</label>
						<input name="prenom" maxlength="20" class="normal">
					</div><!--fin form-->
					<div class="form">
						<label for="nom">Nom</label>
						<input name="nom" maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
					
			
                        
					</div><!--fin form-->
					<br/>
				</fieldset>
				<input type="submit" value="S'inscrire" />
			</form>
            </div><!-- fin corpsmodifajout-->
			
			
	
 


		








			<?php
			}
			else{
			?> <div id="corps"><h1>Bienvenue</h1></div><?php

			}

 ?>
    
   
  
				
			
		
