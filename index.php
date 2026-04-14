<?php
include 'functions.php';
include 'base.php';

$db = new PDO('mysql:host=localhost;dbname=dbz;charset=utf8', 'root', '');

if (isset($_GET['id'])) {

    $id = $_GET['id'];

    $sql = "SELECT * FROM characters WHERE id = :id";
    $q = $db->prepare($sql);
    $q->execute(['id' => $id]);
    $character = $q->fetch(PDO::FETCH_ASSOC);

    if ($character) {

        afficherCharacter($character);

        $sql = "SELECT * FROM transformations WHERE character_id = :id";
        $q = $db->prepare($sql);
        $q->execute(['id' => $id]);
        $transformations = $q->fetchAll(PDO::FETCH_ASSOC);

        if (!empty($transformations)) {

            echo "<h2 style='text-align:center;'>Transformations</h2>";
            echo "<div style='display:flex; flex-wrap:wrap; gap:20px; justify-content:center;'>";

            foreach ($transformations as $transformation) {
                echo "<div style='width:200px; border:1px solid #ccc; padding:10px; text-align:center; background:#f8f8f8; border-radius:10px;'>";

                echo "<div style='width:175px; height:250px; margin:auto; display:flex; align-items:center; justify-content:center; border-radius:20px; overflow:hidden;'>";
                echo "<img src='{$transformation['image']}' style='max-width:100%; max-height:100%; object-fit:contain;'>";
                echo "</div>";

                echo "<p>{$transformation['name']}</p>";
                echo "<p>Ki: {$transformation['ki']}</p>";

                echo "</div>";
            }

            echo "</div>";
        }
            }



} else {

    $db = new PDO('mysql:host=localhost;dbname=dbz;charset=utf8', 'root', '');
    $sql = "SELECT * FROM characters";
    $query = $db->query($sql);
    $characters = $query->fetchAll();

    echo "<h2 style='text-align:center;'>Liste de tous les personnages</h2>";
    echo "<div style='display:flex; flex-wrap:wrap; justify-content:center; gap:20px;'>";

    $i = 0;
    foreach ($characters as $character) {
        echo "<div style='width:200px; border:1px solid #ccc; padding:10px; text-align:center; background:#f8f8f8; border-radius:10px;'>";
        echo "<div style='width:175px; height:250px; margin:auto; display:flex; align-items:center; justify-content:center; border-radius:20px; overflow:hidden;'>";
        echo "<img src='{$character['image']}' style='max-width:100%; max-height:100%; object-fit:contain;'>";
        echo "</div><br>";
        echo "<h3>{$character['name']}</h3>";
        echo "<a href='index.php?id={$character['id']}' class='btn btn-primary'>Infos Personnages</a>";
        echo "</div>";

        $i++;
        if ($i % 4 == 0) {
            echo "<div style='flex-basis:100%; height:0;'></div>";
        }
    }
    echo "</div>";
}
?>