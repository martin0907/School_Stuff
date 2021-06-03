<?php
  session_start();
  include_once 'includes/config.inc.php';
  include_once 'header.php';
?>
        <div class="cardv_cennik">
          <div class="keret">
          <h3>Cenník</h3>
          <body>      
          <?php
              $sql = "SELECT * FROM proba WHERE ID='8'";
              $result = mysqli_query($conn, $sql);
              $resultCheck = mysqli_num_rows($result);

              if($resultCheck > 0){
                if($row = mysqli_fetch_assoc($result)){
                  echo $row['Content-sk'];
                }
              }
            ?>
          </div>

          <div class="cardb">
            <div class="slideshow-container">
              <div class="mySlides fade">
              <div class="numbertext">1 Balík(18ks)</div>
              <img src="images/homee.jpeg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Údené/Nakladané(18ks vo flaše)</div>
              <img src="images/viktor2.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Prepelice živé</div>
              <img src="images/japonska.jpg" style="width:100%">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">Prepelice pripravené do kuchyne </div>
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
          setTimeout(showSlides, 2000);
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