<?php
    date_default_timezone_set('Europe/Bratislava');
    include_once 'config.inc.php';
    include_once 'comments.inc.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit comment</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<?php
    $cid = $_POST['cid'];
    $cuid = $_POST['uid'];
    $cdate = $_POST['cdate'];
    $message = $_POST['message'];

    echo"
        <form method='POST' action='".editComments($conn)."'> 
            <input type='hidden' name='cid' value='".$cid."'>
            <input type='hidden' name='uid' value='".$cuid."'>
            <input type='hidden' name='cdate' value='".$cdate."'>
            <textarea name='message'>".$message."</textarea><br>
            <button type='submit' name='commentSubmit'>Edit</button>
        </form>";
?>
</body>
</html>
