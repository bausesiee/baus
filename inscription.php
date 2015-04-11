<?php
include('./fonctions/fonction_bdd.php'); 
// on teste si le visiteur a soumis le formulaire
if (isset($_POST['inscription']) && $_POST['inscription'] == 'Inscription') {
	// on teste l'existence de nos variables. On teste également si elles ne sont pas vides
	if ((isset($_POST['email']) && !empty($_POST['email'])) && (isset($_POST['pass']) && !empty($_POST['pass'])) && (isset($_POST['pass_confirm']) && !empty($_POST['pass_confirm']))) {
	// on teste les deux mots de passe
	if ($_POST['pass'] != $_POST['pass_confirm']) {
		$erreur = 'Les 2 mots de passe sont différents.';
	}
	else {


		// on recherche si ce email est déjà utilisé par un autre membre
		$sql = 'SELECT count(*) FROM user WHERE email="'.$_POST['email'].'"';
		$req=executer($sql);
		$data=$req->fetch();

		if ($data[0] == 0) {
		$sql = 'INSERT INTO user(nom,prenom,date_naissance,email,adresse,telephone,motdepasse) VALUES("ahanguir","adam","2014-12-01","'.$_POST['email'].'","platine adress","0777946581","'.$_POST['pass'].'")';
		executer($sql);

		session_start();
		$_SESSION['email'] = $_POST['email'];
		header('Location: membre.php');
		exit();
		}
		else {
		$erreur = 'Un membre possede deja cet email.';
		}
	}
	}
	else {
	$erreur = 'Au moins un des champs est vide.';
	}
}
?>
<html>
<head>
<title>Inscription</title>
</head>

<body>
Inscription à l'espace membre :<br />
<form action="inscription.php" method="post">
email : <input type="text" name="email" value="<?php if (isset($_POST['email'])) echo htmlentities(trim($_POST['email'])); ?>"><br />
Mot de passe : <input type="password" name="pass" value="<?php if (isset($_POST['pass'])) echo htmlentities(trim($_POST['pass'])); ?>"><br />
Confirmation du mot de passe : <input type="password" name="pass_confirm" value="<?php if (isset($_POST['pass_confirm'])) echo htmlentities(trim($_POST['pass_confirm'])); ?>"><br />
<input type="submit" name="inscription" value="Inscription">
</form>
<?php
if (isset($erreur)) echo '<br />',$erreur;
?>
</body>
</html>