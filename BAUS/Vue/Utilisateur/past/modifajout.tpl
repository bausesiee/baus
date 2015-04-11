<?php
        if (!$session){?>
        <div id="menuD">
        <h3>Inscription</h3><hr>
        Inscrivez vous sur cette page.
        </div> <!--fin menuD -->
		<div id="corpsmodifajout">
        <form action="index.php?ctrl=utilisateur&action=modifajout" method="post">
				<fieldset > <legend>Inscription</legend>
                <div class="form">
						<label for="login"> Login* : </label>
						<input name="login"  maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
						<label for="pass"> Mot de passe* : </label>
						<input type="password" name="pass" maxlength="20"  class="normal">
					</div><!--fin form-->
					
                     <div class="form">
						<label for="email"> Email* : </label>
						<input name="email" maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
						<label for="prenom"> Prénom* : </label>
						<input name="prenom" maxlength="20" class="normal">
					</div><!--fin form-->
					<div class="form">
						<label for="nom"> Nom* : </label>
						<input name="nom" maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
						<label for="telephone"> Téléphone* : </label>
						<input name="telephone" maxlength="10" class="petit">
					</div><!--fin form-->
					<div class="form">
						<label for="adresse"> Adresse* : </label>
						<input name="adresse" maxlength="30" class="grand">
					</div> <!--fin form-->
					<div class="form">
						<label for="codepostal"> Code postal* : </label>
						<input name="codepostal" maxlength="5" class="petit">
					</div><!--fin form-->
                    <div class="form">
						<label for="ville"> Ville* : </label>
						<input name="ville" maxlength="20" class="normal">
					</div><!--fin form-->
					<div class="form">

						<label for="Pays"> Pays* : </label>
						<SELECT name="pays" class="normal">
						
                      	<OPTION>France
                        <OPTION>Suisse
                        <OPTION>Belgique
						</SELECT><br />
                        <?php /* echo $verdict;*/ ?>
					</div><!--fin form-->
					<br/>
				</fieldset>
				<input type="submit" value="Envoyer" />
			</form>
            </div><!-- fin corpsmodifajout-->
	
   <?php
}
else{ ?>
	<div id="menuD"><?php
						
						echo "Bienvenue ";?>
						<u><a href="index.php?ctrl=utilisateur&amp;action=gestion" class="menu"><?php echo $_SESSION['login'];
						?></a><br/><br/>
						<a href="index.php?ctrl=utilisateur&amp;action=deconnexion" class="menu">Se deconnecter</a>
                        <br/><br/>
						<a href="index.php?ctrl=utilisateur&amp;action=listmembre" class="menu">Liste des membres</a>
						
                        </u>
                         </div> <!--fin menuD -->
                   


            
             
             <div id="corpsmodifajout">
        <form action="index.php?ctrl=utilisateur&action=modifajout" method="post">
				<fieldset > <legend>Modification</legend>
                <div class="form">
						<label for="login"> Login* : </label>
						<input name="login"  maxlength="20"  value="<?php echo $_SESSION['login']; ?>" class="normal" readonly>
					</div><!--fin form-->
                    <div class="form">
						<label for="pass"> Mot de passe* : </label>
						<input type="password" value="<?php echo $_SESSION['pass']; ?>" name="pass" maxlength="20"  class="normal">
					</div><!--fin form-->
					
                     <div class="form">
						<label for="email"> Email* : </label>
						<input name="email" value="<?php echo $Tuser[0][0]; ?> " maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
						<label for="prenom"> Prénom* : </label>
						<input name="prenom" value="<?php echo $Tuser[0][1]; ?> " maxlength="20" class="normal">
					</div><!--fin form-->
					<div class="form">
						<label for="nom"> Nom* : </label>
						<input name="nom" value="<?php echo $Tuser[0][2]; ?> " maxlength="20" class="normal">
					</div><!--fin form-->
                    <div class="form">
						<label for="telephone"> Téléphone* : </label>
						<input name="telephone" value="0<?php echo $Tuser[0][5]; ?> " maxlength="10" class="petit">
					</div><!--fin form-->
					<div class="form">
						<label for="adresse"> Adresse* : </label>
						<input name="adresse" value="<?php echo $Tuser[0][3]; ?> " maxlength="30" class="grand">
					</div> <!--fin form-->
					<div class="form">
						<label for="codepostal"> Code postal* : </label>
						<input name="codepostal" value="<?php echo $Tuser[0][4]; ?> " maxlength="5" class="petit">
					</div><!--fin form-->
                    <div class="form">
						<label for="ville"> Ville* : </label>
						<input name="ville" value="<?php echo $Tuser[0][6]; ?> " maxlength="20" class="normal">
					</div><!--fin form-->
					<div class="form">

						<label for="Pays"> Pays* : </label>
						<SELECT name="pays" class="normal">
						<OPTION selected><?php echo $Tuser[0][7]; ?>
                      	<OPTION>France
                        <OPTION>Suisse
                        <OPTION>Belgique
						</SELECT><br />
                        <?php echo $verdict; ?>
					</div><!--fin form-->
					<br/>
				</fieldset>
				<input type="submit" value="Envoyer" />
			</form>
            </div><!-- fin corpsmodifajout-->
           <?php }
              ?>
             