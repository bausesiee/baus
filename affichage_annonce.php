  <?php
  //connection au serveur:
  //$cnx = mysql_connect( "localhost", "root", "" ) ;
 
  //sélection de la base de données:
  //$db = mysql_select_db( "Baus" ) ;

 include('./fonctions/fonction_bdd.php');
  //récupération de la variable d'URL,
  //qui va nous permettre de savoir quel enregistrement modifier
  $id  = $_GET["id_annonce"] ;
 
  //requête SQL:
  $sql = "SELECT *
            FROM annonce
	    WHERE id_annonce = ".$id ;
 
  //exécution de la requête:
  $requete = mysql_query($sql) ;
 
  //affichage des données:
  if( $result = mysql_fetch_object( $requete ) )
  {
  ?>