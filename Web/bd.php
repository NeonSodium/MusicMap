<?php
function getBD(){
    $bdd = new PDO('mysql:host=localhost:3306; dbname=musicmap; charset=utf8', 'root', 'Empereur1');
    return $bdd;
}
?>