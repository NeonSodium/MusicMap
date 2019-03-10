<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>MUSIC MAP</title>
</head>

<body>

<?php include 'bar.php'; ?>

<?php

if (isset($_GET['type']) and $_GET['type'] == "inscription") {

    ?>

    <h2 style="text-align: center">Insciption</h2>


    <div class="identification">
        <form action="">
            <table class="formulaire">
                <tr>
                    <td>
                        Prénom
                    </td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        Nom
                    </td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        Mail
                    </td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        Mot de passe
                    </td>
                    <td>
                        <input type="password" name="" id="">
                    </td>
                </tr>
                <tr>
                    <td>
                        Confirmer le mdp
                    </td>
                    <td>
                        <input type="password">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <div class="identification">
        <form action="connexion.php" method="get">
            <input type="hidden" name="type" value="connexion">
            <p>Vous êtes déjà inscrit ? Cliquez ici : </p>
            <button>Connexion</button>
        </form>
    </div>

    <?php
}
else{
?>

<div class="container">


    <h2 style="text-align: center">Connexion</h2>

    <div class="identification">
        <form action="">
            <table class="formulaire">
                <tr>
                    <td>
                        Mail
                    </td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td>
                        Mot de passe
                    </td>
                    <td>
                        <input type="password">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button type="submit">Connexion</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <div class="identification">
        <form action="connexion.php" method="get">
            <input type="hidden" name="type" value="inscription">
            <p>Vous n'êtes pas inscrit ? Cliquez ici : </p>
            <button>Inscription</button>
        </form>
    </div>

    <?php
    }
    ?>

</div>

</body>

</html>