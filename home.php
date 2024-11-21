<?php 
    include "php/config.php";
    session_start();
    $user_id = $_SESSION['user_id'];

    if (!isset($user_id)) {
        header("location: login.php");
    }

    $select = mysqli_query($conn, "SELECT * FROM users_form WHERE user_id = '$user_id'");
    if(mysqli_num_rows($select) > 0){
        $row = mysqli_fetch_assoc($select);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JUXY</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <section class="users">
            <header class="profile">
                <div class="content">
                    <a href="update_profile.php"><img src="uploaded_img/<?php echo $row['img'] ?>" alt=""></a>
                    <div class="details">
                        <span><?php echo $row['name'] ?></span>
                        <p><?php echo $row['status'] ?></p>
                    </div>
                </div>
                <a href="" class="logout">Logout<img src="images/box-arrow-left.svg" alt=""></a>
            </header>
            <form action="" method="post" class="search"> 
                <input type="text" name="search_box" placeholder="Type here to search">
                <button name="search_user"><img src="images/search.svg" alt=""></button>
            </form>
            <div class="all_users">
                <!-- <a href="chat.php">
                    <div class="content">
                        <img src="uploaded_img/person-bounding-box.svg" alt="">
                        <div class="details">
                            <span>Dash</span>
                            <p>Whatt'sapp bro</p>
                        </div>
                    </div>
                    <div class="status-dot"></div>
                </a> -->
            </div>
        </section>
    </div>
    <script src="js/home.js"></script>
</body>
</html>