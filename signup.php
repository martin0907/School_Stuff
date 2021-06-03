<?php
    session_start();
    include_once 'signup.inc.php';
    include_once 'header.php';
?>
  
            <div class="cardv_signup">
                <div class="card" style="padding-left:50px">
                <div class="form">
                    <section class="signup-form">
                        <h2>Registrácia</h2>
                        <div class="signup-form-form">
                            <form action="includes/signup.inc.php" method="post">
                                <input type="text" name="name" placeholder="Meno"/>                                    
                                <input type="text" name="email" placeholder="Email"/>
                                <input type="text" name="uid" placeholder="Použivatelské meno"/>
                                <input type="password" name="password" placeholder="Heslo"/>
                                <input type="password" name="pwdrepeate" placeholder="Heslo z nova"/>
                                <button type="submit" name="submit">Registrácia</button>
                            </form>
                        </div>
                        <?php
                        if (isset($_GET["error"])){
                            if($_GET["error"] == "emptyinput"){
                                echo "<p>Fill in all fields!</p>";
                            }
                            else if($_GET["error"] == "invaliduid"){
                                echo "<p>Chose a proper username</p>";
                            }
                            else if($_GET["error"] == "invalidemail"){
                                echo "<p>Chose a proper email</p>";
                            }
                            else if($_GET["error"] == "passwordsdontmatch"){
                                echo "<p>Passwords doesn't match</p>";
                            }
                            else if($_GET["error"] == "stmtfailed"){
                                echo "<p>Something went wring, try again!</p>";
                            }
                            else if($_GET["error"] == "usernametaken"){
                                echo "<p>Username already taken!</p>";
                            }
                            else if($_GET["error"] == "none"){
                                echo "<p>You have signed up!</p>";
                            }
                        }
                        ?>
                    </section>
                    </div>
                </div>
                <div class="card" style="padding-left:50px">
                    <div class="form">
                        <section class="signup-form">
                        <h2>Prihlásenie</h2>
                        <div class="signup-form-form">
                            <form action="includes/login.inc.php" method="post">                      
                                <input type="text" name="uid" placeholder="Puživatelske meno/Email"/>
                                <input type="password" name="pwd" placeholder="Heslo"/>
                                <button type="submit" name="submit">Prihlásenie</button>
                            </form>
                            </div>
                            <?php
                            if (isset($_GET["error"])){
                                if($_GET["error"] == "emptyinput"){
                                    echo "<p>Fill in all fields!</p>";
                                }
                                else if($_GET["error"] == "wronglogin"){
                                    echo "<p>Incorrect login information!</p>";
                                }
                            }
                            ?>
                        </section>
                    </div>
                </div>
            </div>
        <footer>
            <p class="fszoveg">Prepeličie vajíčka</p>
            <p class="fszoveg">copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský
        </footer>
        </div>
    </body>
</html>