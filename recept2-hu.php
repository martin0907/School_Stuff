<?php
    session_start();
    include_once 'header-hu.php';
    include_once 'includes/config.inc.php';
    include_once 'includes/comments.inc.php';
?>

    <div class="cardv">
    <h3>Spenót krém fürj tojással</h3>
    <?php
              $sql = "SELECT * FROM proba WHERE ID='10'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row["Content-hu"];
                }
              }
            ?>
            <?php
            if(isset($_SESSION["useruid"])){
                echo "<form method='POST' action='".setCommentsHuRecept2($conn)."'> 
                    <input type='hidden' name='uid' value='".$_SESSION["useruid"]."'>
                    <input type='hidden' name='datehu' value='".date('Y-m-d H:i:s')."'>
                    <textarea name='komment'></textarea><br>
                    <button class='com-button' type='submit' name='commentSubmit'>Comment</button>
                    </form>";
                getCommentsHuRecept2($conn);
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