CREATE TABLE dbz.planets (
	id int(11) NULL,
	name varchar(100) NULL,
	isDestroyed tinyint(1) NULL,
	description text NULL,
	image varchar(255) NULL,
	deletedAt datetime NULL
)
ENGINE=InnoDB;



CREATE TABLE dbz.`characters` (
	id int(11) NULL,
	name varchar(100) NULL,
	ki varchar(50) NULL,
	maxKi varchar(50) NULL,
	race varchar(50) NULL,
	gender varchar(20) NULL,
	description text NULL,
	image varchar(255) NULL,
	affiliation varchar(100) NULL,
	planet_id int(11) NULL,
	deletedAt datetime NULL
)
ENGINE=InnoDB;

CREATE TABLE dbz.transformations (
	id int(11) NULL,
	name varchar(100) NULL,
	image varchar(255) NULL,
	ki varchar(50) NULL,
	character_id int(11) NULL,
	deletedAt datetime NULL
)
ENGINE=InnoDB;

INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(1, 'Namek', 1, 'Planète natale des Nameks. Scénario de batailles importantes et lieu d''obtention des Dragon Balls de Namek.', 'https://dragonball-api.com/planetas/Namek_U7.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(2, 'Terre', 0, 'Planète principale où se déroule la série. C''est le foyer des Terriens et des Guerriers Z.', 'https://dragonball-api.com/planetas/Tierra_Dragon_Ball_Z.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(3, 'Vegeta', 1, 'Anciennement connue sous le nom de Planète Plant, c''est la planète d''origine des Saiyans, détruite par Freezer.', 'https://dragonball-api.com/planetas/Planeta_Vegeta_en_Dragon_Ball_Super_Broly.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(4, 'Freezer No. 79', 1, 'Planète artificielle utilisée par Freezer comme base d''opérations et centre de clonage.', 'https://dragonball-api.com/planetas/PlanetaFreezer.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(5, 'Kanassa', 1, 'Habitée par les Kanassans, célèbre pour le combat entre Bardock et les habitants locaux.', 'https://dragonball-api.com/planetas/800px-PlanetKannasa.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(6, 'Monmar', 0, 'Planète où Gohan et Krillin ont trouvé des Dragon Balls pendant la saga Namek.', 'https://dragonball-api.com/planetas/monmar.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(7, 'Yardrat', 0, 'Planète où Goku a appris la technique du Déplacement Instantané (Shunkan Ido).', 'https://dragonball-api.com/planetas/PlanetYardrat.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(11, 'Planète de Kaio du Nord', 0, 'Située au bout du Chemin du Serpent, c''est la petite planète où résident Maître Kaio, Bubbles et Gregory.', 'https://dragonball-api.com/planetas/Planeta_del_Kaio_del_Norte.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(13, 'Makyo', 0, 'Source de puissance des êtres maléfiques, particulièrement liée à Garlic Jr.', 'https://dragonball-api.com/planetas/Makyo_Star.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(14, 'Babari', 0, 'Planète de l''Univers 10 habitée par les Babariens, où Tarble (frère de Vegeta) s''est un jour réfugié.', 'https://dragonball-api.com/planetas/Planeta_Babari.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(15, 'Tsufur (Univers 6)', 0, 'Planète natale de la race Tsufur dans le sixième univers.', 'https://dragonball-api.com/planetas/tsufur.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(18, 'Autre Monde', 0, 'Version du monde des morts dans Dragon Ball. Lieu de résidence des divinités supérieures.', 'https://dragonball-api.com/planetas/otro mundo.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(19, 'Planète de Beerus', 0, 'Corps céleste situé dans le monde des vivants de l''Univers 7, où réside le Dieu de la Destruction.', 'https://dragonball-api.com/planetas/Templo_de_Bills2.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(20, 'Planète du Grand Kaio', 0, 'Lieu où est organisé le tournoi d''arts martiaux de l''Autre Monde.', 'https://dragonball-api.com/planetas/Planetadaikaiosama.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(21, 'Noyau du Monde', 0, 'Planète d''origine des Kaio et des Kaio-shin (espèce Nucleica).', 'https://dragonball-api.com/planetas/nucleo_mundo.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(22, 'Planète Sacrée', 0, 'Planète située dans le Royaume Kaio-shin, séparée du reste du macrocosme de l''Univers 7.', 'https://dragonball-api.com/planetas/Planeta_Sagrado.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(23, 'Nouvelle Planète Tsufur', 0, 'Nouveau foyer des Tsufurs créé par un souhait des Dragon Balls par Baby Vegeta.', 'https://dragonball-api.com/planetas/Nuevo_planeta_plant.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(24, 'Palais du Roi de Tout', 0, 'Temple mobile où résident les deux Zeno (Rois de Tout).', 'https://dragonball-api.com/planetas/Trono_del_Rey_de_Todo.webp', NULL);
INSERT INTO dbz.planets
(id, name, isDestroyed, description, image, deletedAt)
VALUES(25, 'Univers 11', 0, 'Onzième des douze univers, foyer des Pride Troopers.', 'https://dragonball-api.com/planetas/Universo_11.webp', NULL);


INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(1, 'Goku', '60.000.000', '90 000 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Le protagoniste de la série, connu pour son grand pouvoir et sa personnalité amicale. Originellement envoyé sur Terre pour la conquérir, un coup sur la tête a effacé ses instincts violents, faisant de lui le plus grand protecteur de l''univers.', 'https://dragonball-api.com/characters/goku_normal.webp', 'Guerrier Z', 3, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(2, 'Vegeta', '54.000.000', '19 840 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Prince des Saiyans, initialement un méchant, il rejoint ensuite les Guerriers Z. Il est passé de rival acharné à héros et père de famille vivant sur Terre.', 'https://dragonball-api.com/characters/vegeta_normal.webp', 'Guerrier Z', 3, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(3, 'Piccolo', '2.000.000', '500 000 000', 'Namek', 'Male', 'Réincarnation du démon Piccolo, il est devenu un membre sage et puissant des Guerriers Z et le mentor de Gohan.', 'https://dragonball-api.com/characters/picolo_normal.webp', 'Guerrier Z', 1, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(4, 'Bulma', '0', '0', 'Humain', 'Female', 'Héroïne de la série et génie scientifique. Fille du Dr. Brief, elle est l''inventrice du Radar Dragon et l''épouse de Vegeta.', 'https://dragonball-api.com/characters/bulma.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(5, 'Freezer', '530.000', '52 710 000 000 000 000 000 000 000', 'Race de Freezer', 'Male', 'Tyran spatial et antagoniste majeur, responsable de la destruction de la planète Vegeta.', 'https://dragonball-api.com/characters/Freezer.webp', 'Armée de Freezer', 4, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(6, 'Zarbon', '20.000', '30 000', 'Race de Freezer', 'Male', 'L''un des bras droits de Freezer, capable de se transformer pour augmenter sa force.', 'https://dragonball-api.com/characters/zarbon.webp', 'Armée de Freezer', 4, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(7, 'Dodoria', '18.000', '20 000', 'Race de Freezer', 'Male', 'Guerrier brutal au service de Freezer, connu pour sa cruauté.', 'https://dragonball-api.com/characters/dodoria.webp', 'Armée de Freezer', 4, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(8, 'Ginyu', '9.000', '25 000', 'Race de Freezer', 'Male', 'Capitaine du Commando Ginyu, l''élite des mercenaires de Freezer.', 'https://dragonball-api.com/characters/ginyu.webp', 'Armée de Freezer', 4, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(9, 'Cell', '250.000.000', '5 000 000 000', 'Androïde', 'Male', 'Bio-androïde créé par l''ordinateur du Dr. Gero, contenant les cellules des plus grands guerriers.', 'https://dragonball-api.com/characters/celula.webp', 'Freelance', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(10, 'Gohan', '45.000.000', '40 000 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Fils aîné de Goku et Chichi, il possède un potentiel latent incroyable qu''il libère lors des moments critiques.', 'https://dragonball-api.com/characters/gohan.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(11, 'Krillin', '1.000.000', '1 000 000 000', 'Humain', 'Male', 'Le meilleur ami de Goku et l''humain le plus fort de la Terre.', 'https://dragonball-api.com/characters/Krilin_Universo7.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(12, 'Tenshinhan', '2.400.000', '80 000 000', 'Humain', 'Male', 'Maître des arts marciales et ancien rival de Goku, membre dévoué des Guerriers Z.', 'https://dragonball-api.com/characters/Tenshinhan_Universo7.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(13, 'Yamcha', '1.980.000', '4 000 000', 'Humain', 'Male', 'Ancien bandit du désert devenu un allié des Guerriers Z.', 'https://dragonball-api.com/characters/Final_Yamcha.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(14, 'Chichi', '0', '0', 'Humain', 'Female', 'Épouse de Goku et mère de Gohan et Goten. Elle est très stricte sur l''éducation de ses fils.', 'https://dragonball-api.com/characters/ChiChi_DBS.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(15, 'Gotenks', '65.600.000', '34 800 000 000', 'Saiyan', 'Male', 'Résultat de la fusion entre Goten et Trunks via la danse de la fusion.', 'https://dragonball-api.com/characters/Gotenks_Artwork.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(16, 'Trunks (du futur)', '50.000.000', '37 400 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Fils de Vegeta et Bulma, guerrier puissant venu du futur ou de la ligne temporelle présente.', 'https://static.wikia.nocookie.net/charabattles/images/2/21/MTRUNKF.png/revision/latest?cb=20180114211314&path-prefix=fr', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(17, 'Tortue Géniale', '500.000', '350 000 000', 'Humain', 'Male', 'Maître des arts martiaux et premier mentor de Goku et Krillin. Inventeur du Kaméhaméha.', 'https://dragonball-api.com/characters/roshi.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(18, 'Bardock', '450.000', '180 000 000', 'Saiyan', 'Male', 'Père biologique de Goku, un guerrier de classe inférieure qui s''est rebellé contre Freezer.', 'https://dragonball-api.com/characters/Bardock_Artwork.webp', 'Guerrier Z', 3, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(20, 'Mr. Satan', '450', '5 000', 'Humain', 'Male', 'Champion du monde des arts martiaux, célèbre pour avoir "sauvé" la Terre aux yeux du public.', 'https://dragonball-api.com/characters/Mr_Satan_DBSuper.webp', 'Autre', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(21, 'Dende', '3.200', '3 200', 'Namek', 'Male', 'Jeune Namek devenu le nouveau Tout-Puissant (Dieu) de la Terre.', 'https://dragonball-api.com/characters/Dende_Artwork.webp', 'Guerrier Z', 1, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(22, 'C-17', '320.000.000', '40 000 000 000 000 000 000', 'Androïde', 'Male', 'Frère jumeau de C-18, transformé en cyborg par le Dr. Gero.', 'https://dragonball-api.com/characters/17_Artwork.webp', 'Méchants', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(23, 'C-16', '440.000.000', '440 000 000', 'Androïde', 'Male', 'Androïde géant et pacifique qui aime la nature, créé par le Dr. Gero.', 'https://dragonball-api.com/characters/Androide_16.webp', 'Méchants', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(24, 'Majin Buu', '8 Billion', '100 000 000 000 000', 'Majin', 'Male', 'Créature magique d''une puissance colossale, existant sous plusieurs formes (Gros, Pur, Super).', 'https://dragonball-api.com/characters/BuuGordo_Universo7.webp', 'Méchants', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(25, 'Beerus', '102 Billion', '100 000 000 000 000 000 000 000 000', 'Dieu', 'Male', 'Le Dieu de la Destruction de l''Univers 7.', 'https://dragonball-api.com/characters/Beerus_DBS_Broly_Artwork.webp', 'Autre', 19, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(26, 'Whis', '15 Septillion', '110 000 000 000 000 000 000 000 000', 'Ange', 'Male', 'Ange guide et mentor du Dieu de la Destruction Beerus.', 'https://dragonball-api.com/characters/Whis_DBS_Broly_Artwork.webp', 'Assistant de Beerus', 19, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(27, 'Zeno', '500 Septillion', '500 000 000 000 000 000 000 000 000', 'Inconnu', 'Male', 'Le Roi de Tout, souverain suprême de tous les univers.', 'https://dragonball-api.com/characters/Zeno_Artwork.webp', 'Autre', 24, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(28, 'Jiren', '121 Quintillion', '12 100 000 000 000 000 000 000 000', 'Race de Jiren', 'Male', 'Guerrier le plus puissant de l''Univers 11, membre des Pride Troopers.', 'https://dragonball-api.com/characters/Jiren.webp', 'Pride Troopers', 25, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(29, 'C-18', '280.000.000', '300 000 000', 'Androïde', 'Female', 'Sœur de C-17 et épouse de Krillin, une combattante redoutable.', 'https://dragonball-api.com/characters/Androide_18_Artwork.webp', 'Guerrier Z', 2, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(30, 'Gogeta', '250 Billion', '15 000 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Fusion surpuissante de Goku et Vegeta via la danse de la fusion.', 'https://dragonball-api.com/transformaciones/gogeta.webp', 'Guerrier Z', 3, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(31, 'Vegetto', '180 Billion', '10 800 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Fusion surpuissante de Goku et Vegeta via les boucles d''oreilles Potalas.', 'https://dragonball-api.com/transformaciones/Vegetto.webp', 'Guerrier Z', 3, NULL);
INSERT INTO dbz.`characters`
(id, name, ki, maxKi, race, gender, description, image, affiliation, planet_id, deletedAt)
VALUES(32, 'Broly', '7 Quadrillion', '11 200 000 000 000 000 000 000 000', 'Saiyan', 'Male', 'Le Saiyan Légendaire doté d''une force brute dévastatrice et incontrôlable.', 'https://dragonball-api.com/transformaciones/Broly_DBS_Base.webp', 'Autre', 3, NULL);



INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(25, 'Super Saiyan', 'https://dragonball-api.com/transformaciones/goku_ssj.webp', '3.000.000.000', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(26, 'Super Saiyan 2', 'https://dragonball-api.com/transformaciones/goku_ssj2.webp', '6.000.000.000', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(27, 'Super Saiyan 3', 'https://dragonball-api.com/transformaciones/goku_ssj3.webp', '24.000.000.000', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(28, 'Super Saiyan God', 'https://dbz-dokkanbattle.com/img/character/card/1026250/card_1026250_character.png?v=1', 'Inconnu', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(29, 'Super Saiyan Blue', 'https://clipart-library.com/new_gallery/31-318976_png-image-with-transparent-background-goku-ssj-blue.png', '90 Septillion', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(30, 'Ultra Instinct Maîtrisé', 'https://static.wikia.nocookie.net/dragonball/images/1/1b/Son_Gok%C3%BB_MUI_%28Artwork%29.png/revision/latest?cb=20181212171603&path-prefix=fr', '100 Septillion', 1, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(31, 'Super Saiyan', 'https://dragonball-api.com/transformaciones/vegeta SSJ (2).webp', '2.700.000.000', 2, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(32, 'Super Saiyan 2', 'https://dragonball-api.com/transformaciones/vegeta SSJ2.webp', '5.400.000.000', 2, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(33, 'Super Saiyan Blue', 'https://i.pinimg.com/736x/46/26/d5/4626d5df94e193b818e91061e0ef924f.jpg', '19.84 Septillion', 2, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(34, 'Super Saiyan Blue Evolution', 'https://static.wikia.nocookie.net/dragonball/images/a/a9/SSGSSE_Artwork_Dokkan.png/revision/latest?cb=20190224185817&path-prefix=fr', '20 Septillion', 2, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(35, 'Super Saiyan', 'https://i.pinimg.com/564x/86/74/7f/86747fc30fb75c606d279cb8e22a2993.jpg', '2.250.000.000', 10, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(36, 'Super Saiyan 2', 'https://dreamway.fr/cdn/shop/files/Tableau-gohan-ssj2.webp?v=1768668155', '4.500.000.000', 10, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(37, 'Gohan Ultime', 'https://static.wikia.nocookie.net/dragonball/images/6/62/Ultimate_Gohan-0.png/revision/latest?cb=20180830214341&path-prefix=fr', '40 Septillion', 10, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(38, 'Deuxième Forme', 'https://static.wikia.nocookie.net/dragonball/images/b/be/Freezer-fictional-character.png/revision/latest/scale-to-width/360?cb=20230410184150&path-prefix=fr', '1.000.000', 5, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(39, 'Troisième Forme', 'https://static.wikia.nocookie.net/dragonball/images/c/c3/Freezer3rdform.png/revision/latest/scale-to-width/360?cb=20170720190546&path-prefix=fr', '2.000.000', 5, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(40, 'Forme Finale', 'https://static.wikia.nocookie.net/dragonball/images/1/19/Freezer_%28Saga_de_la_Surivie_de_l%27Univers%29.png/revision/latest?cb=20170513204755&path-prefix=fr', '120.000.000', 5, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(41, 'Golden Freezer', 'https://static.wikia.nocookie.net/dragonball/images/9/93/Golden_Freezer_%28Artwork%29_%28Super_Dragon_Ball_Heroes%29.png/revision/latest?cb=20170703183534&path-prefix=fr', '52.71 Septillion', 5, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(42, 'Cell Première Forme ', 'https://static.wikia.nocookie.net/dragonball/images/0/00/Cell_%281%C3%A8re_forme%29.png/revision/latest?cb=20190217200617&path-prefix=fr', '500.000.000', 9, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(43, 'Cell Deuxieme Forme ', 'https://static.wikia.nocookie.net/dragonball/images/3/3c/Cell_2nd_form.png/revision/latest/scale-to-width/360?cb=20170726201500&path-prefix=fr', '1.000.000.000', 9, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(44, 'Cell Forme Parfait', 'https://static.wikia.nocookie.net/dragonball/images/9/94/Cell_%28Forme_parfaite%29.png/revision/latest/scale-to-width/360?cb=20190217200359&path-prefix=fr', '5.000.000.000', 9, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(45, 'Super Saiyan', 'https://static.wikia.nocookie.net/dragonball/images/d/d3/Broly_%28DBS_-_Super_Saiyan%29.png/revision/latest/scale-to-width-down/340?cb=20181212234655&path-prefix=fr', '1.2 Quadrillion', 32, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(46, 'Super Saiyan Légendaire', 'https://static.wikia.nocookie.net/dragonball/images/3/38/Broly_%28DBS%29_Transform%C3%A9.png/revision/latest?cb=20180731173425&path-prefix=fr', '11.2 Septillion', 32, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(47, 'Super Saiyan', 'https://static.wikia.nocookie.net/dragonball/images/5/56/Trunks_du_Futur_%28Super_Saiyan_2%29_%28Artwork%29.png/revision/latest/scale-to-width-down/340?cb=20190426224552&path-prefix=fr', '2.500.000.000', 16, NULL);
INSERT INTO dbz.transformations
(id, name, image, ki, character_id, deletedAt)
VALUES(48, 'Super Saiyan Rage', 'https://static.wikia.nocookie.net/dragonball/images/f/f7/SSR_Trunks_Dokkan1.png/revision/latest?cb=20170727230442&path-prefix=fr', '37.4 Septillion', 16, NULL);