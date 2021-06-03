<?php

function setComments($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid = $_POST['uid'];
        $cdate = $_POST['cdate'];
        $message = $_POST['message'];
        $sql = "INSERT INTO comments (uid, cdate, message) VALUES ('$cuid','$cdate','$message')";
        $cresult = $conn->query($sql);
    }
}
function setCommentsHu($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid1 = $_POST['uid'];
        $date1 = $_POST['datehu'];
        $recept1 = $_POST['komment'];
        $sql = "INSERT INTO recept1 (uid, datehu, komment, kommentsk) VALUES ('$cuid1','$date1','$recept1', NULL)";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsSk($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid1 = $_POST['uid'];
        $date1 = $_POST['datehu'];
        $recept1sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept1 (uid, datehu, komment, kommentsk) VALUES ('$cuid1','$date1', NULL ,'$recept1sk')";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsHuRecept2($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid2 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept2 = $_POST['komment'];
        $sql = "INSERT INTO recept2 (uid, datehu, komment, kommentsk) VALUES ('$cuid2','$datehu', '$recept2', NULL)";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsSkRecept2($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid2 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept2sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept2 (uid, datehu, komment, kommentsk) VALUES ('$cuid2','$datehu', NULL ,'$recept2sk')";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsHuRecept4($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid3 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept3 = $_POST[ 'komment'];
        $sql = "INSERT INTO recept4 (uid, datehu, komment, kommentsk) VALUES ('$cuid3','$datehu', '$recept3', NULL)";
        $resulthu = $conn->query($sql);   
    }
}
function setCommentsSkRecept4($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid3 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept3sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept4 (uid, datehu, komment, kommentsk) VALUES ('$cuid3','$datehu', NULL ,'$recept3sk')";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsHuRecept3($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid4 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept4 = $_POST['komment'];
        $sql = "INSERT INTO recept3 (uid, datehu, komment, kommentsk) VALUES ('$cuid4','$datehu', '$recept4', NULL)";
        $resulthu = $conn->query($sql);
    }  
}
function setCommentsSkRecept3($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid4 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept4sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept3 (uid, datehu, komment, kommentsk) VALUES ('$cuid4','$datehu', NULL ,'$recept4sk')";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsHuRecept5($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid5 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept5 = $_POST['komment'];
        $sql = "INSERT INTO recept5 (uid, datehu, komment, kommentsk) VALUES ('$cuid5','$datehu', '$recept5', NULL)";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsSkRecept5($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid5 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept5sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept5 (uid, datehu, komment, kommentsk) VALUES ('$cuid5','$datehu', NULL ,'$recept5sk')";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsHuRecept6($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid6 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept6 = $_POST['komment'];
        $sql = "INSERT INTO recept6 (uid, datehu, komment, kommentsk) VALUES ('$cuid6','$datehu', '$recept6', NULL)";
        $resulthu = $conn->query($sql);
    }
}
function setCommentsSkRecept6($conn){
    if(isset($_POST['commentSubmit'])){
        $cuid6 = $_POST['uid'];
        $datehu = $_POST['datehu'];
        $recept6sk = $_POST['kommentsk'];
        $sql = "INSERT INTO recept6 (uid, datehu, komment, kommentsk) VALUES ('$cuid6','$datehu', NULL ,'$recept6sk')";
        $resulthu = $conn->query($sql);   
    }
}

function getComments($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM comments";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['cdate']."<br>";
            echo $row['message'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){          
                    echo"<form class='delete-form' method='POST' action='".deleteComments($conn)."'>
                        <input type='hidden' name='cid' value='".$row['cid']."'>
                        <button type='submit' name='commentDelete'>Delete</button>
                    </form>

                    <form class='edit-form' method='POST' action='includes/editcomment.inc.php'>
                        <input type='hidden' name='cid' value='".$row['cid']."'>
                        <input type='hidden' name='uid' value='".$row['uid']."'>
                        <input type='hidden' name='cdate' value='".$row['cdate']."'>
                        <input type='hidden' name='message' value='".$row['message']."'>
                        <button>Edit</button>
                    </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsSk($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept1 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHu($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept1 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}

function getCommentsSkRecept2($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept2 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu2($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHuRecept2($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept2 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu2($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}

function getCommentsSkRecept3($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept3 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu3($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHuRecept3($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept3 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu3($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}

function getCommentsSkRecept4($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept4 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu4($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHuRecept4($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept4 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu4($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}

function getCommentsSkRecept5($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept5 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu5($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHuRecept5($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept5 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu5($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsSkRecept6($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept6 WHERE NOT kommentsk IS NULL ";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['kommentsk'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu6($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function getCommentsHuRecept6($conn){
    echo "<div class='comment-section'>";
    $sql = "SELECT * FROM recept6 WHERE komment IS NOT NULL";
    $cresult = $conn->query($sql);
    while ($row = $cresult->fetch_assoc()){
        $id = $_SESSION["useruid"];
        $sql2 = "SELECT * FROM users WHERE usersUid ='$id'";
        $cresult2 = $conn->query($sql2);
        if ($row2 = $cresult2->fetch_assoc()){
            echo "<div class='comment-box'>";
            echo $row['uid']."<br>";
            echo $row['datehu']."<br>";
            echo $row['komment'];
            if (isset($_SESSION['useruid'])){
                if ($_SESSION['useruid'] == $row['uid']){
                    
            echo"<form class='delete-form' method='POST' action='".deleteCommentsHu6($conn)."'>
                    <input type='hidden' name='Id' value='".$row['Id']."'>
                    <button type='submit' name='commentDelete'>Delete</button>
                </form>";
                }
            }
            echo "</div>";             
        }  
    }
    echo "</div>";
    echo "<footer class='main-footer'>";
    echo "<p class='fszoveg'>Prepeličie vajíčka</p>";
    echo "<p class='fszoveg'>copyrigt ©2020 Prepeličie vajíčka. Designed by Martin Táborský</p>";
    echo "</footer>";
}
function editComments($conn){
    if(isset($_POST['commentSubmit'])){
        $cid = $_POST['cid'];
        $cuid = $_POST['uid'];
        $cdate = $_POST['cdate'];
        $message = $_POST['message'];
        $sql = "UPDATE comments SET message='$message' WHERE cid='$cid'";
        $cresult = $conn->query($sql);
        header("location:../recept.php");

    }
}

function deleteComments($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['cid'];
        $sql = "DELETE FROM comments WHERE cid='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept1 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu2($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept2 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu3($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept3 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu4($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept4 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu5($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept5 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}
function deleteCommentsHu6($conn){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['Id'];
        $sql = "DELETE  FROM recept6 WHERE Id='$cid'";
        $cresult = $conn->query($sql);
    }
}