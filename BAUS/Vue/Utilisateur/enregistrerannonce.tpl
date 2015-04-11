<html>
    <head>
        <!-- En-tête de la page -->
        <meta charset="utf-8" />
        <title>Inscription</title> 
       <!-- <link rel="stylesheet" href="style.css" /> -->
    </head>


    <body>

        <header>
        <!-- Placez ici le contenu de l'en-tête de votre page -->
        </header>

       

        <section>
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
                        <td><select name="duree">
                            <option value="duree">>= 1 mois</option>
                            <option value="duree">2 mois</option>
                            <option value="duree">3 mois</option>
                            <option value="duree">< 3 mois</option>
                        </select>
                    </tr>

                    <tr>
                        <td><label class="annonce" for="competence_annonce">Competences</label></td>
                        <td><input class="input_annonce" type="text" name="competence_annonce" id="competence_annonce" placeholder="JAVA, C, C#" size="50"/></td>
                    </tr>



                    <tr>
                        <td><input class="input_annonce" tabindex="3" type="submit" value="Envoyer">
                        </td>
                    </tr>
            </table>

           
        </section>
    </body>
</html>