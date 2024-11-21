<?php
      include "php/config.php";
      session_start();
      if (isset($_POST['submit'])) {
    
           $email = mysqli_real_escape_string($conn, $_POST['email']);
           $password = mysqli_real_escape_string($conn, md5($_POST['password']));

           if(filter_var($email, FILTER_VALIDATE_EMAIL)){
            $select = mysqli_query($conn, "SELECT * FROM users_form WHERE email = '$email'
                                       AND password = '$password'");
                if(mysqli_num_rows($select) > 0){
                    $row = mysqli_fetch_assoc($select);
                    $status = 'Active Now';
                    
                    $update = mysqli_query($conn, "UPDATE users_form SET status = '$status' 
                                            WHERE user_id = '{$row['user_id']}'");
                    if($update){
                        $_SESSION['user_id'] = $row['user_id'];
                        header("location: home.php");
                    }

                }else {
                    $alert[] = "Incorrect email or password!";
                }
           }else {
            $alert[] = "$email is not valid email";
           }
        }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JUXY | Sign in</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="form-container">
        <form action="" method="post" enctype="multipart/form-data">
            <h3>welcome back</h3>
            <?php
              if (isset($alert)) {
                   foreach($alert as $alert){
                    echo '<div class="alert">'.$alert.'</div>';
                   }
              }
            ?>
            <input type="email" name="email" placeholder="enter your email" class="box" required>
            <input type="password" name="password" placeholder="enter your password" class="box" required>
            <input type="submit" name="submit" class="btn" value="start chatting">
            <p>Don't have Account? <a href="index.php">Signup now</a></p>
        </form>
    </div>
</body>
</html>