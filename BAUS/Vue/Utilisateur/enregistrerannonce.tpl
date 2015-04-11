
       <div id="corps">
	   <h3> Ajouter une annonce </h3>
	   </div>
<div id="corpsajoutcv">

            <form action="index.php?ctrl=utilisateur&action=ajoutAnnonce" method="post">
					<table class="table_annonce">
						<tr>
							<td><label class="annonce" for="titre_annonce">Titre de l'annonce</label></td>
							<td><input class="input_annonce" type="text" name="titre_annonce" id="titre_annonce" placeholder="Application Web" size="50"/></td>
						</tr>

						<tr>
							<td><label class="annonce" for="descriptif_annonce">Description</label></td>
							<td><input class="input_annonce" type="text" name="descriptif_annonce" id="descriptif_annonce" placeholder="Site d'annonce" size="50"/></td>
						</tr>

						  <tr>
							<td><label class="annonce" for="duree_annonce">Duree</label></td>
							<td><input class="input_annonce" type="text" name="duree_annonce" id="duree_annonce" placeholder="3 mois, 6 mois" size="50"/></td>

						</tr>

						<tr>
							<td><label class="annonce" for="competence_annonce">Competences</label></td>
							<td><input class="input_annonce" type="text" name="competence_annonce" id="competence_annonce" placeholder="JAVA, C, C#" size="50"/></td>
						</tr>

						</table>

						<tr>
							<td><input class="input_annonce" tabindex="3" type="submit" value="Envoyer">
							</td>
						</tr>
				    
			</form>

</div>