
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
        <div id="corpstheatre">
        <img src="./Vue/images/theatre.png" class="phototheatre">
        
        M&eacute;langeant com&eacute;die et pi&egrave;ce contemporaine depuis 1990, le th&eacute;&acirc;tre de l'onche est devenu le 
carrefour incontournable des nouveaux auteurs. Situ&eacute; en banlieue parisienne, il offre un large
choix de spectacles dans trois grandes salles. L'&eacute;quipe se fera un plaisir de vous accueillir pour vous faire passer une excellente soir&eacute;e.
        <iframe class="phototheatre" width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=theatre+de+paris&amp;aq=&amp;sll=48.787866,2.39502&amp;sspn=0.757305,1.234589&amp;ie=UTF8&amp;hq=theatre+de+paris&amp;hnear=&amp;t=m&amp;z=10&amp;iwloc=A&amp;cid=14643129924347048833&amp;ll=48.878563,2.331562&amp;output=embed"></iframe><br /></div>  <!--fin corpstheatre -->