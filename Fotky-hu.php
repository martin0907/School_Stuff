<?php
  session_start();
  include_once 'header-hu.php';
?>
        <div class="cardv_fotky">
          <h3>Képek</h3>
          <div class="cardb">
              <div class="slideshow-container">

                <div class="mySlides fade">
                  <div class="numbertext">1 / 12</div>
                    <img src="images/prep2 copy.png" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">2 / 12</div>
                  <img src="images/japonska.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">3 / 12</div>
                  <img src="images/home1.jpeg" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">4 / 12</div>
                  <img src="images/tojas11.png" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">5 / 12</div>
                  <img src="images/tojas15.png" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">6 / 12</div>
                  <img src="images/homee.jpeg" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">7 / 12</div>
                  <img src="images/viktor.jpg" style="width:100%" height="600px">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">8 / 12</div>
                  <img src="images/viktor2.jpg" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">9 / 12</div>
                  <img src="images/tojas8.png" style="width:100%">
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">10 / 12</div>
                  <img src="images/prep.png" style="width:100%">
                </div>
          
                <div class="mySlides fade">
                  <div class="numbertext">11 / 12</div>
                    <video height="600px" width="100%" controls>
                    <source src="images/video1.mp4" type="video/mp4">
                    <source src="images/mov_bbb.ogg" type="video/ogg">
                    Your browser does not support HTML video.
                  </video>
                </div>

                <div class="mySlides fade">
                  <div class="numbertext">12 / 12</div>
                    <video height="600px" width="100%" controls>
                    <source src="images/video2.mp4" type="video/mp4">
                    <source src="images/mov_bbb.ogg" type="video/ogg">
                    Your browser does not support HTML video.
                  </video>
                </div>
                    
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a> 
              </div>
              <br>      
              <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span> 
                <span class="dot" onclick="currentSlide(2)"></span> 
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
                <span class="dot" onclick="currentSlide(5)"></span>
                <span class="dot" onclick="currentSlide(6)"></span>
                <span class="dot" onclick="currentSlide(7)"></span>
                <span class="dot" onclick="currentSlide(8)"></span>
                <span class="dot" onclick="currentSlide(9)"></span>
                <span class="dot" onclick="currentSlide(10)"></span>
                <span class="dot" onclick="currentSlide(11)"></span>
                <span class="dot" onclick="currentSlide(12)"></span>
              </div>
            <script>
              var slideIndex = 1;
              showSlides(slideIndex);
                    
              function plusSlides(n) {
                showSlides(slideIndex += n);
              }      
              function currentSlide(n) {
                showSlides(slideIndex = n);
              }
              function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {slideIndex = 1}    
                if (n < 1) {slideIndex = slides.length}
                for (i = 0; i < slides.length; i++) {
                  slides[i].style.display = "none";  
                }
                for (i = 0; i < dots.length; i++) {
                  dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";  
                dots[slideIndex-1].className += " active";
              }
            </script>  
          </div>
        </div>
      <footer>
        <p class="fszoveg">Prepeličie vajíčka</p>
        <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
      </footer>
    </div>
  </body>
</html>