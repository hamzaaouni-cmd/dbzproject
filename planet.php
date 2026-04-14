<?php
include 'base.php';
include 'functions.php';

$db = new PDO('mysql:host=localhost;dbname=dbz;charset=utf8', 'root', '');

if (isset($_GET['id_planet'])) {

    $id_planet = $_GET['id_planet'];

    $sql = "SELECT * FROM planets WHERE id = :id";
    $q = $db->prepare($sql);
    $q->execute(['id' => $id_planet]);
    $planet = $q->fetch(PDO::FETCH_ASSOC);

    if ($planet) {

        // 🔥 FOND UNIQUEMENT ICI
        echo "<div style='
            background-image:url(\"images/bg.jpg\");
            background-size:cover;
            background-position:center;
            padding:40px;
            border-radius:20px;
        '>";

        afficherPlanet($planet);

        echo "</div>";

    } else {
        echo "<p style='text-align:center;'>Planète introuvable</p>";
    }

} else {

    // ❌ PAS DE FOND ICI
    $sql = "SELECT * FROM planets";
    $planets = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

    echo "<h2 style='text-align:center;'>Liste de toutes les planètes</h2>";
    echo "<div style='display:flex; flex-wrap:wrap; justify-content:center; gap:20px;'>";

    $i = 0;

    foreach ($planets as $planet) {

        echo "<div style='width:200px; border:1px solid #ccc; padding:10px; text-align:center; background: rgba(255, 175, 64, 0.3); border-radius:10px;'>";
        echo "<div style='width:150px; height:150px; margin:auto; display:flex; align-items:center; justify-content:center; border-radius:20px; overflow:hidden;'>";
        echo "<img src='{$planet['image']}' style='max-width:100%; max-height:100%; object-fit:contain;'>";
        echo "</div><br>";

        echo "<h3>{$planet['name']}</h3>";
        echo "<a href='planet.php?id_planet={$planet['id']}' class='btn btn-primary'>Infos Planète</a>";
        echo "</div>";

        $i++;
        if ($i % 4 == 0) {
            echo "<div style='flex-basis:100%; height:0;'></div>";
        }
    }

    echo "</div>";
}
?>