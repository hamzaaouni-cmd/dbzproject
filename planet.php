<?php
include 'base.php';
include 'functions.php';

if (isset($_GET['id_planet'])) {
    $id_planet = $_GET['id_planet'];
    $url = "https://dragonball-api.com/api/planets/$id_planet";

    $response = @file_get_contents($url);
    if ($response === FALSE) {
        die("Erreur lors de l'appel à l'API pour la planète.");
    }

    $planet = json_decode($response, true);

    afficherPlanet($planet);

} else {
    $url = "https://dragonball-api.com/api/planets?limit=100";
    $response = @file_get_contents($url);

    if ($response === FALSE) {
        die("Erreur lors de l'appel à l'API pour les planètes.");
    }

    $data = json_decode($response, true);
    $planets = isset($data['items']) ? $data['items'] : [];

    echo "<h2 style='text-align:center;'>Liste de toutes les planètes</h2>";
    echo "<div style='display:flex; flex-wrap:wrap; justify-content:center; gap:20px;'>";

    $i = 0;
    foreach ($planets as $planet) {
        echo "<div style='width:200px; border:1px solid #ccc; padding:10px; text-align:center; background:#f8f8f8; border-radius:10px;'>";

        // Conteneur fixe pour l'image de la planète
        echo "<div style='width:150px; height:150px; margin:auto; display:flex; align-items:center; justify-content:center; border-radius:20px; overflow:hidden;'>";
        echo "<img src='{$planet['image']}' style='max-width:100%; max-height:100%; object-fit:contain;' alt='image'>";
        echo "</div><br>";

        echo "<h3>{$planet['name']}</h3>";
        echo "<a href='planet.php?id_planet={$planet['id']}' class='btn btn-primary'>Infos Planètes</a>";
        echo "</div>";

        $i++;
        if ($i % 4 == 0) {
            echo "<div style='flex-basis:100%; height:0;'></div>";
        }
    }

    echo "</div>";
}
