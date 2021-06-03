<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header-hu.php';
?>
    <div class="cardv_signup">
      <h3>Betegségek</h3>
      <div class="keret">
        <?php
          $sql = "SELECT * FROM proba WHERE ID='6'";
          $result = mysqli_query($conn, $sql);
          $resultCheck = mysqli_num_rows($result);

          if($resultCheck > 0){
            if($row = mysqli_fetch_assoc($result)){
              echo $row["Content-hu"];
              }
            }
          ?>      
        </div>
        <div class="card">
          <div class="choroby-gallery">
            <img  align="right" src="images/tabletky3.jpg" width="450" height="253">
              <div class="desc">Nincs szükség több orvosságra
              </div>
            </div>
          </div>
      </div>
      <div class="cardv">
        <div class="keret">
          <p>További információkért töltds le a dokumentációt <a href="Choroby-hu.docx" download>Betegségek széttirása</a>
        </div>
      </div>
      <footer>
        <p class="fszoveg">Prepeličie vajíčka</p>
        <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
      </footer>
    </div>
  </body>
</html>

