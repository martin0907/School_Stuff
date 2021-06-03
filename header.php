<!DOCTYPE html>
<html lang="sk">
  <head>
    <title>Prepeličie Vajíčka</title>
    <meta name="robots" content="index,follow" /> 
    <meta name="googlebot" content="index,follow,snippet,archive" />
    <link rel= 'stylesheet' href='style.css?v=<?php echo time(); ?>'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
  </head>

  <body>
    <div class="alap">

      <div class="header">
        <h1>Zdravý život sa skrýva vo vajičkách!</h1>
      </div>

        <div class="topnav">
          <a href="index.php" defaultOpen>Domov</a>
          <a href="Zdravie.php">Zdravie</a>
          <a href="Choroby.php">Choroby</a>
          <a href="Odporucanie.php">Odporúčanie</a>
          <a href="Fotky.php">Fotky</a>
          <a href="Cennik.php">Cenník</a>
          <a href="Kontakty.php">Kontakty</a>
          <a href="recept.php">Recepty</a>

          <?php
            if(isset($_SESSION["useruid"])){
              echo "<a href='includes/logout.inc.php'>Odhlasit sa</a>";
            }
            else{
              echo "<a href='signup.php'>Registrácia/Prihlásenie</a>";
            }
          ?>
          
          <a href="index-hu.php"><img src="images/huf2.png"></a>
          <a href="index.php"><img src="images/sk.gif"> </a>
        </div>