<?php
    date_default_timezone_set('Europe/Bratislava');
    session_start();
    include_once 'header-hu.php';
    include_once 'includes/config.inc.php';
    include_once 'includes/comments.inc.php';

?>
    <div class="cardv">
    <h3>Receptek</h3>

    <div class="cardv_signup" style="padding-top:10px; padding-left:50px;">
        
        <div class="gallery">
            <a href="recept1-hu.php">
            <img src="images/recept1.jpg" alt="Quinoový šalát s maslovou rybou" width="600" height="400">
            </a>
            <div class="desc">Quinoa saláta vajas hallal
            </div>
        </div>

        <div class="gallery">
            <a href="recept2-hu.php">
            <img src="images/recept2.jpg" alt="Špenátový krém s prepeličími vajíčkami" width="600" height="400">
            </a>
            <div class="desc">Spenót krém fürj tojással
            </div>
        </div>

        <div class="gallery">
            <a href="recept6-hu.php">
            <img src="images/recept6.jpg" alt="Srnčí tataráčik s prepeličími očami" width="600" height="400">
            </a>
            <div class="desc">Öz tarja fürj tükör tojással
            </div>
        </div>

        <div class="gallery">
            <a href="recept3-hu.php">
            <img src="images/recept3.jpg" alt="Crostini so špenátom a s prepeličím volským očkom" width="600" height="400">
            </a>
            <div class="desc">Crostini spenóttal és fürj tükör tojással
            </div>
        </div>

        <div class="gallery">
            <a href="recept4-hu.php">
            <img src="images/recept4.jpg" alt="Chutný zeleninový šalát s cottagge syrom a prepeličími vajíčkami" width="600" height="400">
            </a>
            <div class="desc">Zöldség saláta  sajtal és fürj tojással
            </div>
        </div>

        <div class="gallery">
            <a href="recept5-hu.php">
            <img src="images/recept5.jpg" alt="Šalát z bažantích pŕs s prepeličím vajíčkom" width="600" height="400">
            </a>
            <div class="desc">Salata fácány mellböl és fürj tojással
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
                echo "<p class='need-login'>Be kell hogy legyen jelentkezve a kommentokhoz.</p>";
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