CREATE DATABASE IF NOT EXISTS `MUSIQUES` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `MUSIQUES`;

CREATE TABLE `ORIGINE` (
  `idartiste` INT,
  `idlocalisation` INT,
  PRIMARY KEY (`idartiste`, `idlocalisation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `A_SORTIE` (
  `idartiste` INT,
  `idalbum` INT,
  PRIMARY KEY (`idartiste`, `idalbum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `GENRE` (
  `idgenres` INT,
  `nomgenre` VARCHAR(100),
  PRIMARY KEY (`idgenres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `LOCALISATION` (
  `idlocalisation` INT,
  `pays` VARCHAR(100),
  PRIMARY KEY (`idlocalisation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ARTISTE` (
  `idartiste` INT,
  `nomartiste` VARCHAR(100),
  `bio` VARCHAR(500),
  PRIMARY KEY (`idartiste`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ALBUM` (
  `idalbum` INT,
  `nomalbum` VARCHAR(100),
  `coveralbum` VARCHAR(100),
  `idartist` INT,
  `date_sortie` DATE,
  PRIMARY KEY (`idalbum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `AVOIR_GENRE` (
  `idgenres` INT,
  `idmusique` INT,
  PRIMARY KEY (`idgenres`, `idmusique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `INTERPRETE` (
  `idartiste` INT,
  `idmusique` INT,
  PRIMARY KEY (`idartiste`, `idmusique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `DANS_ALBUM` (
  `idalbum` INT,
  `idmusique` INT,
  PRIMARY KEY (`idalbum`, `idmusique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `MUSIQUE` (
  `idmusique` INT,
  `titre` VARCHAR(100),
  `duree` TIME,
  `urlspotify` VARCHAR(200),
  `idspotify` VARCHAR(200),
  `tempo` FLOAT,
  `dansability` FLOAT,
  `energy` FLOAT,
  `popularity` FLOAT,
  PRIMARY KEY (`idmusique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `DANS_PLAYLIST` (
  `idplaylist` INT,
  `idmusique` INT,
  PRIMARY KEY (`idplaylist`, `idmusique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ETRE_CLASSEE` (
  `idmusique` INT,
  `idclassement` INT,
  PRIMARY KEY (`idmusique`, `idclassement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `CLIENT` (
  `idclient` INT,
  `nomclient` VARCHAR(100),
  `prenomclient` VARCHAR(100),
  `mdpclient` VARCHAR(100),
  `mailclient` VARCHAR(100),
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `PLAYLIST` (
  `idplaylist` INT,
  `nomplaylist` INT,
  PRIMARY KEY (`idplaylist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `CLASSEMENT` (
  `idclassement` INT,
  `nomclassement` VARCHAR(100),
  PRIMARY KEY (`idclassement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `AVOIR_PLAYLIST` (
  `idclient` INT,
  `idplaylist` INT,
  PRIMARY KEY (`idclient`, `idplaylist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `ORIGINE` ADD FOREIGN KEY (`idlocalisation`) REFERENCES `LOCALISATION` (`idlocalisation`);
ALTER TABLE `ORIGINE` ADD FOREIGN KEY (`idartiste`) REFERENCES `ARTISTE` (`idartiste`);
ALTER TABLE `A_SORTIE` ADD FOREIGN KEY (`idalbum`) REFERENCES `ALBUM` (`idalbum`);
ALTER TABLE `A_SORTIE` ADD FOREIGN KEY (`idartiste`) REFERENCES `ARTISTE` (`idartiste`);
ALTER TABLE `AVOIR_GENRE` ADD FOREIGN KEY (`idmusique`) REFERENCES `MUSIQUE` (`idmusique`);
ALTER TABLE `AVOIR_GENRE` ADD FOREIGN KEY (`idgenres`) REFERENCES `GENRE` (`idgenres`);
ALTER TABLE `INTERPRETE` ADD FOREIGN KEY (`idmusique`) REFERENCES `MUSIQUE` (`idmusique`);
ALTER TABLE `INTERPRETE` ADD FOREIGN KEY (`idartiste`) REFERENCES `ARTISTE` (`idartiste`);
ALTER TABLE `DANS_ALBUM` ADD FOREIGN KEY (`idmusique`) REFERENCES `MUSIQUE` (`idmusique`);
ALTER TABLE `DANS_ALBUM` ADD FOREIGN KEY (`idalbum`) REFERENCES `ALBUM` (`idalbum`);
ALTER TABLE `DANS_PLAYLIST` ADD FOREIGN KEY (`idmusique`) REFERENCES `MUSIQUE` (`idmusique`);
ALTER TABLE `DANS_PLAYLIST` ADD FOREIGN KEY (`idplaylist`) REFERENCES `PLAYLIST` (`idplaylist`);
ALTER TABLE `ETRE_CLASSEE` ADD FOREIGN KEY (`idclassement`) REFERENCES `CLASSEMENT` (`idclassement`);
ALTER TABLE `ETRE_CLASSEE` ADD FOREIGN KEY (`idmusique`) REFERENCES `MUSIQUE` (`idmusique`);
ALTER TABLE `AVOIR_PLAYLIST` ADD FOREIGN KEY (`idplaylist`) REFERENCES `PLAYLIST` (`idplaylist`);
ALTER TABLE `AVOIR_PLAYLIST` ADD FOREIGN KEY (`idclient`) REFERENCES `CLIENT` (`idclient`);