<div id="corps">
	   <h3> Ajouter votre CV </h3>
	   </div>
<div id="corpsajoutcv">

	<form enctype="multipart/form-data" action="index.php?ctrl=utilisateur&action=ajoutcv" method="post">
	<table style="width:100%">
	<tr>
	<td><label for="competence">Competence</label></td>
	<td><input type="text" name="competence" id="competence" placeholder="Ex : Java ,C" size="50" /></td>
	</tr>
	<tr>
	<td><label for="dernier_diplome">Dernier diplome</label></td>
	<td><input type="text" name="dernier_diplome" id="dernier_diplome" placeholder="Ex : Master finance" size="50" /></td>
	</tr>
	<tr>
	<td><label for="annees_dexperience">Annee(s) d'experience dans le domaine</label></td>
	<td><input type="text" name="annees_d_experience" id="annees_dexperience" placeholder="Ex : 5 ans" size="50" /></td>
	</tr>
	<tr>
	<td><label for="langue">Langue</label></td>
	<td><input type="text" name="langue" id="langue" placeholder="Ex : Anglais , Francais " size="50" /></td>
	</tr>
	<tr>
	<td><label for="loisir">Loisir</label></td>
	<td><input type="text" name="loisir" id="loisir" placeholder="Ex : Cinema" size="50" /></td>
	</tr>
	<!--
	<tr>

	<input type="hidden" name="MAX_FILE_SIZE" value="30000" />
	<td>Envoyez ce fichier :</td>
	<td><input name="userfile" type="file" /></td>
	</tr>
	-->
	</table>
	<input type="submit" value="Enregister votre CV" />
	</form>

</div>