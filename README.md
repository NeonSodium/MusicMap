# MusicMap
Projet réalisé par Florian VIE, Adrien LASCOMBES, Cédric ROTONDO, Fadwa BOUZIANE OUARTINI et Salma EL KHOLTE.

MusicMap est un site web dans le but est de découvrir des musiciens géographiquement grâce à sa carte intéractive. Le site est actuellement hébergé sur un serveur.

# Héberger sur un serveur local
Pour héberger le site en local il suffit de mettre les fichiers dans le serveur et modifier les identifiants de la base de données dans bd.php.

La base de données est stockée dans le fichier musicmap.sql. Les noms des tables sont écrits en lettre majuscule cependant certains systèmes d'exploitation ne conservent pas les
majuscules lors de l'importation du fichier musicmap.sql, c'est le cas de Windows par exemple. Sur Debian, ce n'est pas le cas. Après 
avoir effectué des tests sur Windows, les lettres majuscules n'importe pas dans l'exécution des requêtes.
