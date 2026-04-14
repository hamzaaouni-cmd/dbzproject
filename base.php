<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Site DBZ</title>

    <style>
        body {
            background-color: #272b33;
            background-image: url("illustration.png");
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            color: #fbc02d;
            margin: 0;
            font-family: Arial, sans-serif;

            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* ===== IMAGE EN HAUT ===== */
        .header-img {
            width: 100%;
            text-align: center;
            margin-top: 20px;
        }

        .header-img img {
            max-width: 300px;
            height: auto;
            filter: drop-shadow(0 0 10px orange);
        }

        /* ===== NAV STYLE ONE PIECE / DBZ ===== */
        .nav-db {
            margin-top: 15px;
            background: #e6d3a3;
            padding: 10px 20px;
            border-radius: 15px;
            display: flex;
            gap: 20px;
            justify-content: center;
            align-items: center;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }

        .nav-item {
            width: 55px;
            height: 55px;
            border-radius: 50%;
            background: radial-gradient(circle at 30% 30%, #ffcc33, #ff6600);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            text-decoration: none;
            box-shadow: 0 0 10px orange;
            transition: 0.3s;
        }

        .nav-item:hover {
            transform: scale(1.2);
            box-shadow: 0 0 20px yellow;
        }

        /* ===== MENU CENTRÉ (ACCUEIL SEULEMENT) ===== */
        .menu-jeu {
            margin-top: 80px;
            width: 60%;
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        /* ===== CARDS ===== */
        .card {
            background: linear-gradient(90deg, #ff6a00, #ffb300);
            padding: 25px;
            border-radius: 20px;
            display: flex;
            align-items: center;
            gap: 20px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 0 20px orange;
            text-decoration: none;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 0 30px yellow;
        }

        /* ICÔNE DRAGON BALL */
        .icon {
            width: 70px;
            height: 70px;
            border-radius: 50%;
            background: radial-gradient(circle at 30% 30%, #ffcc33, #ff6600);
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: red;
            font-size: 20px;
            box-shadow: 0 0 15px orange;
        }

        /* TEXTE */
        .card-text {
            color: white;
            text-align: center;
            width: 100%;
        }

        .card-text h2 {
            margin: 0;
            font-size: 22px;
        }

        .card-text p {
            margin: 5px 0 0 0;
            font-size: 14px;
        }
        /* ===== JEU ===== */
        .game {
            text-align: center;
            margin-top: 40px;
        }

        .target {
            width: 200px;
            border-radius: 20px;
        }

        #myInput {
            padding: 10px;
            border-radius: 10px;
            border: none;
            margin-top: 10px;
        }

        .btn {
            margin-top: 10px;
            padding: 10px;
            border-radius: 10px;
            background: orange;
            border: none;
            cursor: pointer;
        }

        /* suggestions */
        .suggestions {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }

        .suggestion {
            background: rgba(0,0,0,0.6);
            padding: 10px;
            border-radius: 15px;
            cursor: pointer;
            transition: 0.3s;
            text-align: center;
        }

        .suggestion img {
            width: 100px;
            height: 100px;
            object-fit: contain;
        }

        .suggestion:hover {
            transform: scale(1.1);
        }

        /* essais */
        #triesContainer {
            margin-top: 20px;
        }

        .try-row {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        /* cases comme ton screen */
        .box {
            padding: 10px;
            border-radius: 10px;
            min-width: 100px;
            color: white;
            font-size: 14px;
        }

        .green { background: #2ecc71; }
        .red { background: #e74c3c; }
        /* titres du tableau */
        .header-row {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 20px;
        }

        .box-title {
            min-width: 100px;
            padding: 10px;
            border-radius: 10px;
            background: #444;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>

<body>

<!-- ===== IMAGE EN HAUT ===== -->
<div class="header-img">
    <img src="ChatGPT_Image_10_avr._2026__13_56_09-removebg-preview.png" alt="logo DBZ">
</div>

<!-- ===== NAVIGATION ===== -->
<div class="nav-db">
    <a href="Acceuil.php" class="nav-item">🏠</a>
    <a href="index.php" class="nav-item">👤</a>
    <a href="planet.php" class="nav-item">🌍</a>
    <a href="jeu.php" class="nav-item">🎮</a>
</div>