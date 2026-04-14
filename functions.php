<?php


function afficherCharacter($character){

    echo "
    <div style='
        background-image:url(\"images/bg.jpg\");
        background-size:cover;
        background-position:center;
        padding:60px;
        display:flex;
        justify-content:center;
    '>

        <div style='
            background: rgba(0,0,0,0.7);
            color: orange;
            padding:20px;
            border-radius:20px;
            max-width:600px;
            text-align:center;
        '>

            <h2>{$character['name']} (Forme de base)</h2>

            <img src='{$character['image']}' 
                 style='border-radius:30px; width:200px; display:block; margin:auto;'><br>

            <p>{$character['description']}</p>

            <p>KI de base: {$character['ki']}</p>
            <p>KI Maximum: {$character['maxKi']}</p>
            <p>Race: {$character['race']}</p>
            <p>Genre: {$character['gender']}</p>
            <p>Equipe: {$character['affiliation']}</p>
            <p>Planète: {$character['originPlanet']['name']}</p>

            <a href='planet.php?id_planet={$character['planet_id']}'class='btn btn-primary'>
               Infos Planètes
            </a>

        </div>
    </div>
    ";
}
function afficherPlanet($planet,$width = '300px'){

    echo "
    <div style='
        background-image:url(\"images/bg.jpg\");
        background-size:cover;
        background-position:center;
        padding:60px;
        display:flex;
        justify-content:center;
    '>

        <div style='
            background: rgba(0,0,0,0.7);
            color: white;
            padding:20px;
            border-radius:20px;
            max-width:600px;
            text-align:center;
        '>

            <h1>{$planet['name']}</h1>

            <img src='{$planet['image']}' 
                 style='border-radius:30px; width:{$width};'><br>

            <p>{$planet['description']}</p>

            <p>Planète détruite: " . ($planet['isDestroyed'] ? "Oui" : "Non") . "</p>

        </div>
    </div>
    ";
}
?>

