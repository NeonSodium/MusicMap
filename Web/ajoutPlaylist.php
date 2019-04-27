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

<?php
include 'bd.php';
$bdd = getBD();
include 'fonction_php.php';
?>

<body>

<div class="container">

    <?php
    echo "ID musique : " . $_GET['idmusique'] . "<br>";
    echo "ID Client : " . $_GET['idclient'] . "<br>";
    $ok = ajout_playlist($bdd, $_GET['idmusique'], $_GET['idclient']);
    if ($ok){
        echo "Ajoutée à votre playlist !";
    }
    ?>

</div>

</body>

</html>