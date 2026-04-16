# 🐉 DragonBallDL - DBZ Project

![DragonBalldle Logo](ChatGPT_Image_10_avr._2026__13_56_09-removebg-preview.png)

Une application web interactive pour les fans de Dragon Ball Z. Explorez les guerriers, découvrez les planètes de l'univers et testez vos connaissances avec le mini-jeu **DragonBalldle**.

## 🌟 Fonctionnalités

* **Encyclopédie des Personnages** : Liste détaillée des guerriers (Ki, Race, Affiliation) et leurs transformations associées.
* **Exploration Spatiale** : Base de données des planètes (Terre, Namek, etc.) avec descriptions et statuts (détruite ou non).
* **Mini-jeu "DragonBalldle"** : Devinez le personnage mystère en moins de 10 essais.
    * Système d'indices visuels (Vert/Rouge) basé sur les attributs.
    * Indicateurs de valeur (Flèches haut/bas pour les statistiques numériques).
    * Suggestions dynamiques lors de la saisie.

## 🛠️ Stack Technique

* **Backend** : PHP 8.x
* **Base de données** : MySQL (PDO utilisé pour les requêtes sécurisées)
* **Frontend** : HTML5, CSS3 (Flexbox, Gradients)
* **Logique de jeu** : JavaScript (ES6+)

## 📂 Structure du Projet

* `index.php` : Gestion de l'affichage des personnages et des transformations.
* `jeu.php` : Logique et interface du jeu de devinettes.
* `planet.php` : Galerie et détails des planètes de l'univers DBZ.
* `base.php` : Layout principal (Header, Navigation, Styles globaux).
* `functions.php` : Fonctions utilitaires pour le rendu HTML des fiches.
* `Acceuil.php` : Menu principal avec navigation par cartes.

## ⚙️ Installation

1.  **Prérequis** : Un serveur local (XAMPP, WAMP, ou MAMP).
2.  **Base de données** :
    * Créez une base de données nommée `dbz` dans votre interface phpMyAdmin.
    * Importez votre fichier SQL (assurez-vous d'avoir les tables `characters`, `planets` et `transformations`).
3.  **Configuration** :
    * Vérifiez la connexion dans `index.php` et `jeu.php` :
        ```php
        $db = new PDO('mysql:host=localhost;dbname=dbz;charset=utf8', 'root', '');
        ```
4.  **Lancement** : Placez le dossier dans `htdocs` ou `www` et accédez à `http://localhost/dbzproject/Acceuil.php`.

## 🎮 Aperçu du Jeu

Le jeu compare vos propositions avec le personnage du jour (ou aléatoire) selon plusieurs critères :
**Nom** | **Race** | **Genre** | **Affiliation** | **Planète d'origine**

> [!TIP]
> Si une case devient **Verte**, vous avez trouvé l'attribut correct ! Si elle est **Rouge**, continuez à chercher.

---
*Projet développé par [Hamza Aouni](https://github.com/hamzaaouni-cmd)*
