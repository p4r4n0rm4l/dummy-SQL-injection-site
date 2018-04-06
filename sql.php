<?php

$connection = mysqli_connect('IP','username','password','test_server');

$id = $_GET['id'];
$query = "select * from articles where id=".$id; 
$result = mysqli_query($connection,$query);

$row = mysqli_fetch_assoc($result);
$article = $row['article'];
$info = $row['info'];
$author = $row['author'];

?>

<!DOCTYPE html>
<html>
    <head>
        <title>SQL Injection Demo</title>
        <style type="text/css">
            * {
                box-sizing: border-box; 
            }
            body {
                margin: 0;
            }
            #main {
                display: flex;
                min-height: calc(100vh - 40vh);
            }
            #main > article {
                flex: 1;
            }
            #main > nav, 
            #main > aside {
                flex: 0 0 20vw;
                background: beige;
            }
            #main > nav {
                order: -1;
            }
            header, footer, article, nav, aside {
                padding: 1em;
            }
            header, footer {
                background: yellowgreen;
                height: 20vh;
            }
        </style>
    </head>
    <body>
        <h1>
            <?php echo $article; ?>
        </h1>

        <div id="main">
            <article>
                <?php echo $info; ?>
            </article>
        </div>

        <footer>
            <?php echo $author; ?>
        </footer>
    </body>
</html>
<?php mysqli_close($connection); ?>
