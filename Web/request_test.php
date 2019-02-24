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
    require 'vendor/autoload.php';

    // Fetch your access token from somewhere. A database for example.
    $accessToken = $_GET['aT'];


    $api = new SpotifyWebAPI\SpotifyWebAPI();
    $api->setAccessToken($accessToken);
    
    print_r(
        $api->getTrack('4uLU6hMCjMI75M1A2tKUQC')
    );
    ?>

    <script src="https://sdk.scdn.co/spotify-player.js"></script>

    <script>
    window.onSpotifyWebPlaybackSDKReady = () => {
        // You can now initialize Spotify.Player and use the SDK
    };
    </script>

    

</body>

</html>