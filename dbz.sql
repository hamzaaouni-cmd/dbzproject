DBZ : 

Update characters set planet_id = 2 where id IN (1,2)
DELETE FROM planets where id =666

INSERT INTO planets (id, name, isDestroyed, description, image) VALUES
(666, 'FAUSSE PALNETTTE', false, 'Planète principale où se déroule la série. C''est le foyer des Terriens et des Guerriers Z.', 'https://dragonball-api.com/planetas/Tierra_Dragon_Ball_Z.webp')


-- Afficher tous les personnages et leur planète d'origine
SELECT characters.name,planets.name
FROM characters 
INNER JOIN planets on planet_id = planets.id 
-- Compter le nombre de personnages par race
SELECT race, COUNT(*) AS nombre_personnages
FROM characters
GROUP BY race
-- Trouver les personnages les plus puissants (Tri par Ki max) :
SELECT name, maxKi 
FROM characters 
ORDER BY LENGTH(maxKi) DESC, maxKi DESC
-- Donne-moi le nom de tous les personnages qui viennent de la planète Vegeta et qui possèdent la transformation Super Saiyan
SELECT name,planets.name,transformations.name
FROM characters
inner join planets on 






-- 1. Création de la table des Planètes
-- On commence par les planètes car les personnages y font référence.
CREATE TABLE planets (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
isDestroyed BOOLEAN DEFAULT FALSE,
description TEXT,
image VARCHAR(255),
deletedAt DATETIME DEFAULT NULL
);

-- 2. Création de la table des Personnages (Characters)
CREATE TABLE characters (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
ki VARCHAR(50),
maxKi VARCHAR(50),
race VARCHAR(50),
gender VARCHAR(20),
description TEXT,
image VARCHAR(255),
affiliation VARCHAR(100),
planet_id INT,
deletedAt DATETIME DEFAULT NULL,
CONSTRAINT fk_character_planet 
FOREIGN KEY (planet_id) REFERENCES planets(id)
ON DELETE SET NULL
);

-- 3. Création de la table des Transformations
-- Chaque transformation est liée à un personnage spécifique.
CREATE TABLE transformations (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
image VARCHAR(255),
ki VARCHAR(50),
character_id INT NOT NULL,
deletedAt DATETIME DEFAULT NULL,
CONSTRAINT fk_transformation_character 
FOREIGN KEY (character_id) REFERENCES characters(id) 
ON DELETE CASCADE
);


INSERT INTO characters (id, name, ki, maxKi, race, gender, description, affiliation, planet_id) VALUES (1, 'Goku', '60.000.000', '90 Septillion', 'Saiyan', 'Male', 'Le protagoniste de la série, connu pour son grand pouvoir et sa personnalité amicale. Originellement envoyé sur Terre pour la conquérir, un coup sur la tête a effacé ses instincts violents, faisant de lui le plus grand protecteur de l''univers.', 'Guerrier Z', 3), (2, 'Vegeta', '54.000.000', '19.84 Septillion', 'Saiyan', 'Male', 'Prince des Saiyans, initialement un méchant, il rejoint ensuite les Guerriers Z. Il est passé de rival acharné à héros et père de famille vivant sur Terre.', 'Guerrier Z', 3), (3, 'Piccolo', '2.000.000', '500.000.000', 'Namek', 'Male', 'Réincarnation du démon Piccolo, il est devenu un membre sage et puissant des Guerriers Z et le mentor de Gohan.', 'Guerrier Z', 2), (4, 'Bulma', '0', '0', 'Humain', 'Female', 'Héroïne de la série et génie scientifique. Fille du Dr. Brief, elle est l''inventrice du Radar Dragon et l''épouse de Vegeta.', 'Guerrier Z', 1), (5, 'Freezer', '530.000', '52.71 Septillion', 'Race de Freezer', 'Male', 'Tyran spatial et antagoniste majeur, responsable de la destruction de la planète Vegeta.', 'Armée de Freezer', NULL), (6, 'Zarbon', '20.000', '30.000', 'Race de Freezer', 'Male', 'L''un des bras droits de Freezer, capable de se transformer pour augmenter sa force.', 'Armée de Freezer', NULL), (7, 'Dodoria', '18.000', '20.000', 'Race de Freezer', 'Male', 'Guerrier brutal au service de Freezer, connu pour sa cruauté.', 'Armée de Freezer', NULL), (8, 'Ginyu', '9.000', '25.000', 'Race de Freezer', 'Male', 'Capitaine du Commando Ginyu, l''élite des mercenaires de Freezer.', 'Armée de Freezer', NULL), (9, 'Cell', '250.000.000', '5 Billion', 'Androïde', 'Male', 'Bio-androïde créé par l''ordinateur du Dr. Gero, contenant les cellules des plus grands guerriers.', 'Freelance', 1), (10, 'Gohan', '45.000.000', '40 Septillion', 'Saiyan', 'Male', 'Fils aîné de Goku et Chichi, il possède un potentiel latent incroyable qu''il libère lors des moments critiques.', 'Guerrier Z', 1), (11, 'Krillin', '1.000.000', '1 Billion', 'Humain', 'Male', 'Le meilleur ami de Goku et l''humain le plus fort de la Terre.', 'Guerrier Z', 1), (12, 'Tenshinhan', '2.400.000', '80.000.000', 'Humain', 'Male', 'Maître des arts marciales et ancien rival de Goku, membre dévoué des Guerriers Z.', 'Guerrier Z', 1), (13, 'Yamcha', '1.980.000', '4.000.000', 'Humain', 'Male', 'Ancien bandit du désert devenu un allié des Guerriers Z.', 'Guerrier Z', 1), (14, 'Chichi', '0', '0', 'Humain', 'Female', 'Épouse de Goku et mère de Gohan et Goten. Elle est très stricte sur l''éducation de ses fils.', 'Guerrier Z', 1), (15, 'Gotenks', '65.600.000', '34.8 Billion', 'Saiyan', 'Male', 'Résultat de la fusion entre Goten et Trunks via la danse de la fusion.', 'Guerrier Z', 1), (16, 'Trunks', '50.000.000', '37.4 Septillion', 'Saiyan', 'Male', 'Fils de Vegeta et Bulma, guerrier puissant venu du futur ou de la ligne temporelle présente.', 'Guerrier Z', 1), (17, 'Tortue Géniale', '500.000', '350.000.000', 'Humain', 'Male', 'Maître des arts martiaux et premier mentor de Goku et Krillin. Inventeur du Kaméhaméha.', 'Guerrier Z', 1), (18, 'Bardock', '450.000', '180.000.000', 'Saiyan', 'Male', 'Père biologique de Goku, un guerrier de classe inférieure qui s''est rebellé contre Freezer.', 'Guerrier Z', 3), (20, 'Mr. Satan', '450', '5.000', 'Humain', 'Male', 'Champion du monde des arts martiaux, célèbre pour avoir "sauvé" la Terre aux yeux du public.', 'Autre', 1), (21, 'Dende', '3.200', '3.200', 'Namek', 'Male', 'Jeune Namek devenu le nouveau Tout-Puissant (Dieu) de la Terre.', 'Guerrier Z', 2), (22, 'C-17', '320.000.000', '40 Quintillion', 'Androïde', 'Male', 'Frère jumeau de C-18, transformé en cyborg par le Dr. Gero.', 'Méchants', 1), (23, 'C-16', '440.000.000', '440.000.000', 'Androïde', 'Male', 'Androïde géant et pacifique qui aime la nature, créé par le Dr. Gero.', 'Méchants', 1), (32, 'Majin Buu', '8 Billion', '100 Trillion', 'Majin', 'Male', 'Créature magique d''une puissance colossale, existant sous plusieurs formes (Gros, Pur, Super).', 'Méchants', NULL), (33, 'Beerus', '102 Billion', '100 Septillion', 'Dieu', 'Male', 'Le Dieu de la Destruction de l''Univers 7.', 'Autre', NULL), (34, 'Whis', '15 Septillion', '110 Septillion', 'Ange', 'Male', 'Ange guide et mentor du Dieu de la Destruction Beerus.', 'Assistant de Beerus', NULL), (35, 'Zeno', '500 Septillion', '500 Septillion', 'Inconnu', 'Male', 'Le Roi de Tout, souverain suprême de tous les univers.', 'Autre', NULL), (38, 'Jiren', '121 Quintillion', '12.1 Septillion', 'Race de Jiren', 'Male', 'Guerrier le plus puissant de l''Univers 11, membre des Pride Troopers.', 'Pride Troopers', NULL), (64, 'C-18', '280.000.000', '300.000.000', 'Androïde', 'Female', 'Sœur de C-17 et épouse de Krillin, une combattante redoutable.', 'Guerrier Z', 1), (65, 'Gogeta', '250 Billion', '15 Septillion', 'Saiyan', 'Male', 'Fusion surpuissante de Goku et Vegeta via la danse de la fusion.', 'Guerrier Z', NULL), (66, 'Vegetto', '180 Billion', '10.8 Septillion', 'Saiyan', 'Male', 'Fusion de Goku et Vegeta via les boucles d''oreilles Potalas.', 'Guerrier Z', NULL), (68, 'Broly', '7 Quadrillion', '11.2 Septillion', 'Saiyan', 'Male', 'Le Saiyan Légendaire doté d''une force brute dévastatrice et incontrôlable.', 'Autre', 3);






INSERT INTO planets (id, name, isDestroyed, description, image) VALUES
(1, 'Terre', false, 'Planète principale où se déroule la série. C''est le foyer des Terriens et des Guerriers Z.', 'https://dragonball-api.com/planetas/Tierra_Dragon_Ball_Z.webp'),
(2, 'Namek', true, 'Planète natale des Nameks. Scénario de batailles importantes et lieu d''obtention des Dragon Balls de Namek.', 'https://dragonball-api.com/planetas/Namek_U7.webp'),
(3, 'Vegeta', true, 'Anciennement connue sous le nom de Planète Plant, c''est la planète d''origine des Saiyans, détruite par Freezer.', 'https://dragonball-api.com/planetas/Planeta_Vegeta_en_Dragon_Ball_Super_Broly.webp'),
(4, 'Freezer No. 79', true, 'Planète artificielle utilisée par Freezer comme base d''opérations et centre de clonage.', 'https://dragonball-api.com/planetas/PlanetaFreezer.webp'),
(5, 'Kanassa', true, 'Habitée par les Kanassans, célèbre pour le combat entre Bardock et les habitants locaux.', 'https://dragonball-api.com/planetas/800px-PlanetKannasa.webp'),
(6, 'Monmar', false, 'Planète où Gohan et Krillin ont trouvé des Dragon Balls pendant la saga Namek.', 'https://dragonball-api.com/planetas/monmar.webp'),
(7, 'Yardrat', false, 'Planète où Goku a appris la technique du Déplacement Instantané (Shunkan Ido).', 'https://dragonball-api.com/planetas/PlanetYardrat.webp'),
(11, 'Planète de Kaio du Nord', false, 'Située au bout du Chemin du Serpent, c''est la petite planète où résident Maître Kaio, Bubbles et Gregory.', 'https://dragonball-api.com/planetas/Planeta_del_Kaio_del_Norte.webp'),
(13, 'Makyo', false, 'Source de puissance des êtres maléfiques, particulièrement liée à Garlic Jr.', 'https://dragonball-api.com/planetas/Makyo_Star.webp'),
(14, 'Babari', false, 'Planète de l''Univers 10 habitée par les Babariens, où Tarble (frère de Vegeta) s''est un jour réfugié.', 'https://dragonball-api.com/planetas/Planeta_Babari.webp'),
(15, 'Tsufur (Universo 6)', false, 'Planète natale de la race Tsufur dans le sixième univers.', 'https://dragonball-api.com/planetas/tsufur.webp'),
(18, 'Autre Monde', false, 'Version du monde des morts dans Dragon Ball. Lieu de résidence des divinités supérieures.', 'https://dragonball-api.com/planetas/otro mundo.webp'),
(19, 'Planète de Beerus', false, 'Corps céleste situé dans le monde des vivants de l''Univers 7, où réside le Dieu de la Destruction.', 'https://dragonball-api.com/planetas/Templo_de_Bills2.webp'),
(20, 'Planète du Grand Kaio', false, 'Lieu où est organisé le tournoi d''arts martiaux de l''Autre Monde.', 'https://dragonball-api.com/planetas/Planetadaikaiosama.webp'),
(21, 'Noyau du Monde', false, 'Planète d''origine des Kaio et des Kaio-shin (espèce Nucleica).', 'https://dragonball-api.com/planetas/nucleo_mundo.webp'),
(22, 'Planète Sacrée', false, 'Planète située dans le Royaume Kaio-shin, séparée du reste du macrocosme de l''Univers 7.', 'https://dragonball-api.com/planetas/Planeta_Sagrado.webp'),
(23, 'Nouvelle Planète Tsufur', false, 'Nouveau foyer des Tsufurs créé par un souhait des Dragon Balls par Baby Vegeta.', 'https://dragonball-api.com/planetas/Nuevo_planeta_plant.webp'),
(24, 'Palais du Roi de Tout', false, 'Temple mobile où résident les deux Zeno (Rois de Tout).', 'https://dragonball-api.com/planetas/Trono_del_Rey_de_Todo.webp'),
(25, 'Univers 11', false, 'Onzième des douze univers, foyer des Pride Troopers.', 'https://dragonball-api.com/planetas/Universo_11.webp');


INSERT INTO characters (id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id) VALUES
(1, 'Goku', '60.000.000', '90 Septillion', 'Saiyan', 'Male', 'Le protagoniste de la série, connu pour son grand pouvoir et sa personnalité amicale. Originellement envoyé sur Terre pour la conquérir, un coup sur la tête a effacé ses instincts violents, faisant de lui le plus grand protecteur de l''univers.', 'https://dragonball-api.com/characters/goku_normal.webp', 'Guerrier Z', 3),
(2, 'Vegeta', '54.000.000', '19.84 Septillion', 'Saiyan', 'Male', 'Prince des Saiyans, initialement un méchant, il rejoint ensuite les Guerriers Z. Il est passé de rival acharné à héros et père de famille vivant sur Terre.', 'https://dragonball-api.com/characters/vegeta_normal.webp', 'Guerrier Z', 3),
(3, 'Piccolo', '2.000.000', '500.000.000', 'Namek', 'Male', 'Réincarnation du démon Piccolo, il est devenu un membre sage et puissant des Guerriers Z et le mentor de Gohan.', 'https://dragonball-api.com/characters/picolo_normal.webp', 'Guerrier Z', 2),
(4, 'Bulma', '0', '0', 'Humain', 'Female', 'Héroïne de la série et génie scientifique. Fille du Dr. Brief, elle est l''inventrice du Radar Dragon et l''épouse de Vegeta.', 'https://dragonball-api.com/characters/bulma.webp', 'Guerrier Z', 1),
(5, 'Freezer', '530.000', '52.71 Septillion', 'Race de Freezer', 'Male', 'Tyran spatial et antagoniste majeur, responsable de la destruction de la planète Vegeta.', 'https://dragonball-api.com/characters/Freezer.webp', 'Armée de Freezer', NULL),
(6, 'Zarbon', '20.000', '30.000', 'Race de Freezer', 'Male', 'L''un des bras droits de Freezer, capable de se transformer pour augmenter sa force.', 'https://dragonball-api.com/characters/zarbon.webp', 'Armée de Freezer', NULL),
(7, 'Dodoria', '18.000', '20.000', 'Race de Freezer', 'Male', 'Guerrier brutal au service de Freezer, connu pour sa cruauté.', 'https://dragonball-api.com/characters/dodoria.webp', 'Armée de Freezer', NULL),
(8, 'Ginyu', '9.000', '25.000', 'Race de Freezer', 'Male', 'Capitaine du Commando Ginyu, l''élite des mercenaires de Freezer.', 'https://dragonball-api.com/characters/ginyu.webp', 'Armée de Freezer', NULL),
(9, 'Cell', '250.000.000', '5 Billion', 'Androïde', 'Male', 'Bio-androïde créé par l''ordinateur du Dr. Gero, contenant les cellules des plus grands guerriers.', 'https://dragonball-api.com/characters/celula.webp', 'Freelance', 1),
(10, 'Gohan', '45.000.000', '40 Septillion', 'Saiyan', 'Male', 'Fils aîné de Goku et Chichi, il possède un potentiel latent incroyable qu''il libère lors des moments critiques.', 'https://dragonball-api.com/characters/gohan.webp', 'Guerrier Z', 1),
(11, 'Krillin', '1.000.000', '1 Billion', 'Humain', 'Male', 'Le meilleur ami de Goku et l''humain le plus fort de la Terre.', 'https://dragonball-api.com/characters/Krilin_Universo7.webp', 'Guerrier Z', 1),
(12, 'Tenshinhan', '2.400.000', '80.000.000', 'Humain', 'Male', 'Maître des arts marciales et ancien rival de Goku, membre dévoué des Guerriers Z.', 'https://dragonball-api.com/characters/Tenshinhan_Universo7.webp', 'Guerrier Z', 1),
(13, 'Yamcha', '1.980.000', '4.000.000', 'Humain', 'Male', 'Ancien bandit du désert devenu un allié des Guerriers Z.', 'https://dragonball-api.com/characters/Final_Yamcha.webp', 'Guerrier Z', 1),
(14, 'Chichi', '0', '0', 'Humain', 'Female', 'Épouse de Goku et mère de Gohan et Goten. Elle est très stricte sur l''éducation de ses fils.', 'https://dragonball-api.com/characters/ChiChi_DBS.webp', 'Guerrier Z', 1),
(15, 'Gotenks', '65.600.000', '34.8 Billion', 'Saiyan', 'Male', 'Résultat de la fusion entre Goten et Trunks via la danse de la fusion.', 'https://dragonball-api.com/characters/Gotenks_Artwork.webp', 'Guerrier Z', 1),
(16, 'Trunks', '50.000.000', '37.4 Septillion', 'Saiyan', 'Male', 'Fils de Vegeta et Bulma, guerrier puissant venu du futur ou de la ligne temporelle présente.', 'https://dragonball-api.com/characters/Trunks_Buu_Artwork.webp', 'Guerrier Z', 1),
(17, 'Tortue Géniale', '500.000', '350.000.000', 'Humain', 'Male', 'Maître des arts martiaux et premier mentor de Goku et Krillin. Inventeur du Kaméhaméha.', 'https://dragonball-api.com/characters/roshi.webp', 'Guerrier Z', 1),
(18, 'Bardock', '450.000', '180.000.000', 'Saiyan', 'Male', 'Père biologique de Goku, un guerrier de classe inférieure qui s''est rebellé contre Freezer.', 'https://dragonball-api.com/characters/Bardock_Artwork.webp', 'Guerrier Z', 3),
(20, 'Mr. Satan', '450', '5.000', 'Humain', 'Male', 'Champion du monde des arts martiaux, célèbre pour avoir "sauvé" la Terre aux yeux du public.', 'https://dragonball-api.com/characters/Mr_Satan_DBSuper.webp', 'Autre', 1),
(21, 'Dende', '3.200', '3.200', 'Namek', 'Male', 'Jeune Namek devenu le nouveau Tout-Puissant (Dieu) de la Terre.', 'https://dragonball-api.com/characters/Dende_Artwork.webp', 'Guerrier Z', 2),
(22, 'C-17', '320.000.000', '40 Quintillion', 'Androïde', 'Male', 'Frère jumeau de C-18, transformé en cyborg par le Dr. Gero.', 'https://dragonball-api.com/characters/17_Artwork.webp', 'Méchants', 1),
(23, 'C-16', '440.000.000', '440.000.000', 'Androïde', 'Male', 'Androïde géant et pacifique qui aime la nature, créé par le Dr. Gero.', 'https://dragonball-api.com/characters/Androide_16.webp', 'Méchants', 1),
(32, 'Majin Buu', '8 Billion', '100 Trillion', 'Majin', 'Male', 'Créature magique d''une puissance colossale, existant sous plusieurs formes (Gros, Pur, Super).', 'https://dragonball-api.com/characters/BuuGordo_Universo7.webp', 'Méchants', NULL),
(33, 'Beerus', '102 Billion', '100 Septillion', 'Dieu', 'Male', 'Le Dieu de la Destruction de l''Univers 7.', 'https://dragonball-api.com/characters/Beerus_DBS_Broly_Artwork.webp', 'Autre', NULL),
(34, 'Whis', '15 Septillion', '110 Septillion', 'Ange', 'Male', 'Ange guide et mentor du Dieu de la Destruction Beerus.', 'https://dragonball-api.com/characters/Whis_DBS_Broly_Artwork.webp', 'Assistant de Beerus', NULL),
(35, 'Zeno', '500 Septillion', '500 Septillion', 'Inconnu', 'Male', 'Le Roi de Tout, souverain suprême de tous les univers.', 'https://dragonball-api.com/characters/Zeno_Artwork.webp', 'Autre', NULL),
(38, 'Jiren', '121 Quintillion', '12.1 Septillion', 'Race de Jiren', 'Male', 'Guerrier le plus puissant de l''Univers 11, membre des Pride Troopers.', 'https://dragonball-api.com/characters/Jiren.webp', 'Pride Troopers', NULL),
(64, 'C-18', '280.000.000', '300.000.000', 'Androïde', 'Female', 'Sœur de C-17 et épouse de Krillin, une combattante redoutable.', 'https://dragonball-api.com/characters/Androide_18_Artwork.webp', 'Guerrier Z', 1),
(65, 'Gogeta', '250 Billion', '15 Septillion', 'Saiyan', 'Male', 'Fusion surpuissante de Goku et Vegeta via la danse de la fusion.', 'https://dragonball-api.com/transformaciones/gogeta.webp', 'Guerrier Z', NULL),
(66, 'Vegetto', '180 Billion', '10.8 Septillion', 'Saiyan', 'Male', 'Fusion de Goku et Vegeta via les boucles d''oreilles Potalas.', 'https://dragonball-api.com/transformaciones/Vegetto.webp', 'Guerrier Z', NULL),
(68, 'Broly', '7 Quadrillion', '11.2 Septillion', 'Saiyan', 'Male', 'Le Saiyan Légendaire doté d''une force brute dévastatrice et incontrôlable.', 'https://dragonball-api.com/transformaciones/Broly_DBS_Base.webp', 'Autre', 3);


INSERT INTO transformations (name, ki, image, character_id) VALUES
-- Transformations de Goku (ID: 1)
('Super Saiyan', '3.000.000.000', 'https://dragonball-api.com/transformaciones/goku_ssj.webp', 1),
('Super Saiyan 2', '6.000.000.000', 'https://dragonball-api.com/transformaciones/goku_ssj2.webp', 1),
('Super Saiyan 3', '24.000.000.000', 'https://dragonball-api.com/transformaciones/goku_ssj3.webp', 1),
('Super Saiyan God', 'Inconnu', 'https://dragonball-api.com/transformaciones/goku_god.webp', 1),
('Super Saiyan Blue', '90 Septillion', 'https://dragonball-api.com/transformaciones/goku_blue.webp', 1),
('Ultra Instinct Maîtrisé', '100 Septillion', 'https://dragonball-api.com/transformaciones/goku_ui.webp', 1),

-- Transformations de Vegeta (ID: 2)
('Super Saiyan', '2.700.000.000', 'https://dragonball-api.com/transformaciones/vegeta_ssj.webp', 2),
('Super Saiyan 2', '5.400.000.000', 'https://dragonball-api.com/transformaciones/vegeta_ssj2.webp', 2),
('Super Saiyan Blue', '19.84 Septillion', 'https://dragonball-api.com/transformaciones/vegeta_blue.webp', 2),
('Super Saiyan Blue Evolution', '20 Septillion', 'https://dragonball-api.com/transformaciones/vegeta_blue_evo.webp', 2),

-- Transformations de Gohan (ID: 10)
('Super Saiyan', '2.250.000.000', 'https://dragonball-api.com/transformaciones/gohan_ssj.webp', 10),
('Super Saiyan 2', '4.500.000.000', 'https://dragonball-api.com/transformaciones/gohan_ssj2.webp', 10),
('Gohan Ultime', '40 Septillion', 'https://dragonball-api.com/transformaciones/gohan_ultimate.webp', 10),

-- Transformations de Freezer (ID: 5)
('Deuxième Forme', '1.000.000', 'https://dragonball-api.com/transformaciones/freezer_2.webp', 5),
('Troisième Forme', '2.000.000', 'https://dragonball-api.com/transformaciones/freezer_3.webp', 5),
('Forme Finale', '120.000.000', 'https://dragonball-api.com/transformaciones/freezer_final.webp', 5),
('Golden Freezer', '52.71 Septillion', 'https://dragonball-api.com/transformaciones/freezer_golden.webp', 5),

-- Transformations de Cell (ID: 9)
('Cell Forme Semi-Parfaite', '500.000.000', 'https://dragonball-api.com/transformaciones/cell_semi.webp', 9),
('Cell Forme Parfaite', '1.000.000.000', 'https://dragonball-api.com/transformaciones/cell_perfect.webp', 9),
('Cell Super Parfait', '5.000.000.000', 'https://dragonball-api.com/transformaciones/cell_super_perfect.webp', 9),

-- Transformations de Broly (ID: 68)
('Super Saiyan', '1.2 Quadrillion', 'https://dragonball-api.com/transformaciones/broly_ssj.webp', 68),
('Super Saiyan Légendaire', '11.2 Septillion', 'https://dragonball-api.com/transformaciones/broly_lssj.webp', 68),

-- Transformations de Trunks (ID: 16)
('Super Saiyan', '2.500.000.000', 'https://dragonball-api.com/transformaciones/trunks_ssj.webp', 16),
('Super Saiyan Rage', '37.4 Septillion', 'https://dragonball-api.com/transformaciones/trunks_rage.webp', 16);