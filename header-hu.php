<!DOCTYPE html>
  <html lang='hu'>
    <head>
    <title>Fürj Tojások</title>
    <link rel= 'stylesheet' href='style.css?v=<?php echo time(); ?>'>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta charset="utf-8">
  </head>
  
  <body>
    <div class="alap">

      <div class="header">
        <h1>Egészséges élet a tojásokban rejlik!</h1>
      </div>

      <div class="topnav">
        <a href="index-hu.php" defaultOpen>Fő oldal</a>
        <a href="Zdravie-hu.php">Egészség</a>
        <a href="Choroby-hu.php">Betegségek</a>
        <a href="Odporucanie-hu.php">Ajánlatok</a>
        <a href="Fotky-hu.php">Képek</a>
        <a href="Cennik-hu.php">Árak</a>
        <a href="Kontakty-hu.php">Kontakt</a>
        <a href="recept-hu.php">Receptek</a>
        <?php
          if(isset($_SESSION["useruid"])){
            echo "<a href='includes/logout.inc.php'>Kijelentkezes";
          }
          else{
            echo '<a href="signup-hu.php">Regisztráció/Bejelentkezés</a>';
          }
        ?>
        <a href="index-hu.php" ><img src="images/huf2.png"></a>
        <a href="index.php" ><img src="images/sk.gif"> </a>
      </div>