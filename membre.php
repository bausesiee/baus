<?php
session_start();
if (!isset($_SESSION['email'])) {
	header ('Location: index.php');
	exit();
}
?>

<html>
<head>
<title>Espace membre</title>
</head>

<body>
Bienvenue <?php echo htmlentities(trim($_SESSION['email'])); ?> !<br />
<a href="deconnexion.php">Deconnexion</a>
</body>
</html>