<?php
    session_start();
    include_once 'signup.inc.php';
    include_once 'header-hu.php';
?>
  
                <div class="cardv_signup">
                    <div class="card" style="padding-left:50px">
                        <div class="form">
                            <section class="signup-form">
                                <h2>Regisztráció</h2>
                                <div class="signup-form-form">
                                    <form action="includes/signup.inc.php" method="post">
                                        <input type="text" name="name" placeholder="Név"/>                                    
                                        <input type="text" name="email" placeholder="Email"/>
                                        <input type="text" name="uid" placeholder="Felhasználó név"/>
                                        <input type="password" name="password" placeholder="Jelszó"/>
                                        <input type="password" name="pwdrepeate" placeholder="Jelszó újból"/>
                                        <button type="submit" name="submit">Regisztráció</button>
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
                                <h2>Bejelentkezés</h2>
                                <div class="signup-form-form">
                                    <form action="includes/login.inc.php" method="post">                      
                                        <input type="text" name="uid" placeholder="Felhasználó név/Email"/>
                                        <input type="password" name="pwd" placeholder="Jelszó"/>
                                        <button type="submit" name="submit">Bejelentkezés</button>
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