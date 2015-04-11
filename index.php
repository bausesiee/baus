
<?php
include('./fonctions/fonction_bdd.php'); 
// on teste si le visiteur a soumis le formulaire de connexion
if (isset($_POST['connexion']) && $_POST['connexion'] == 'Connexion') {
	if ((isset($_POST['email']) && !empty($_POST['email'])) && (isset($_POST['pass']) && !empty($_POST['pass']))) {

	//$base = mysql_connect ('serveur', 'email', 'password');
	$base = new PDO('mysql:host=localhost;dbname=baus;charset=utf8', 'root', '',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));

	// on teste si une entrée de la base contient ce couple email / pass
	$sql = 'SELECT count(*) FROM User WHERE email="'.$_POST['email'].'" AND motdepasse="'.$_POST['pass'].'"';
	$req = executer($sql);
	$data=$req->fetch();


	// si on obtient une réponse, alors l'utilisateur est un membre
	if ($data[0] == 1) {
		session_start();
		$_SESSION['email'] = $_POST['email'];
		header('Location: membre.php');
		exit();
	}
	// si on ne trouve aucune réponse, le visiteur s'est trompé soit dans son email, soit dans son mot de passe
	elseif ($data[0] == 0) {
		$erreur = 'Compte non reconnu.';
	}
	// sinon, alors la, il y a un gros problème :)
	else {
		$erreur = 'Probème dans la base de données : plusieurs membres ont les mêmes identifiants de connexion.';
	}
	}
	else {
	$erreur = 'Au moins un des champs est vide.';
	}
}
?>
<html>
<head>
<title>Accueil</title>
</head>

<body>
Connexion à l'espace membre :<br />
<form action="index.php" method="post">
email : <input type="text" name="email" value="<?php if (isset($_POST['email'])) echo htmlentities(trim($_POST['email'])); ?>"><br />
Mot de passe : <input type="password" name="pass" value="<?php if (isset($_POST['pass'])) echo htmlentities(trim($_POST['pass'])); ?>"><br />
<input type="submit" name="connexion" value="Connexion">
</form>
<a href="inscription.php">Vous inscrire</a>
<?php
if (isset($erreur)) echo '<br /><br />',$erreur;
?>
</body>
</html>