<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header-hu.php';
?>
        <div class="cardv_cennik">
          <div class="keret">
          <h3>Árlista</h3>
          <body>      
          <?php
              $sql = "SELECT * FROM proba WHERE ID='8'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row['Content-hu'];
                }
              }
            ?>
          </div>

          <div class="cardb">
            <div class="slideshow-container">
              <div class="mySlides fade">
              <div class="numbertext">1 Csomag(18db</div>
              <img src="images/homee.jpeg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Füstölt/Befött(18db)</div>
              <img src="images/viktor2.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Kis fürjek</div>
              <img src="images/japonska.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Konyhakész fürj</div>
              <img src="images/viktor.jpg" style="width:100%">
              
            </div>
          </div>
        <div style="text-align:center">
          <span class="dot"></span> 
          <span class="dot"></span> 
          <span class="dot"></span>
          <span class="dot"></span> 
        </div>

        <script>
          var slideIndex = 0;
          showSlides();

          function showSlides() {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("dot");
          for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
          }
          slideIndex++;
          if (slideIndex > slides.length) {slideIndex = 1}    
          for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
            }
          slides[slideIndex-1].style.display = "block";  
          dots[slideIndex-1].className += " active";
          setTimeout(showSlides, 2000); // Change image every 2 seconds
          }
        </script>
          </body>
        </div>
      </div>
      <footer>
            <p class="fszoveg">Prepeličie vajíčka</p>
            <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
        </footer>
    </div>
  </body>
</html>