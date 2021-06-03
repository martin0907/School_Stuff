<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header.php';
?>

          <div class="cardv">
            <div class="keret">
            <h3>Prepeličie Vajíčka</h3>
            <?php
              $sql = "SELECT * FROM proba WHERE ID='1'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo "<p class='szoveg'>".$row["Content-sk"];
                }
              }
            ?>
          </div>
        </div>
 
          <div class="bgimg-2">
            <div class="caption">
              <span class="border" style="background-color:transparent;text-align:center">VITAMÍNY</span>
            </div>
          </div>

          <div class="cardv">
            <div class="card">	
            <?php
              $sql = "SELECT * FROM proba WHERE ID='2'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row['Content-sk'];
                }
              }
            ?>    
            </div>
		    
		      <div class="card">
            <img align="right" src="images/home1.jpeg" width="370" height="280">
          </div>
          <div class="keret">
            <?php
              $sql = "SELECT * FROM proba WHERE ID='3'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo "<p class='szoveg'>" . $row['Content-sk'];
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
