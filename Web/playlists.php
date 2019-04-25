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

<?php include 'bar2.php'; ?>

<?php if(isset($_SESSION['client'])){
    echo 'Pl';
}
else{
    echo '<h1 style="padding: 50px">Veuillez vous connectez pour accéder à vos playlists.</h1>';
}
?>


</body>

</html>