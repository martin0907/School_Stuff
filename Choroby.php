<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header.php';
?>
        <div class="cardv_signup">
          <h3>Choroby</h3>
          <div class="keret">            
            <?php
                $sql = "SELECT * FROM proba WHERE ID='6'";
                $result = mysqli_query($conn, $sql);
                $resultCheck = mysqli_num_rows($result);

                if($resultCheck > 0){
                  if($row = mysqli_fetch_assoc($result)){
                    echo $row["Content-sk"];
                  }
                }
              ?>
              </div>
              <div class="card">
                <div class="choroby-gallery">
                  <img  align="right" src="images/tabletky3.jpg" width="450" height="253">
                    <div class="desc">Netreba viac liekov</div>
                </div>
              </div>
            
          </div>
        <div class="cardv">
          <div class="keret">
          <p class="szoveg"> Za dalšie informácie stiahnite si nasledujúce dokumentácie  <a href="Choroby.docx" download>Rozpis o chorobách</a></p>
        </div>
      </div>
      <footer>
        <p class="fszoveg">Prepeličie vajíčka</p>
        <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
      </footer>
    </div>
  </body>
</html>


