-- Exemple de données pour la table "Serie"
INSERT INTO serie (nom, lien_image, vo, premise) VALUES ('Breaking Bad', 'breaking_bad.jpg', 'anglais', 'Un professeur de chimie devient un baron de la drogue.'), ('Game of Thrones', 'game_of_thrones.jpg','anglais', 'Une lutte pour le trône de fer dans un monde fantastique.'),('Stranger Things', 'stranger_things.jpg', 'anglais', 'Des événements étranges se produisent dans une petite ville.'),('Friends','friends.jpg', 'anglais', 'Les aventures de six amis à New York.'),('The Crown', 'the_crown.jpg', 'VO', 'La vie de la reine d Angleterre.');
INSERT INTO genre (nom ) VALUES('Drame'),('Crime'),('Fantaisie'),('Science-Fiction'),('Horreur'),('Comédie'),('Biographie'),('Histoire');
INSERT INTO genre_series (genre_id, series_id) VALUES (1, 1),(2, 1),(3, 2), (1, 2), (4, 3), (5, 3), (6, 4), (1, 4), (7, 5), (8, 5);
INSERT INTO saison (num, nom, annee, nombre_episode, serie_id) VALUES (1, 'Saison 1', 2008, 7, 1),(2, 'Saison 2', 2009, 13, 1),(1, 'Saison 1', 2011, 10, 2),(2, 'Saison 2', 2012, 10, 2),( 1, 'Saison 1', 2016, 8,3),(2, 'Saison 2', 2017, 9, 3),(1, 'Saison 1', 1994, 24, 4),(2, 'Saison 2', 1995, 24, 4),(1, 'Saison 1', 2016, 10, 5),(2, 'Saison 2', 2017, 10, 5);
-- Ajout des saisons 3 & 4 de Stranger Things :
INSERT INTO saison (num, nom, annee, nombre_episode, serie_id) VALUES (3, 'Saison 3', 2019, 8, 3),(4, 'Saison 4', 2022, 9, 3);
-- --------------------------------------
-- Episodes de la série Stranger Things :
-- --------------------------------------
-- Episodes de la saison 1 :
INSERT INTO episode (num, titre, duree, date, saison_id) VALUES (1, 'Chapitre un : La Disparition de Will Byers', 47, '2016-07-15', 5),(2, 'Chapitre deux : La Barjot de Maple Street', 55, '2016-07-15', 5),(3,'Chapitre trois : Petit papa', 51, '2016-07-15', 5),(4, 'Chapitre quatre : Le Corps', 50, '2016-07-15', 5),(5, 'Chapitre cinq : La Puce et l\'acrobate', 53, '2016-07-15', 5),(6, 'Chapitre six : Le Monstre', 47,'2016-07-15', 5),(7, 'Chapitre sept : Le Bain', 40, '2016-07-15', 5),(8, 'Chapitre huit : Le Monde à l\'envers', 55, '2016-07-15', 5);

-- Episodes de la saison 2 :
INSERT INTO episode (num, titre, duree, date, saison_id) VALUES (1, 'Chapitre un : MADMAX', 48, '2017-10-27', 6),(2, 'Chapitre deux : Les Bonshommes de sable', 55, '2017-10-27', 6),(3, 'Chapitre trois : Le Projetde Pollywog', 51, '2017-10-27', 6),(4, 'Chapitre quatre : Will le Sage', 46, '2017-10-27', 6),(5, 'Chapitre cinq : Dig Dug', 51, '2017-10-27', 6),(6, 'Chapitre six : Le Solitaire', 45, '2017-10-27', 6),(7,'Chapitre sept : La Soeur perdue', 45, '2017-10-27', 6),(8, 'Chapitre huit : Le Flagelleur mental', 47, '2017-10-27', 6),(9, 'Chapitre neuf : Le Portail', 62, '2017-10-27', 6);

-- Episodes de la saison 3 :
INSERT INTO episode (num, titre, duree, date, saison_id) VALUES (1, 'Chapitre un : Suzie, tu me reçois ?', 51, '2019-07-04', 11),(2, 'Chapitre deux : Comme des rats', 50, '2019-07-04', 11),(3, 'Chapitre trois : LaLanterne', 50, '2019-07-04', 11),(4, 'Chapitre quatre : Le Sauna', 53, '2019-07-04', 11),(5, 'Chapitre cinq : L\'Armada', 52, '2019-07-04', 11),(6, 'Chapitre six : E Pluribus Unum', 60, '2019-07-04', 11),(7,'Chapitre sept : La Morsure', 55, '2019-07-04', 11),(8, 'Chapitre huit : La Bataille de Starcourt', 77, '2019-07-04', 11);

-- Episodes de la saison 4 :
INSERT INTO episode (num, titre, duree, date, saison_id) VALUES (1, 'Chapitre un : Le Club des damnés', 76, '2022-05-27', 12),(2, 'Chapitre deux : La Malédiction de Vecna', 77, '2022-05-27', 12),(3, 'Chapitretrois : Le Monstre et la super-héroïne', 64, '2022-05-27', 12),(4, 'Chapitre quatre : Cher Billy', 78, '2022-05-27', 12),(5, 'Chapitre cinq : Le Projet Nina', 76, '2022-05-27', 12),(6, 'Chapitre six : La Plongée',75, '2022-05-27', 12),(7, 'Chapitre sept : Le Massacre du Hawkins Lab', 98, '2022-05-27', 12),(8, 'Chapitre huit : Papa', 85, '2022-07-01', 12),(9, 'Chapitre neuf : Le Piggyback', 150, '2022-07-01', 12);