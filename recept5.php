<?php
    session_start();
    include_once 'header.php';
    include_once 'includes/config.inc.php';
    include_once 'includes/comments.inc.php';
?>

    <div class="cardv">
    <h3>Šalát z bažantích pŕs s prepeličím vajíčkom</h3>
    <?php
              $sql = "SELECT * FROM proba WHERE ID='13'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row["Content-sk"];
                }
              }
            ?>
                <?php
            if(isset($_SESSION["useruid"])){
                echo "<form method='POST' action='".setCommentsSkRecept6($conn)."'> 
                    <input type='hidden' name='uid' value='".$_SESSION["useruid"]."'>
                    <input type='hidden' name='datehu' value='".date('Y-m-d H:i:s')."'>
                    <textarea name='kommentsk'></textarea><br>
                    <button class='com-button' type='submit' name='commentSubmit'>Comment</button>
                    </form>";
                    getCommentsSkRecept6($conn);
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

