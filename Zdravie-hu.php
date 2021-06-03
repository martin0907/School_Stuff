<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header-hu.php';
?>
        <div class="cardv_fotky">
          <div class="keret">
          <h3>További vitaminok</h3>
            <?php
              $sql = "SELECT * FROM proba WHERE ID='5'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row['Content-hu'];
                }
              }
            ?> 
          </div>
        </div>
      <footer>
        <p class="fszoveg">Prepeličie vajíčka</p>
        <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
      </footer>
    </div>
  </body>
</html>