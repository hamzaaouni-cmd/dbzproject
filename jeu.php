<?php
include 'base.php';

// CONNEXION
$db = new PDO('mysql:host=localhost;dbname=dbz;charset=utf8', 'root', '');

// JOIN avec planète
$sql = "
SELECT 
    characters.*,
    planets.name AS planet_name
FROM characters
LEFT JOIN planets ON characters.planet_id = planets.id
";

$characters = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

$today = date('Y-m-d');
$seed = strtotime($today);

srand($seed);
$index = rand(0, count($characters) - 1);
$single = $characters[$index];
?>

<div class="game">

    <!-- ===== HAUT ===== -->
    <div class="top-section">
        <h2>Qui est-ce ?</h2>

        <img id="targetImg" src="" class="target"><br>

        <input id="myInput" type="text" placeholder="Cherche un personnage..." oninput="getInputValue()">

        <button onclick="miFunction()" class="btn">Indice</button>

        <div id="displayText" class="suggestions"></div>
    </div>

    <!-- ===== BAS ===== -->
    <div class="bottom-section">
        <h3>Essais :</h3>

        <div class="header-row">
            <div class="box-title">Nom</div>
            <div class="box-title">Race</div>
            <div class="box-title">Genre</div>
            <div class="box-title">Affiliation</div>
            <div class="box-title">Planète</div>
        </div>

        <div id="triesContainer"></div>
    </div>

</div>

<style>

    /* ===== GLOBAL ===== */
    .game{
        margin-top:30px;
        text-align:center;
    }

    /* ===== HAUT ===== */
    .top-section{
        background: rgba(78, 43, 7, 0.8);
        padding:25px;
        border-radius:20px;
        display:block;
        width:fit-content;
        margin:0 auto;
    }

    /* ===== BAS ===== */
    .bottom-section{
        background: rgba(78, 43, 7, 0.8);
        padding:25px;
        border-radius:20px;
        margin-top:25px;
        display:block;
        width:fit-content;
        margin-left:auto;
        margin-right:auto;
    }

    /* INPUT */
    #myInput{
        padding:10px;
        border-radius:10px;
        border:none;
        width:250px;
    }

    /* BUTTON */
    .btn{
        margin-top:10px;
        padding:10px 15px;
        border:none;
        border-radius:10px;
        background:orange;
        cursor:pointer;
    }

    /* IMAGE */
    .target{
        width:200px;
        border-radius:20px;
    }

    /* SUGGESTIONS */
    .suggestions{
        display:flex;
        justify-content:center;
        gap:15px;
        margin-top:20px;
        flex-wrap:wrap;
    }

    .suggestion{
        cursor:pointer;
        text-align:center;
    }

    .suggestion img{
        width:80px;
        height:80px;
        object-fit:contain;
    }

    /* HEADER */
    .header-row{
        display:flex;
        justify-content:center;
        gap:10px;
        margin-top:20px;
    }

    .box-title{
        width:120px;
        background:#333;
        color:white;
        padding:10px;
        border-radius:10px;
    }

    /* ROW */
    .try-row{
        display:flex;
        justify-content:center;
        gap:10px;
        margin-top:10px;
    }

    /* BOX */
    .box{
        width:120px;
        padding:10px;
        border-radius:10px;
        color:white;
    }

    /* COLORS */
    .green{ background:#2ecc71; }
    .red{ background:#e74c3c; }

    /* FLÈCHES */
    .arrow-up::after{
        content:" ↑";
    }

    .arrow-down::after{
        content:" ↓";
    }

</style>

<script>

    let single = <?php echo json_encode($single); ?>;
    let all = <?php echo json_encode($characters); ?>;

    let tries = 0;
    let maxTries = 10;

    // INDICE
    function miFunction(){
        alert("Indice : Race = " + (single.race || "?"));
    }

    // COMPARAISON
    function compareValue(a,b){
        if(!a || !b) return "red";

        if(a == b) return "green";

        if(!isNaN(a) && !isNaN(b)){
            return a > b ? "red arrow-down" : "red arrow-up";
        }

        return "red";
    }

    function getInputValue(){

        let input = document.getElementById("myInput").value.toLowerCase();

        let result = all.filter(el =>
            el.name.toLowerCase().includes(input)
        );

        let container = document.getElementById("displayText");
        container.innerHTML = "";

        if(input.length > 0){

            result.forEach(r => {

                let item = document.createElement("div");
                item.className = "suggestion";

                item.innerHTML =
                    "<img src='"+r.image+"'>" +
                    "<p>"+r.name+"</p>";

                item.onclick = function(){

                    tries++;

                    let triesContainer = document.getElementById("triesContainer");

                    let row = document.createElement("div");
                    row.className = "try-row";

                    row.innerHTML =
                        "<div class='box "+compareValue(r.name,single.name)+"'>"+r.name+"</div>" +
                        "<div class='box "+compareValue(r.race,single.race)+"'>"+(r.race||"?")+"</div>" +
                        "<div class='box "+compareValue(r.gender,single.gender)+"'>"+(r.gender||"?")+"</div>" +
                        "<div class='box "+compareValue(r.affiliation,single.affiliation)+"'>"+(r.affiliation||"?")+"</div>" +
                        "<div class='box "+compareValue(r.planet_name,single.planet_name)+"'>"+(r.planet_name||"?")+"</div>";

                    triesContainer.appendChild(row);

                    // WIN
                    if(r.name === single.name){
                        alert("🎉 Bravo !");
                        document.getElementById("targetImg").src = single.image;
                    }

                    // LOSE
                    if(tries >= maxTries){
                        alert("❌ Perdu ! C'était " + single.name);
                        document.getElementById("targetImg").src = single.image;
                    }

                };

                container.appendChild(item);
            });
        }
    }

</script>