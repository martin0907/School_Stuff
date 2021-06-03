<?php
    date_default_timezone_set('Europe/Bratislava');
    session_start();
    include_once 'header.php';
    include_once 'includes/config.inc.php';
    include_once 'includes/comments.inc.php';

?>
    <div class="cardv">
    <h3>Recepty</h3>

    <div class="cardv_signup" style="padding-top:10px; padding-left:50px;">
        
        <div class="gallery">
            <a href="recept1.php">
            <img src="images/recept1.jpg" alt="Quinoový šalát s maslovou rybou" width="600" height="400">
            </a>
            <div class="desc">Quinoový šalát s maslovou rybou
            </div>
        </div>

        <div class="gallery">
            <a href="recept2.php">
            <img src="images/recept2.jpg" alt="Špenátový krém s prepeličími vajíčkami" width="600" height="400">
            </a>
            <div class="desc">Špenátový krém s prepeličími vajíčkami
            </div>
        </div>

        <div class="gallery">
            <a href="recept6.php">
            <img src="images/recept6.jpg" alt="Srnčí tataráčik s prepeličími očami" width="600" height="400">
            </a>
            <div class="desc">Srnčí tataráčik s prepeličími očami
            </div>
        </div>

        <div class="gallery">
            <a href="recept3.php">
            <img src="images/recept3.jpg" alt="Crostini so špenátom a s prepeličím volským očkom" width="600" height="400">
            </a>
            <div class="desc">Crostini so špenátom a s prepeličím volským očkom
            </div>
        </div>

        <div class="gallery">
            <a href="recept4.php">
            <img src="images/recept4.jpg" alt="Chutný zeleninový šalát s cottagge syrom a prepeličími vajíčkami" width="600" height="400">
            </a>
            <div class="desc">Chutný zeleninový šalát s cottagge syrom a prepeličími vajíčkami
            </div>
        </div>

        <div class="gallery">
            <a href="recept5.php">
            <img src="images/recept5.jpg" alt="Šalát z bažantích pŕs s prepeličím vajíčkom" width="600" height="400">
            </a>
            <div class="desc">Šalát z bažantích pŕs s prepeličím vajíčkom
            </div>
        </div>

        </div>
        <?php
            if(isset($_SESSION["useruid"])){
                echo "<form method='POST' action='".setComments($conn)."'> 
                    <input type='hidden' name='uid' value='".$_SESSION["useruid"]."'>
                    <input type='hidden' name='cdate' value='".date('Y-m-d H:i:s')."'>
                    <textarea name='message'></textarea><br>
                    <button class='com-button' type='submit' name='commentSubmit'>Comment</button>
                    </form>";
                getComments($conn);
            }
            else{
                echo "<p class='need-login'>Musíte byť prihláseny/a ku komentarom</p>";
                echo "<footer>
                        <p class='fszoveg'>Prepeličie vajíčka</p>
                        <p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
                    </footer>";
            }        
        ?>
        
        </div>
        </div>
    </body>
</html>

