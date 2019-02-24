<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>MUSIC MAP</title>
</head>

<body>

    <?php include 'bar.php'; ?>

    <?php

    require_once 'vendor/autoload.php';

    $session = new SpotifyWebAPI\Session(
        'a61db8eaf8444f8a86ef751409a0e168',
        '830549d14c44424598d9b2b8e9dd950e',
        'http://localhost/callback.php'
    );

    header('Location: ' . $session->getAuthorizeUrl());
    die();

    ?>

</body>

</html>